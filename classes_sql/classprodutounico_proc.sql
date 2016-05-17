USE `azul_controle`;
DROP procedure IF EXISTS `classProduto_proc`;

DELIMITER $$
USE `azul_controle`$$
CREATE PROCEDURE `classProduto_proc`(
in p_opt               int(1),
-- tabela produto
in p_id_produto        int(11),
in p_id_subgrupo       int(11),
in p_id_ncm            int(11),
in p_id_pessoa         int(11),
in p_descricao_produto varchar(50),
-- tabela referencia
in p_id_cor            int(10),
in p_id_dimensao       int(10),
in p_cod_ean           varchar(14),
in p_foto              text,
in p_quant_minima      decimal(5,3),
in p_observacao        text,
-- TABELA unidade
in p_descricao_unidade varchar(10),
-- tabela lote_validade
in p_numero_lote       varchar(45),
in p_data_lote         varchar(10),
in p_data_validade     varchar(10)
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
	
   set d_data_lote=STR_TO_DATE(p_data_lote, '%d/%m/%Y');
   set d_data_validade=STR_TO_DATE(p_data_validade, '%d/%m/%Y');
   
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
   
   if (p_id_subgrupo=0) then
      set p_opt=0;
      select 'Grupo e Subgrupo invalido';
      rollback;
      LEAVE main;
   end if;
   
   select `subgrupo`.`id_grupo` 
         ,`grupo`.`id_empresa` into d_id_grupo,d_id_empresa
   from `subgrupo`
   left join `grupo` on `grupo`.`id_grupo`=`subgrupo`.`id_grupo`
   where `subgrupo`.`id_subgrupo`=p_id_subgrupo;

   if (d_id_empresa = 0 or d_id_empresa is null) then
      set p_opt=0;
      select 'Empresa Não Cadastrada no SubGrupo'
      rollback;
      LEAVE main;
   end if;
   
   if (d_id_grupo = 0 or d_id_grupo is null) then
      set p_opt=0;
      select 'Grupo nao cadastrado';
      rollback;
      LEAVE main;
   end if;
   
   set d_id_local=0;
   select `local_estoque`.`id_local` into d_id_local
   from `local_estoque`
   where `local_estoque`.`id_empresa`=d_id_empresa limit 1; 
   
   if (d_id_local = 0 or d_id_local is null) then
      set p_opt=0;
      select 'Localizacao de estoque nao cadastrada';
      rollback;
      LEAVE main;
   end if;

   set d_id_pessoa=0;
   select `pessoa`.`id_pessoa` into d_id_pessoa
   from `pessoa`
   where `pessoa`.`id_pessoa`=p_id_pessoa;
   
   if (d_id_pessoa = 0 or d_id_pessoa is null) then
      set p_opt=0;
      select 'Fabricante nao cadastrada';
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
		
   set d_id_ncm=0;
   select `ncm`.`id_ncm` into d_id_ncm
   from `ncm`
   where `ncm`.`id_ncm`=p_id_ncm;
   
   if (d_id_ncm = 0 or d_id_ncm is null) then
      set p_opt=0;
      select 'NCM nao cadastrado';
      rollback;
      LEAVE main;
   end if;

   if (p_opt = 1) then
      insert into `produto`
         (`id_subgrupo`
         ,`id_ncm`
         ,`id_pessoa`
         ,`descricao_produto`)
      values
         (p_id_subgrupo
         ,p_id_ncm
         ,p_id_pessoa
         ,upper(p_descricao_produto));
      set d_ultimoid=(SELECT id_produto FROM produto WHERE id_produto = LAST_INSERT_ID());
      if (d_ultimoid = 0 or d_ultimoid is null) then
          select 'Problemas ao gravar Produto';
          rollback;
          LEAVE main;
      end if;
      insert into `referencia_produto`
            (`id_produto`
            ,`id_cor`
            ,`id_dimensao`
            ,`cod_ean`
            ,`foto`
            ,`quant_minima`
            ,`observacao`)
      values
            (d_ultimoid
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
            ,'0000-00-00'
            ,'0000-00-00'
            ,0.00
            ,0.00
            ,0.00);
      insert into `unidade`
            (`id_produto`
            ,`descricao_unidade`)
      values
            (d_ultimoid
            ,p_descricao_unidade);
      insert into `lote_validade`
            (`id_produto`
            ,`numero_lote`
            ,`data_lote`
            ,`data_validade`)
      values
            (d_ultimoid
            ,p_numero_lote
            ,d_data_lote
            ,d_data_validade);          
   end if;
COMMIT;
END$$

DELIMITER ;