USE `SISCOM`;
DROP procedure IF EXISTS `classFornecedor_proc`;

DELIMITER $$
USE `SISCOM`$$
CREATE PROCEDURE `classFornecedor_proc`(
  IN p_opt INT(1),
  IN p_IDEMPRESA int(11),
  IN p_CNPJCPF varchar(20),
  IN p_NOME varchar(100),
  IN p_NOMEFANTASIA varchar(45),
  IN p_TPPESSOA int(2),
  IN p_STATUS int(1), 
  IN p_EMAIL_FORNECEDOR varchar(255),
  IN p_SITE_FORNECEDOR varchar(100),
  IN p_CONTATO_FORNECEDOR varchar(50),
  IN p_TIPO_FORNECEDOR char(1),
  IN p_LOGRADOURO_ENDERECO varchar(50),
  IN p_COMPLEMENTO_ENDERECO varchar(50),
  IN p_NUMERO_ENDERECO varchar(10),
  IN p_CEP_ENDERECO varchar(10),
  IN p_BAIRRO_ENDERECO varchar(50),
  IN p_CIDADE_ENDERECO varchar(50),
  IN p_UF_ENDERECO char(2),
  IN p_NUMERO_TELEFONE varchar(20),
  IN p_TIPO_TELEFONE char(1),
  IN p_INSCRESTADUAL_FORNECEDOR varchar(20),
  IN p_INSCRMUNICIPAL_FORNECEDOR varchar(20) 
 )
BEGIN
  -- p_TPPESSOA = 1 FORNECEDOR, 2 fornecedor, 3 colaborador
  -- TIPO_FORNECEDOR 1 = Juridica 2 = fisica
  -- se 1 tem CPF, se 2 tem CNPJ
  DECLARE d_opt INT(1);
  DECLARE d_IDEMPRESA int(11);
  DECLARE d_CNPJCPF varchar(20);
  DECLARE d_NOME varchar(100);
  DECLARE d_NOMEFANTASIA varchar(45);
  DECLARE d_TPPESSOA int(2);
  DECLARE d_STATUS int(1);
  DECLARE d_EMAIL varchar(255);
  DECLARE d_SITE_FORNECEDOR varchar(100);
  DECLARE d_CONTATO_FORNECEDOR varchar(50);
  DECLARE d_TIPO_FORNECEDOR char(1);
-- FORNECEDOR_ENDERECO
  DECLARE d_LOGRADOURO_ENDERECO varchar(50);
  DECLARE d_COMPLEMENTO_ENDERECO varchar(50);
  DECLARE d_NUMERO_ENDERECO varchar(10);
  DECLARE d_CEP_ENDERECO varchar(10);
  DECLARE d_BAIRRO_ENDERECO varchar(50);
  DECLARE d_CIDADE_ENDERECO varchar(50);
  DECLARE d_UF_ENDERECO char(2);
  DECLARE SELEC CHAR(1);
-- FORNECEDOR_TELEFONE
  DECLARE d_NUMERO_TELEFONE varchar(20);
  DECLARE d_TIPO_TELEFONE char(1);
  DECLARE d_msg VARCHAR(100);
