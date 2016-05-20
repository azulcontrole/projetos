USE `azul_controlev2`;
DROP procedure IF EXISTS `classUsers_proc`;

DELIMITER $$
USE `azul_controlev2`$$
CREATE PROCEDURE `classUsers_proc`(
  in p_opt int(1),
  in p_id  int(10),
  in p_name varchar(50),
  in p_login varchar(50),
  in p_senha varchar(255),
  in p_dataCadastro varchar(10)
 )
begin
  declare d_opt int(1);
  declare d_dataCadastro date;
  declare d_idmsg int(5);
  declare d_msg varchar(100);
  declare icount integer(5);
  declare bresult boolean;
  declare `_rollback` bool default 0;

  start transaction;

  set d_opt=0;
  set d_dataCadastro=STR_TO_DATE(p_dataCadastro, '%d/%m/%Y');


  if (p_opt = 1) then
      insert into `users`
         (`name`
         ,`login`
         ,`senha`
         ,`datacadastro`)
      values
         (p_name
         ,p_login
         ,p_senha
         ,d_dataCadastro);
  end if;
  if (p_opt = 2) then
      select `id`
    ,`name`
    ,`login`
    ,`senha`
    ,`dataCadastro`
    ,`dataAlterado`
      from `users`;
  end if;
commit;

end$$

DELIMITER ;
