USE `azul_controle`;
call `classProduto_proc`(
1
,0
,2
,10
,2
,'p_descricao_produto'
,0
,'CX'
)
;


USE `azul_controlev2`;
DROP procedure IF EXISTS `classProduto_proc`;

DELIMITER $$
USE `azul_controlev2`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `classProduto_proc`(
in p_opt               int(1),
-- tabela produto
in p_id_produto        int(11),
in p_id_subgrupo       int(11),
in p_id_ncm            int(11),
in p_id_pessoa         int(11),
in p_descricao_produto varchar(50),
in p_status            tinyint(1),
-- TABELA unidade
in p_descricao_unidade varchar(10)
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

   if (p_id_subgrupo=0) then
      set p_opt=0;
      select 'Grupo e Subgrupo não informado';
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
          select 'Problemas ao gravar  Produto';
          rollback;
          LEAVE main;
      end if;
      insert into `unidade`
            (`id_produto`
            ,`descricao_unidade`)
      values
            (d_ultimoid
            ,p_descricao_unidade);
   end if;
COMMIT;
END$$

DELIMITER ;