-- |CPF 999.999.999-99 |CNPJ 99.999.999/9999-99
  DECLARE d_idpessoa INTEGER(11);
  DECLARE iCount INTEGER(5);
  DECLARE bResult BOOLEAN;
  DECLARE `_rollback` BOOL DEFAULT 0;
    
   -- DECLARE- CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
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

  SET d_opt=0;
  SET SELEC=0;
  SET d_idpessoa=0;
  SET bResult = FALSE;

  IF (p_opt = 1) THEN
     IF (p_CNPJCPF != '') THEN
        IF (iCount = 0 OR iCount IS NULL) THEN
           SET iCount = (SELECT count(0) FROM PESSOA WHERE CNPJCPF=d_CNPJCPF AND TPPESSOA=2 AND STATUS = 1 AND IDEMPRESA=p_IDEMPRESA);
           INSERT INTO PESSOA(IDEMPRESA,CNPJCPF,NOME,NOMEFANTASIA,TPPESSOA)
                  VALUES (p_IDEMPRESA,p_CNPJCPF,UPPER(p_NOME),UPPER(p_NOMEFANTASIA),2);
           SELECT IDPESSOA INTO d_IDPESSOA FROM PESSOA WHERE IDEMPRESA=p_IDEMPRESA AND CNPJCPF=p_CNPJCPF;
         INSERT INTO FORNECEDOR
                  (IDPESSOA
                  ,TIPO_FORNECEDOR
                  ,EMAIL_FORNECEDOR
                  ,SITE_FORNECEDOR
                  ,CONTATO_FORNECEDOR
                  ,INSCRESTADUAL_FORNECEDOR
                  ,INSCRMUNICIPAL_FORNECEDOR)
           VALUES           
                  (d_IDPESSOA
                  ,p_TIPO_FORNECEDOR
                  ,p_EMAIL_FORNECEDOR
                  ,p_SITE_FORNECEDOR
                  ,UPPER(p_CONTATO_FORNECEDOR)
                  ,p_INSCRESTADUAL_FORNECEDOR
                  ,p_INSCRMUNICIPAL_FORNECEDOR);
         INSERT INTO ENDERECO
                  (IDPESSOA
                  ,LOGRADOURO_ENDERECO
                  ,COMPLEMENTO_ENDERECO
                  ,NUMERO_ENDERECO
                  ,CEP_ENDERECO
                  ,BAIRRO_ENDERECO
                  ,CIDADE_ENDERECO
                  ,UF_ENDERECO)
           VALUES
                  (d_IDPESSOA
                  ,UPPER(p_LOGRADOURO_ENDERECO)
                  ,UPPER(p_COMPLEMENTO_ENDERECO)
                  ,p_NUMERO_ENDERECO
                  ,p_CEP_ENDERECO
                  ,UPPER(p_BAIRRO_ENDERECO)
                  ,UPPER(p_CIDADE_ENDERECO)
                  ,UPPER(p_UF_ENDERECO));					
           INSERT INTO TELEFONE
                  (IDPESSOA
                  ,NUMERO_TELEFONE
                  ,TIPO_TELEFONE)
           VALUES
                  (d_IDPESSOA
                  ,p_NUMERO_TELEFONE
                  ,p_TIPO_TELEFONE);
           SET SELEC = 1;
        ELSE
           SET d_opt=9;
           SET d_msg='FORNECEDOR JA CADASTRADO';
        END IF;   
     ELSE
        SET d_opt=9;
        SET d_msg='FALTA CPF/CNPJ DO FORNECEDOR';
     END IF;
  ELSE
     IF (p_opt = 2) THEN
         SET SELEC=1;
     ELSE
        IF (p_opt = 3) THEN
            SET SELEC = 2;   
            SELECT P.IDPESSOA             F_IDPESSOA
               ,P.IDEMPRESA            F_EMPRESA
               ,P.CNPJCPF              F_CNPJCPF
               ,P.NOME                 F_NOME
               ,P.NOMEFANTASIA         F_NOMEFANTASIA
               ,P.TPPESSOA             F_TPPESSOA
               ,P.STATUS               F_STATUS
               ,FO.COD_FORNECEDOR      F_COD_FORNEC
               ,FO.TIPO_FORNECEDOR     F_TIPO_FORNEC
               ,FO.EMAIL_FORNECEDOR    F_EMAIL_FORNEC
               ,FO.SITE_FORNECEDOR     F_SITE_FORNEC
               ,FO.CONTATO_FORNECEDOR  F_CONTATO_FORNEC
               ,FO.INSCRESTADUAL_FORNECEDOR F_INSCRESTADUAL
               ,FO.INSCRMUNICIPAL_FORNECEDOR F_INSCRMUNICIPAL
               ,E.RAZAOSOCIAL          F_RAZAO_SOCIAL
               ,ED.LOGRADOURO_ENDERECO F_RUA
               ,ED.NUMERO_ENDERECO     F_NUMERO
               ,ED.CEP_ENDERECO        F_CEP
               ,ED.BAIRRO_ENDERECO     F_BAIRRO
               ,ED.CIDADE_ENDERECO     F_CIDADE
               ,ED.UF_ENDERECO         F_UF
               ,TL.NUMERO_TELEFONE     F_TELEFONE
               ,TL.TIPO_TELEFONE       F_TPFONE
               ,FO.CADASTRO_FORNECEDOR F_CADASTRO_FORNEC
               ,ED.COMPLEMENTO_ENDERECO F_COMPLEMENTO
             FROM PESSOA P
             LEFT JOIN EMPRESA E     ON E.IDEMPRESA=P.IDEMPRESA
             LEFT JOIN FORNECEDOR FO ON FO.IDPESSOA=P.IDPESSOA
             LEFT JOIN ENDERECO ED   ON ED.IDPESSOA=P.IDPESSOA
             LEFT JOIN TELEFONE TL   ON TL.IDPESSOA=P.IDPESSOA
             WHERE P.IDEMPRESA=p_IDEMPRESA
               AND P.TPPESSOA=2;
        ELSE
            IF (p_opt = 4) THEN
                SELECT IDPESSOA INTO d_IDPESSOA FROM PESSOA WHERE IDEMPRESA=p_IDEMPRESA AND CNPJCPF=p_CNPJCPF;
                UPDATE PESSOA SET
                     NOME = UPPER(p_NOME)
                    ,NOMEFANTASIA = UPPER(p_NOMEFANTASIA)
                    ,TPPESSOA = p_TPPESSOA
                WHERE IDPESSOA = d_IDPESSOA;
                
                UPDATE FORNECEDOR SET
                     EMAIL_FORNECEDOR=p_EMAIL_FORNECEDOR
                     ,SITE_FORNECEDOR=p_SITE_FORNECEDOR
                     ,CONTATO_FORNECEDOR=UPPER(p_CONTATO_FORNECEDOR)
                     ,INSCRESTADUAL_FORNECEDOR=p_INSCRESTADUAL_FORNECEDOR
                     ,INSCRMUNICIPAL_FORNECEDOR=p_INSCRMUNICIPAL_FORNECEDOR
                WHERE IDPESSOA = d_IDPESSOA;
                
                UPDATE ENDERECO SET
                     LOGRADOURO_ENDERECO=UPPER(p_LOGRADOURO_ENDERECO)
                     ,COMPLEMENTO_ENDERECO=UPPER(p_COMPLEMENTO_ENDERECO)
                     ,NUMERO_ENDERECO=p_NUMERO_ENDERECO
                     ,CEP_ENDERECO=p_CEP_ENDERECO
                     ,BAIRRO_ENDERECO=UPPER(p_BAIRRO_ENDERECO)
                     ,CIDADE_ENDERECO=UPPER(p_CIDADE_ENDERECO)
                     ,UF_ENDERECO=UPPER(p_UF_ENDERECO)
                WHERE IDPESSOA = d_IDPESSOA;
                
                UPDATE TELEFONE SET 
                     NUMERO_TELEFONE=p_NUMERO_TELEFONE
                     ,TIPO_TELEFONE=p_TIPO_TELEFONE
                WHERE IDPESSOA = d_IDPESSOA;
                SET SELEC = 1;
            ELSE 
                IF (p_opt = 5) THEN
                    SELECT IDPESSOA INTO d_IDPESSOA FROM PESSOA WHERE IDEMPRESA=p_IDEMPRESA AND CNPJCPF=p_CNPJCPF;
                    DELETE FROM PESSOA WHERE IDPESSOA = d_IDPESSOA;
                    DELETE FROM FORNECEDOR WHERE IDPESSOA = d_IDPESSOA;
                    DELETE FROM ENDERECO WHERE IDPESSOA = d_IDPESSOA;
                    DELETE FROM TELEFONE WHERE IDPESSOA = d_IDPESSOA;
                    SET SELEC=2;
                END IF;               
            END IF;
        END IF;        
     END IF;         
  END IF;
  
