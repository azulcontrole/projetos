USE `azul_controlev2`;
DROP procedure IF EXISTS `classRefProduto_v2proc`;
/*
USE azul_controlev2;
 SELECT * FROM testenome WHERE coluna like ('%TAR%VER%');
 select * from testenome WHERE MATCH(coluna) AGAINST ('%TAR%VER%' IN BOOLEAN MODE);
*/

DELIMITER $$
USE `azul_controlev2`$$
CREATE PROCEDURE `classRefProduto_v2proc`(
in p_opt               int(1),
in p_id_referencia int(11),
in p_id_produto    int(11),
in p_cod_ean       varchar(14),
in p_foto          text,
in p_quant_minima  decimal(5,3),
in p_id_valor_atributo text,
in p_status        tinyint(1),
-- `estoque` 
in p_id_local      int(10)
)
main: BEGIN
   declare d_id_subgrupo   int(11);
   declare d_id_grupo      int(11);
   declare d_id_pessoa     int(11);
   declare d_id_produto    int(11);
   declare d_id_local      int(10);
   declare d_id_empresa    int(11);
   declare d_id_ncm        int(11);
   declare d_ultimoid      int(11);
   declare d_lastid_ref    int(11);
   declare d_id_referencia int(11);
   declare d_data_lote     date;
   declare d_data_validade date;
   declare d_id_cor        int(10);
   declare d_id_dimensao   int(10);
   declare d_contador      int;
   declare d_limite        int;
   declare d_index         int;
   declare d_varid         int(10);
   declare d_id_categoria  int(10);
   declare d_descricao_cat  varchar(50);
   declare d_valor_atributo VARCHAR(45);

   declare rt_soma          int;
   declare rt_varid         int(10);
   declare rt_id_categoria  int(10);
   declare rt_descricao_cat  varchar(50);
   declare rt_valor_atributo VARCHAR(45);

   DECLARE excecao SMALLINT DEFAULT 0;
-- mensagem de error
   DECLARE code CHAR(5) DEFAULT '00000';
   DECLARE msg TEXT;
   DECLARE rows INT;
   DECLARE result TEXT;
-- fim
   DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
      BEGIN
          GET DIAGNOSTICS CONDITION 1
              code = RETURNED_SQLSTATE, msg = MESSAGE_TEXT;
      END;
      
   DROP TABLE IF EXISTS `tmp_itens_atributo`;
   
   CREATE TABLE tmp_itens_atributo (  
        `tmp_id` int unsigned NOT NULL AUTO_INCREMENT,
        `tmp_id_item` int(10),
        `tmp_id_categoria` int(10),
        `tmp_nome` varchar(50) DEFAULT NULL,
        `tmp_valor_atributo` varchar(45) DEFAULT NULL,
        `tmp_ativo` tinyint(1) DEFAULT 0,
   PRIMARY KEY (`tmp_id`),
   UNIQUE KEY `un_chave` (`tmp_id_categoria`)
   ) ENGINE=InnoDB;
/*    
   DROP TEMPORARY TABLE IF EXISTS `tmp_itens_atributo`;
   CREATE TEMPORARY TABLE tmp_itens_atributo (  
        `tmp_id` int unsigned NOT NULL AUTO_INCREMENT,
        `tmp_id_item` int(10),
        `tmp_nome` varchar(50) DEFAULT NULL,
        `tmp_valor_atributo` varchar(45) DEFAULT NULL,
        `tmp_ativo` tinyint(1) DEFAULT 0,
   PRIMARY KEY (`tmp_id`)
   ) ENGINE=MEMORY;
*/

   START TRANSACTION;
	
   -- set d_data_lote=STR_TO_DATE(p_data_lote, '%d/%m/%Y');
   -- set d_data_validade=STR_TO_DATE(p_data_validade, '%d/%m/%Y');
   
   set d_id_subgrupo=0;
   set d_id_grupo=0;
   set d_id_empresa=0;
   set d_contador=0;
   set d_limite=0;
   set d_index=1;
