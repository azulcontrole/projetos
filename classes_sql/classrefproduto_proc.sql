USE `azul_controle`;
call `classRefProduto_proc`(
1
,0
,0
,0
,1
,10
,1
,'11113'
,'p_foto'
,3.000
,'p_observacao'
,0
,2
,'p_descr_modelo'
,'p_descr_voltagem'
)
;

USE `azul_controle`;
DROP procedure IF EXISTS `classRefProduto_proc`;

DELIMITER $$
USE `azul_controle`$$
CREATE PROCEDURE `classRefProduto_proc`(
in p_opt               int(1),
in p_ct_modelo         int(1),
in p_ct_volts          int(1),
-- `referencia_produto` 
in p_id_referencia int(11),
in p_id_produto    int(11),
in p_id_cor        int(10),
in p_id_dimensao   int(10),
in p_cod_ean       varchar(14),
in p_foto          text,
in p_quant_minima  decimal(5,3),
in p_observacao    text,
in p_status        tinyint(1),
-- `estoque` 
in p_id_local      int(10),
-- modelo
in p_descr_modelo  varchar(45),
-- voltagem
in p_descr_voltagem varchar(45)
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
	    
   START TRANSACTION;
	
   -- set d_data_lote=STR_TO_DATE(p_data_lote, '%d/%m/%Y');
   -- set d_data_validade=STR_TO_DATE(p_data_validade, '%d/%m/%Y');
   
   set d_id_subgrupo=0;
   set d_id_grupo=0;
   set d_id_empresa=0;

   if (p_id_cor = 0) then
      select `cor`.`id_cor` into d_id_cor
      from `cor`
      where `cor`.`status`=3 limit 1;
      if (d_id_cor = 0 or d_id_cor is null) then
         set p_opt=0;
         select 'Nao foi definido tabela de cores';
         rollback;
         LEAVE main;
      end if;
   else
      set d_id_cor=0;
      select `cor`.`id_cor` into d_id_cor
      from `cor`
      where `cor`.`id_cor`=p_id_cor;
      if (d_id_cor = 0 or d_id_cor is null) then
         set p_opt=0;
         select 'Cor Não Cadastrada';
         rollback;
         LEAVE main;
      end if; 
   end if;

   if (p_id_dimensao = 0) then
      select `dimensao`.`id_dimensao` into d_id_dimensao
      from `dimensao`
      where `dimensao`.`status`=3 limit 1;     
      if (d_id_dimensao = 0 or d_id_dimensao is null) then
         set p_opt=0;
         select 'Nao foi definido tabela dimensoes';
         rollback;
         LEAVE main;
      end if;
   else
      set d_id_dimensao=0;
      select `dimensao`.`id_dimensao` into d_id_dimensao
      from `dimensao`
      where `dimensao`.`id_dimensao`=p_id_dimensao;
      if (d_id_dimensao = 0 or d_id_dimensao is null) then
         set p_opt=0;
         select 'Dimensão Não Cadastrada';
         rollback;
         LEAVE main;
      end if; 
   end if;
   
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
            ,`id_cor`
            ,`id_dimensao`
            ,`cod_ean`
            ,`foto`
            ,`quant_minima`
            ,`observacao`)
      values
            (p_id_produto
            ,d_id_cor
            ,d_id_dimensao
            ,p_cod_ean
            ,p_foto
            ,p_quant_minima
            ,p_observacao);
      set d_lastid_ref=(SELECT id_referencia FROM referencia_produto WHERE id_referencia = LAST_INSERT_ID());
      if (d_lastid_ref = 0 or d_lastid_ref is null) then
          select 'Problemas ao gravar Referencias';
          rollback;
          LEAVE main;
      end if;
      if (p_ct_modelo = 1) then
         insert into `modelo`
               (`id_referencia`
               ,`descricao`)
         values
               (d_lastid_ref
               ,p_descr_modelo);
      end if;
      if (p_ct_volts = 1) then
         insert into `voltagem`
               (`id_referencia`
               ,`descricao`)
         values
               (d_lastid_ref
               ,p_descr_voltagem);
      end if;             
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