COMMIT;
IF (SELEC=1) THEN
    SELECT P.IDPESSOA             F_IDPESSOA
            ,P.IDEMPRESA            F_EMPRESA
            ,P.CNPJCPF              F_CNPJCPF
            ,P.NOME                 F_NOME
            ,P.NOMEFANTASIA         F_NOMEFANTASIA
            ,P.TPPESSOA             F_TPPESSOA
            ,P.STATUS               F_STATUS
            ,FO.COD_FORNECEDOR      F_COD_FORNEC
            ,FO.TIPO_FORNECEDOR     F_TIPO_FORNEC
            ,FO.EMAIL_FORNECEDOR    F_EMAIL_FORNEC
            ,FO.SITE_FORNECEDOR     F_SITE_FORNEC
            ,FO.CONTATO_FORNECEDOR  F_CONTATO_FORNEC
            ,FO.INSCRESTADUAL_FORNECEDOR F_INSCRESTADUAL
            ,FO.INSCRMUNICIPAL_FORNECEDOR F_INSCRMUNICIPAL
            ,E.RAZAOSOCIAL          F_RAZAO_SOCIAL
            ,ED.LOGRADOURO_ENDERECO F_RUA
            ,ED.NUMERO_ENDERECO     F_NUMERO
            ,ED.CEP_ENDERECO        F_CEP
            ,ED.BAIRRO_ENDERECO     F_BAIRRO
            ,ED.CIDADE_ENDERECO     F_CIDADE
            ,ED.UF_ENDERECO         F_UF
            ,TL.NUMERO_TELEFONE     F_TELEFONE
            ,TL.TIPO_TELEFONE       F_TPFONE
            ,FO.CADASTRO_FORNECEDOR F_CADASTRO_FORNEC
            ,ED.COMPLEMENTO_ENDERECO F_COMPLEMENTO
       FROM PESSOA P
       LEFT JOIN EMPRESA E     ON E.IDEMPRESA=P.IDEMPRESA
       LEFT JOIN FORNECEDOR FO ON FO.IDPESSOA=P.IDPESSOA
       LEFT JOIN ENDERECO ED   ON ED.IDPESSOA=P.IDPESSOA
       LEFT JOIN TELEFONE TL   ON TL.IDPESSOA=P.IDPESSOA
       WHERE P.CNPJCPF=p_CNPJCPF
         AND P.IDEMPRESA=p_IDEMPRESA
         AND P.TPPESSOA=2;
END IF;

END$$

DELIMITER ;