--
   if (p_opt = 2) then
      select `referencia_produto`.`id_referencia`,
         `referencia_produto`.`id_produto`,
         `referencia_produto`.`cod_ean`,
         `referencia_produto`.`foto`,
         `referencia_produto`.`quant_minima`,
         `referencia_produto`.`id_valor_atributos`,
         `referencia_produto`.`status`,
         group_concat(`valor_atributo`.`valor_atributo` order by `relacao`.`id_valor_atributo` separator'|')
       from `referencia_produto`
       left join `relacao` on `relacao`.`id_referencia`=`referencia_produto`.`id_referencia`
       left join `valor_atributo` on `valor_atributo`.`id_valor_atributo`=`relacao`.`id_valor_atributo`
      where `referencia_produto`.`id_referencia`=7
      group by `referencia_produto`.`id_referencia`
      order by `referencia_produto`.`cod_ean`;
   end if;
   
   while d_limite = 0 do
      set d_varid=0;
      set d_descricao_cat='';
      select fun_split_string(p_id_valor_atributo,'|',d_index) into d_varid;
      if code = '00000' then
         if (d_varid = 0 or d_varid is null) then
            set d_limite = 99;
         else
            SELECT `categoria_atributo`.`id_categoria`,`categoria_atributo`.`descricao`,`valor_atributo`.`valor_atributo`
              INTO d_id_categoria,d_descricao_cat,d_valor_atributo
             FROM `valor_atributo`
             left join `categoria_atributo` on `categoria_atributo`.`id_categoria` = `valor_atributo`.`id_categoria`
            where `valor_atributo`.`id_valor_atributo`=d_varid;
            if (d_descricao_cat!=' ') then
               insert into tmp_itens_atributo
               (`tmp_id_item`
               ,`tmp_id_categoria`
               ,`tmp_nome`
               ,`tmp_valor_atributo`)
               value
               (d_varid
               ,d_id_categoria
               ,d_descricao_cat
               ,d_valor_atributo);
            else
               insert into tmp_itens_atributo
               (`tmp_id_item`
               ,`tmp_id_categoria`
               ,`tmp_nome`
               ,`tmp_valor_atributo`)
               value
               (d_varid
               ,d_id_categoria
               ,'Atributo não encontrado'
               ,'10000');
            end if;   
            if (code != '00000') then
                select code,'ERRO: Chave duplicada',d_descricao_cat,d_valor_atributo;
                LEAVE main;
            end if;
            set d_index=d_index+1;
         end if;
      else
         if (code = '22007') then
            set d_index=d_index+1;
         else
            set d_varid = 999;
         end if;
      end if;
      set code='00000';
   end while;   
--       
   set d_id_local=0;
   set d_id_empresa=0;
-- Encontrando a empresa pelo produto
   select `grupo`.`id_empresa` into d_id_empresa 
     from `produto`
     left join `subgrupo` on `subgrupo`.`id_subgrupo`=`produto`.`id_subgrupo`
     left join `grupo` on `grupo`.`id_grupo`=`subgrupo`.`id_grupo`
    where `produto`.`id_produto`=p_id_produto;
-- validando o local do estoque   
   select `local_estoque`.`id_local` into d_id_local
     from `local_estoque`
    where `local_estoque`.`id_local` = p_id_local
     and `local_estoque`.`id_empresa` = d_id_empresa;
     
   if (d_id_local = 0 or d_id_local is null) then
      set p_opt=0;
      select 'Localizacao de estoque nao cadastrada';
      rollback;
      LEAVE main;
   end if;
   
   set d_id_referencia = 0;
   select `referencia_produto`.`id_referencia` into d_id_referencia
     from `referencia_produto`
    where `referencia_produto`.`cod_ean`=p_cod_ean;

   if (d_id_referencia > 0) then
      set p_opt=0;
      select 'Codigo de Barras Já Cadastrado';
      rollback;
      LEAVE main;
   end if;

   if (p_opt = 1) then
      insert into `referencia_produto`
            (`id_produto`
            ,`cod_ean`
            ,`foto`
            ,`quant_minima`
            ,`id_valor_atributos`)
      values
            (p_id_produto
            ,p_cod_ean
            ,p_foto
            ,p_quant_minima
            ,'');
      set d_lastid_ref=(SELECT id_referencia FROM referencia_produto WHERE id_referencia = LAST_INSERT_ID());
      if (d_lastid_ref = 0 or d_lastid_ref is null) then
          select 'Problemas ao gravar Referencias';
          rollback;
          LEAVE main;
      end if;
      insert into `relacao`
      SELECT null,d_lastid_ref,tmp_id_item FROM tmp_itens_atributo;
      insert into `estoque`
            (`id_referencia`
            ,`id_local`
            ,`quant_entr_estoque`
            ,`quant_saida_estoque`
            ,`data_compra_estoque`
            ,`data_saida_estoque`
            ,`valor_compra_estoque`
            ,`valor_venda_estoque`
            ,`margem_estoque`)
      values
            (d_lastid_ref
            ,d_id_local
            ,0.00
            ,0.00
            ,null
            ,null
            ,0.00
            ,0.00
            ,0.00);     
   end if;

  COMMIT;
END$$

DELIMITER ;