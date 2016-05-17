USE `SISCOM`;
DROP procedure IF EXISTS `classSubGrupo_proc`;

DELIMITER $$
USE `SISCOM`$$
CREATE PROCEDURE `classSubGrupo_proc`(
  IN p_opt INT(1),
  IN p_IDEMPRESA INT(11),
  IN p_COD_GRUPO int(3),
  IN p_COD_SUBGRUPO int(3),
  IN p_DESCRICAO_SUBGRUPO text,
  IN p_STATUS CHAR(1) 
 )
BEGIN
  DECLARE d_MSG VARCHAR(100);
  DECLARE d_TPMSG CHAR(1);
  DECLARE d_opt INT(1);
  DECLARE d_COD_SUBGRUPO int(3);
  DECLARE d_COD_GRUPO int(3);
  DECLARE d_DESCRICAO_SUBGRUPO text; 
  DECLARE iCount INTEGER(5);
  DECLARE bResult BOOLEAN;
  DECLARE `_rollback` BOOL DEFAULT 0;
    
   -- DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
/*
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
      BEGIN
         ROLLBACK;
         GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, 
          @errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
         SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);
         SELECT @full_error;
      END;
*/ --
  START TRANSACTION;

  SET d_opt=0;
  SET d_TPMSG=0;
  SET d_COD_SUBGRUPO=0;
  SET d_COD_GRUPO=0;
  SET bResult = FALSE;

  IF (p_opt = 1) THEN
      SELECT COD_GRUPO INTO d_COD_GRUPO FROM GRUPO WHERE COD_GRUPO=p_COD_GRUPO AND IDEMPRESA=p_IDEMPRESA;
      IF (d_COD_GRUPO != 0) THEN  
         SET iCount = (SELECT count(0) FROM SUBGRUPO WHERE COD_SUBGRUPO=p_COD_SUBGRUPO AND COD_GRUPO=p_COD_GRUPO AND IDEMPRESA=p_IDEMPRESA);
         IF (iCount = 0 OR iCount IS NULL) THEN
            INSERT INTO SUBGRUPO
               (COD_SUBGRUPO,COD_GRUPO,DESCRICAO_SUBGRUPO,STATUS,IDEMPRESA)
            VALUES
               (p_COD_SUBGRUPO,d_COD_GRUPO,UPPER(p_DESCRICAO_SUBGRUPO),1,p_IDEMPRESA);
            SELECT SG.COD_GRUPO          C_GRUPO
                  ,G.DESCRICAO_GRUPO     C_DESCGRUPO
                  ,SG.COD_SUBGRUPO       C_SUBGRUPO
                  ,SG.DESCRICAO_SUBGRUPO C_DESCSUB
                  ,SG.STATUS             C_STATUSSUB
            FROM SUBGRUPO SG
            LEFT JOIN GRUPO G ON G.COD_GRUPO=SG.COD_GRUPO
            WHERE SG.COD_SUBGRUPO=p_COD_SUBGRUPO
              AND SG.COD_GRUPO=p_COD_GRUPO
              AND SG.STATUS=1
              AND SG.IDEMPRESA=p_IDEMPRESA;
         ELSE
            SET d_TPMSG = '9';
            SET d_MSG = 'SUBGRUPO JA CADASTRADO';
            SELECT d_TPMSG,d_MSG;
         END IF;
      ELSE
         SET d_TPMSG = '9';
         SET d_MSG = 'GRUPO NAO CADASTRADO';
         SELECT d_TPMSG,d_MSG;
      END IF;
  ELSE
     IF (p_opt = 2) THEN
        SELECT SG.COD_GRUPO          C_GRUPO
              ,G.DESCRICAO_GRUPO     C_DESCGRUPO
              ,SG.COD_SUBGRUPO       C_SUBGRUPO
              ,SG.DESCRICAO_SUBGRUPO C_DESCSUB
              ,SG.STATUS             C_STATUSSUB
        FROM SUBGRUPO SG
        LEFT JOIN GRUPO G ON G.COD_GRUPO=SG.COD_GRUPO
        WHERE SG.COD_SUBGRUPO=p_COD_SUBGRUPO
          AND SG.COD_GRUPO=p_COD_GRUPO
          AND SG.STATUS=1
          AND SG.IDEMPRESA=p_IDEMPRESA;
     ELSE
        IF (p_opt = 3) THEN
           SELECT SG.COD_GRUPO          C_GRUPO
                 ,G.DESCRICAO_GRUPO     C_DESCGRUPO
                 ,SG.COD_SUBGRUPO       C_SUBGRUPO
                 ,SG.DESCRICAO_SUBGRUPO C_DESCSUB
                 ,IF(SG.STATUS=1,'ATIVO','INATIVO')  C_STATUSSUB
           FROM SUBGRUPO SG
           LEFT JOIN GRUPO G ON G.COD_GRUPO=SG.COD_GRUPO
           WHERE SG.IDEMPRESA=p_IDEMPRESA
           ORDER BY SG.STATUS DESC;
        ELSE
            IF (p_opt = 4) THEN
                UPDATE SUBGRUPO SET
                   DESCRICAO_SUBGRUPO=UPPER(p_DESCRICAO_SUBGRUPO)
                   ,STATUS=p_STATUS
                WHERE COD_SUBGRUPO=p_COD_SUBGRUPO
                  AND COD_GRUPO=p_COD_GRUPO
                  AND STATUS=1
                  AND IDEMPRESA=p_IDEMPRESA;
               SELECT SG.COD_GRUPO          C_GRUPO
                     ,G.DESCRICAO_GRUPO     C_DESCGRUPO
                     ,SG.COD_SUBGRUPO       C_SUBGRUPO
                     ,SG.DESCRICAO_SUBGRUPO C_DESCSUB
                     ,SG.STATUS             C_STATUSSUB
               FROM SUBGRUPO SG
               LEFT JOIN GRUPO G ON G.COD_GRUPO=SG.COD_GRUPO
               WHERE SG.COD_SUBGRUPO=p_COD_SUBGRUPO
                 AND SG.COD_GRUPO=p_COD_GRUPO
                 AND SG.STATUS=1
                 AND SG.IDEMPRESA=p_IDEMPRESA;
            ELSE
               IF (p_opt = 5) THEN
                   SET iCount = (SELECT count(0) FROM PRODUTO WHERE COD_SUBGRUPO=p_COD_SUBGRUPO AND COD_GRUPO=p_COD_GRUPO AND IDEMPRESA=p_IDEMPRESA);
                   IF (iCount = 0 OR iCount IS NULL) THEN
                       DELETE FROM SUBGRUPO
                       WHERE COD_SUBGRUPO=p_COD_SUBGRUPO
                         AND COD_GRUPO=p_COD_GRUPO
                         AND STATUS=1
                         AND IDEMPRESA=p_IDEMPRESA;
                   ELSE
                       SET d_TPMSG=9;
                       SET d_MSG='IMPOSSIVEL DE EXCLUIR SUBGRUPO COM PRODUTO ASSOCIADO';
                   END IF;
               END IF;            
            END IF;        
        END IF; 
     END IF;
  END IF;
COMMIT;

END$$

DELIMITER ;
