USE `SISCOM`;
DROP procedure IF EXISTS `classMovimentaEstoque_proc`;

DELIMITER $$
USE `SISCOM`$$
CREATE PROCEDURE `classMovimentaEstoque_proc`(
  IN p_opt                INT(1),
  IN p_IDEMPRESA          INT(11),
  IN p_COD_BARRA_PRODUTO        varchar(13),
  IN p_COD_UNIDADE        int(11),
  IN p_CNPJ_FORN          VARCHAR(20),
  IN p_VLR_COMPRA_PRODUTO double(11,2),
  IN p_VLR_VENDA_PRODUTO  double(11,2),
  IN p_CFOP               INT(4),
  IN p_PERCENTUAL_VENDA   varchar(10),
  IN p_ICMS_PRODUTO       varchar(10),
  IN p_IPI_PRODUTO        varchar(10),
  IN p_ISS_PRODUTO        varchar(10),
  IN p_IRF_PRODUTO        varchar(10),
  IN p_VLR_ICMS_PRODUTO   double(11,2),
  IN p_VLR_IPI_PRODUTO    double(11,2),
  IN p_VLR_ISS_PRODUTO    double(11,2),
  IN p_VLR_IRF_PRODUTO    double(11,2),
  IN p_NCM_PRODUTO        varchar(8),
  IN p_NUMERO_NFE_CAB     varchar(11),
  IN p_EMISSAO_NFE_CAB     VARCHAR(10),
  IN p_ENTRADA_NFE_CAB    VARCHAR(10),
  IN p_TOTAL_NFE_CAB      DOUBLE(11,2),
  IN p_QTDE_NFE_DET       int(11),
  IN p_VLR_UNIT_NFE_DET   DOUBLE(11,2),
  IN p_COD_TIPO_PGTO      INT(11),
  IN p_COD_BANCO          INT(11),
  IN p_VLR_DESCONTO_PAGAMENTO DOUBLE(11,2),
  IN p_NUM_CHEQUE_PAGMENTO    VARCHAR(15),
  IN p_VENCIMENTO_PAGAMENTO   VARCHAR(10),
  IN p_DATA_CHEQUE_PAGAMENTO  VARCHAR(10),
  IN p_AGENCIA_PAGAMENTO      varchar(10),
  IN p_CONTA_PAGAMENTO        varchar(45),
  IN p_ID_NFE_CAB             int(11),
  IN p_CIDADE_NFE_CAB         VARCHAR(45),
  IN p_UF_NFE_CAB             VARCHAR(02),
  IN p_BASE_CALCULO_NFE_CAB   double(11,2)
 )
BEGIN
  DECLARE d_IDPESSOA int(11) unsigned;
  DECLARE d_COD_BARRA_PRODUTO VARCHAR(13);
  DECLARE d_COD_PRODUTO INT(11);
  DECLARE d_MARGEM DECIMAL(5,3);
  DECLARE d_STATUS_PRODUTO CHAR(1);
  DECLARE d_CNPJ_FORN   VARCHAR(20);
  DECLARE d_NOME varchar(100);
  DECLARE d_COD_FORNECEDOR INT(11);
  DECLARE d_MSG VARCHAR(100);
  DECLARE d_TPMSG CHAR(1);
  DECLARE d_opt INT(1);
  DECLARE d_COD_SUBGRUPO int(11);
  DECLARE d_COD_GRUPO int(11);
  DECLARE d_DESCRICAO_SUBGRUPO text;
  DECLARE d_ESTOQUE_ATUAL INT(11); 
  DECLARE iCount INTEGER(5);
  DECLARE bResult BOOLEAN;
  DECLARE `_rollback` BOOL DEFAULT 0;
  DECLARE d_SELEC CHAR(1);
  DECLARE d_COD_PLANO_CONTA INT(11);
  DECLARE d_DATA_ATUAL TIMESTAMP;
  DECLARE d_LAST_ID INT(11);
    
   -- DECLARE- CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;--
