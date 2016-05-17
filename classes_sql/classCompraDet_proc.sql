USE `azul_controlev2`;
DROP procedure IF EXISTS `classCompraDet_proc`;
/*
USE azul_controlev2;
 SELECT * FROM testenome WHERE coluna like ('%TAR%VER%');
 select * from testenome WHERE MATCH(coluna) AGAINST ('%TAR%VER%' IN BOOLEAN MODE);
*/
DELIMITER $$
USE `azul_controlev2`$$
CREATE PROCEDURE `classCompraDet_proc`(
in p_opt               int(1),
in p_tpcod             int(1),
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
   
   set d_id_subgrupo=0;
   set d_id_grupo=0;
   set d_id_empresa=0;
   set d_id_pessoa=0;
-- tpcod = 1 (consulta pelo codigo de barras)
-- tpcod = 2 (consulta pelo id produto)
--
   if (p_tpcod = 1) then
       select
select `referencia_produto`.`id_referencia`,
       `referencia_produto`.`id_produto`,
       `referencia_produto`.`cod_ean`,
       `referencia_produto`.`foto`,
       `referencia_produto`.`quant_minima`,
       `referencia_produto`.`id_valor_atributos`,
       `referencia_produto`.`status`,
       GROUP_CONCAT(`valor_atributo`.`valor_atributo` order by `relacao`.`id_valor_atributo` SEPARATOR'|')
  from `referencia_produto`
  left join `relacao` on `relacao`.`id_referencia`=`referencia_produto`.`id_referencia`
  left join `valor_atributo` on `valor_atributo`.`id_valor_atributo`=`relacao`.`id_valor_atributo`
  left join `estoque` on `estoque`.`id_referencia` = `relacao`.`id_referencia`
-- where `referencia_produto`.`id_referencia`=7
 where `referencia_produto`.`cod_ean`='1111113'
   and `referencia_produto`.`id_empresa`=2
-- where `referencia_produto`.`id_produto`=1
 GROUP BY `referencia_produto`.`id_referencia`
 ORDER BY `referencia_produto`.`cod_ean`
 ;
        
   end if;
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
   end if;
   
END$$

DELIMITER ;
