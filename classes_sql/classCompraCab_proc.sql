USE `azul_controlev2`;
DROP procedure IF EXISTS `classCompraCab_proc`;
/*
USE azul_controlev2;
 SELECT * FROM testenome WHERE coluna like ('%TAR%VER%');
 select * from testenome WHERE MATCH(coluna) AGAINST ('%TAR%VER%' IN BOOLEAN MODE);
*/
DELIMITER $$
USE `azul_controlev2`$$
CREATE PROCEDURE `classCompraCab_proc`(
in p_opt               int(1),
in p_id_pessoa         int(11),
-- compra_cab --
in p_id_compras_cab    int(11),
in p_numero_nfe_cab    varchar(11),
in p_id_tipo_lcto      int(11),
in p_emissao_nfe_cab   varchar(10),
in p_entrada_nfe_cab   varchar(10),
in p_total_nfe_cab     double(11,2),
in p_icms_nfe_cab      decimal(5,3),
in p_ipi_nfe_cab       decimal(5,3),
in p_iss_nfe_cab       decimal(5,3),
in p_irf_nfe_cab       decimal(5,3),
in p_vlr_icms_nfe_cab  double(11,2),
in p_vlr_ipi_nfe_cab   double(11,2),
in p_vlr_iss_nfe_cab   double(11,2),
in p_vlr_irf_nfe_cab   double(11,2),
in p_cidade_nfe_cab    varchar(45),
in p_uf_nfe_cab        varchar(2),
in p_base_calculo_nfe_cab double(11,2),
in p_ibge_cab             int(6),
in p_chave_nfe_cab        varchar(100),
in p_status               tinyint(1),
)
main: BEGIN

   declare d_emissao_nfe_cab date;
   declare d_entrada_nfe_cab date;
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

   START TRANSACTION;
   
   set d_emissao_nfe_cab=STR_TO_DATE(p_emissao_nfe_cab, '%d/%m/%Y');  
   set d_entrada_nfe_cab=STR_TO_DATE(p_entrada_nfe_cab, '%d/%m/%Y');  
   set d_id_subgrupo=0;
   set d_id_grupo=0;
   set d_id_empresa=0;
   set d_id_pessoa=0;
-- tpcod = 1 (consulta pelo codigo de barras)
-- tpcod = 2 (consulta pelo id produto)
--
   if (p_opt = 1) then
      select `pessoa`.`id` into d_id_pessoa
      from `pessoa`
      where `pessoa`.`id`=p_id_pessoa;
      if (d_id_pessoa = 0 or d_id_pessoa is null) then
          set p_opt=0;
          select 'Fornecedor não cadastrado';
          rollback;
          LEAVE main;
      end if;
      insert into `compras_cab`
            (`numero_nfe_cab`
            ,`id_pessoa`
            ,`id_tipo_lcto`
            ,`emissao_nfe_cab`
            ,`entrada_nfe_cab`
            ,`total_nfe_cab`
            ,`icms_nfe_cab`
            ,`ipi_nfe_cab`
            ,`iss_nfe_cab`
            ,`irf_nfe_cab`
            ,`vlr_icms_nfe_cab`
            ,`vlr_ipi_nfe_cab`
            ,`vlr_iss_nfe_cab`
            ,`vlr_irf_nfe_cab`
            ,`cidade_nfe_cab`
            ,`uf_nfe_cab`
            ,`base_calculo_nfe_cab`
            ,`ibge_cab`
            ,`chave_nfe_cab`)
       values
            (p_numero_nfe_cab
            ,p_id_pessoa
            ,p_id_tipo_lcto
            ,d_emissao_nfe_cab
            ,d_entrada_nfe_cab
            ,p_total_nfe_cab
            ,p_icms_nfe_cab
            ,p_ipi_nfe_cab
            ,p_iss_nfe_cab
            ,p_irf_nfe_cab
            ,p_vlr_icms_nfe_cab
            ,p_vlr_ipi_nfe_cab
            ,p_vlr_iss_nfe_cab
            ,p_vlr_irf_nfe_cab
            ,p_cidade_nfe_cab
            ,p_uf_nfe_cab
            ,p_base_calculo_nfe_cab
            ,p_ibge_cab
            ,p_chave_nfe_cab);            
   end if;
commit;
  
END$$

DELIMITER ;