/*
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
      BEGIN
         ROLLBACK;
         GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, 
          @errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
         SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);
         SELECT @full_error;
      END;
      
*/
START TRANSACTION;

  SET d_SELEC=0;
  SET d_opt=0;
  SET d_COD_FORNECEDOR=0;
  SET d_TPMSG=0;
  SET d_COD_SUBGRUPO=0;
  SET d_COD_GRUPO=0;
  SET d_COD_PRODUTO=0;
  SET d_ESTOQUE_ATUAL=0;
  SET d_LAST_ID=0;
  SET d_MARGEM=p_PERCENTUAL_VENDA;
  SET bResult = FALSE;
  SET d_DATA_ATUAL = NOW();
  IF (p_COD_TIPO_PGTO = 1 OR 2) THEN
     SET d_COD_PLANO_CONTA = 1;
  ELSE
     IF (p_COD_TIPO_PGTO > 2) THEN
        SET d_COD_PLANO_CONTA = 2;
     ELSE
        SET d_COD_PLANO_CONTA = 0;
     END IF;
  END IF;

  SELECT p.IDPESSOA
      ,f.COD_FORNECEDOR
      ,p.NOME INTO d_IDPESSOA,d_COD_FORNECEDOR,d_NOME
   FROM PESSOA p
   LEFT JOIN FORNECEDOR f ON f.IDPESSOA=p.IDPESSOA
   WHERE p.CNPJCPF=p_CNPJ_FORN
     AND p.TPPESSOA=2
     AND p.STATUS=1;

  IF (p_opt = 1) THEN
     IF (d_COD_FORNECEDOR = 0 OR d_COD_FORNECEDOR IS NULL) THEN
         SET d_TPMSG=9;
         SET d_MSG='FORNECEDOR NAO CADASTRADO';
         SELECT d_TPMSG,d_MSG;
     ELSE
         INSERT INTO NFE_CAB
               (NUMERO_NFE_CAB
               ,COD_CFOP
               ,COD_FORNECEDOR
               ,EMISSAO_NFE_CAB
               ,ENTRADA_NFE_CAB
               ,TOTAL_NFE_CAB
               ,ICMS_NFE_CAB
               ,IPI_NFE_CAB
               ,ISS_NFE_CAB
               ,IRF_NFE_CAB
               ,VLR_ICMS_NFE_CAB
               ,VLR_IPI_NFE_CAB
               ,VLR_ISS_NFE_CAB
               ,VLR_IRF_NFE_CAB
               ,CIDADE_NFE_CAB
               ,UF_NFE_CAB
               ,BASE_CALCULO_NFE_CAB)
         VALUES
               (p_NUMERO_NFE_CAB
               ,p_CFOP
               ,p_CNPJ_FORN
               ,p_EMISSAO_NFE_CAB
               ,p_ENTRADA_NFE_CAB
               ,p_TOTAL_NFE_CAB
               ,p_ICMS_PRODUTO
               ,p_IPI_PRODUTO
               ,p_ISS_PRODUTO
               ,p_IRF_PRODUTO
               ,p_VLR_ICMS_PRODUTO
               ,p_VLR_IPI_PRODUTO
               ,p_VLR_ISS_PRODUTO
               ,p_VLR_IRF_PRODUTO
               ,UPPER(p_CIDADE_NFE_CAB)
               ,p_UF_NFE_CAB
               ,p_BASE_CALCULO_NFE_CAB);
         SET d_LAST_ID=(SELECT LAST_INSERT_ID());
         INSERT INTO PAGAMENTO
               (COD_TIPO_PGTO
               ,COD_FORNECEDOR
               ,COD_PLANO_CONTA
               ,COD_BANCO
               ,NUM_DOC_PAGAMENTO
               ,VLR_TOTAL_PAGAMENTO
               ,VLR_JURO_PAGAMENTO
               ,VLR_MULTA_PAGAMENTO
               ,VLR_DESCONTO_PAGAMENTO
               ,VLR_PAGO_PAGAMENTO
               ,NUM_CHEQUE_PAGMENTO
               ,NOMINAL_PAGAMENTO
               ,VENCIMENTO_PAGAMENTO
               ,AGENCIA_PAGAMENTO
               ,CONTA_PAGAMENTO
               ,ID_NFE_CAB)
         VALUES
               (p_COD_TIPO_PGTO
               ,p_CNPJ_FORN
               ,d_COD_PLANO_CONTA
               ,p_COD_BANCO
               ,p_NUMERO_NFE_CAB
               ,p_TOTAL_NFE_CAB
               ,0.00
               ,0.00
               ,p_VLR_DESCONTO_PAGAMENTO
               ,0.00
               ,p_NUM_CHEQUE_PAGMENTO
               ,''
               ,p_VENCIMENTO_PAGAMENTO
               ,p_AGENCIA_PAGAMENTO
               ,p_CONTA_PAGAMENTO
               ,d_LAST_ID);
         SELECT d_LAST_ID ID;
     END IF;
  ELSE
     IF (p_opt = 6) THEN            
         SELECT COD_PRODUTO,ESTOQUE_PRODUTO INTO d_COD_PRODUTO,d_ESTOQUE_ATUAL
           FROM PRODUTO
          WHERE COD_BARRA_PRODUTO=p_COD_BARRA_PRODUTO;          
         INSERT INTO NFE_DET
                  (COD_PRODUTO
                  ,NUMERO_NFE_CAB
                  ,QTDE_NFE_DET
                  ,VLR_UNIT_NFE_DET
                  ,VLR_TOTAL_NFE_DET
                  ,NCM_NFE_DET
                  ,ICMS_NFE_DET
                  ,IPI_NFE_DET
                  ,ISS_NFE_DET
                  ,IRF_NFE_DET
                  ,VLR_ICMS_NFE_DET
                  ,VLR_IPI_NFE_DET
                  ,VLR_ISS_NFE_DET
                  ,VLR_IRF_NFE_DET                 
                  ,ID_NFE_CAB)
         VALUES
                  (d_COD_PRODUTO
                  ,p_NUMERO_NFE_CAB
                  ,p_QTDE_NFE_DET
                  ,p_VLR_UNIT_NFE_DET
                  ,p_VLR_COMPRA_PRODUTO
                  ,p_NCM_PRODUTO
                  ,p_ICMS_PRODUTO
                  ,p_IPI_PRODUTO
                  ,p_ISS_PRODUTO
                  ,p_IRF_PRODUTO
                  ,p_VLR_ICMS_PRODUTO
                  ,p_VLR_IPI_PRODUTO
                  ,p_VLR_ISS_PRODUTO
                  ,p_VLR_IRF_PRODUTO
                  ,p_ID_NFE_CAB);           
         SET d_ESTOQUE_ATUAL=d_ESTOQUE_ATUAL + p_QTDE_NFE_DET;
         UPDATE PRODUTO SET
              VLR_COMPRA_PRODUTO=p_VLR_UNIT_NFE_DET
              ,VLR_VENDA_PRODUTO=p_VLR_VENDA_PRODUTO
              ,ESTOQUE_PRODUTO=d_ESTOQUE_ATUAL
              ,PERCENTUAL_VENDA=d_MARGEM
         WHERE COD_PRODUTO=d_COD_PRODUTO;          
         SET d_SELEC=1;
     END IF;
  END IF;
COMMIT;
IF (d_SELEC=1) THEN
    SELECT P.COD_GRUPO            C_GRUPO
          ,nomeGrupo(P.COD_GRUPO) C_DSGRUPO
          ,P.COD_SUBGRUPO         C_CDSUBGRUPO
          ,nomeSubGrupo(P.COD_GRUPO,P.COD_SUBGRUPO) C_DSSUBGRUPO
          ,P.COD_PRODUTO        C_CDPRODUTO
          ,P.IDEMPRESA          C_IDEMPRESA
          ,P.COD_UNIDADE        C_CDUNIDADE
          ,U.DESCRICAO_UNIDADE  C_DSUNIDADE
          ,P.COD_FORNECEDOR     CNPJCPF
          ,nomeFornecedorCNPJ(P.COD_FORNECEDOR) C_DSFORNECEDOR
          ,P.DESCRICAO_PRODUTO  C_DSPRODUTO
          ,P.VLR_COMPRA_PRODUTO C_VLCOMPRA
          ,P.VLR_VENDA_PRODUTO  C_VLVENDA
          ,P.ESTOQUE_PRODUTO    C_QESTOQUE
          ,P.CRITICO_PRODUTO    C_CRITICO
          ,P.ESPECIFICA_PRODUTO C_ESPECIFICA
          ,P.COD_BARRA_PRODUTO  C_CDBARRA
          ,P.CFOP_PRODUTO       C_CFOP
          ,P.STATUS             C_STATUS
          ,P.PERCENTUAL_VENDA   C_PERCENTUAL     
          ,P.ICMS_PRODUTO       C_ICMS
          ,P.IPI_PRODUTO        C_IPI
          ,P.ISS_PRODUTO        C_ISS
          ,P.IRF_PRODUTO        C_IRF
          ,P.VLR_ICMS_PRODUTO   C_VLR_ICMS
          ,P.VLR_IPI_PRODUTO    C_VLR_IPI
          ,P.VLR_ISS_PRODUTO    C_VLR_ISS
          ,P.VLR_IRF_PRODUTO    C_VLR_IRF
          ,P.TAMANHO_PRODUTO    C_TAMANHO
          ,P.COR_PRODUTO        C_COR
          ,P.NCM_PRODUTO        C_NCM
          ,CFOP.CFOPDescricao   C_DSCFOP
          ,ncm.nome             C_DSNCM
          FROM PRODUTO P
          LEFT JOIN UNIDADE U ON U.COD_UNIDADE=P.COD_UNIDADE
          LEFT JOIN CFOP ON CFOP.CFOPNatureza=P.CFOP_PRODUTO
          LEFT JOIN ncm ON ncm.ncm=P.NCM_PRODUTO
         WHERE P.STATUS=1
           AND P.IDEMPRESA=p_IDEMPRESA
           AND P.COD_BARRA_PRODUTO=p_COD_BARRA_PRODUTO;
END IF;
END$$

DELIMITER ;
/*
USE SISCOM;	
ALTER TABLE NFE_DET ADD ICMS_NFE_DET decimal(5,3) DEFAULT NULL AFTER NCM_NFE_DET;
ALTER TABLE NFE_DET ADD IPI_NFE_DET decimal(5,3) DEFAULT NULL AFTER ICMS_NFE_DET;
ALTER TABLE NFE_DET ADD ISS_NFE_DET decimal(5,3) DEFAULT NULL AFTER IPI_NFE_DET;
ALTER TABLE NFE_DET ADD IRF_NFE_DET decimal(5,3) DEFAULT NULL AFTER ISS_NFE_DET;
ALTER TABLE NFE_DET ADD VLR_ICMS_NFE_DET double(11,2) DEFAULT NULL AFTER IRF_NFE_DET;
ALTER TABLE NFE_DET ADD VLR_IPI_NFE_DET double(11,2) DEFAULT NULL AFTER VLR_ICMS_NFE_DET;
ALTER TABLE NFE_DET ADD VLR_ISS_NFE_DET double(11,2) DEFAULT NULL AFTER VLR_IPI_NFE_DET;
ALTER TABLE NFE_DET ADD VLR_IRF_NFE_DET double(11,2) DEFAULT NULL AFTER VLR_ISS_NFE_DET;
*/