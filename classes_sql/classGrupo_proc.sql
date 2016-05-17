USE `azul_controle`;
DROP procedure IF EXISTS `classProduto_proc`;

DELIMITER $$
USE `azul_controle`$$
create procedure `classGrupo_proc`(
  in p_opt int(1),
  in p_id_empresa int(11),
  in p_cod_grupo int(3),
  in p_descricao_grupo text,
  in p_status char(1) 
 )
 
main: begin
  declare d_opt int(1);
  declare d_cod_grupo int(3);
  declare d_descricao_grupo text; 
  declare d_msg varchar(100);
  declare d_tpmsg char(1);
  declare icount integer(5);
  declare bresult boolean;
  declare `_rollback` bool default 0;
    
   -- declare continue handler for sqlexception set `_rollback` = 1; --
/*
  declare exit handler for sqlexception
      begin
         rollback;
         get diagnostics condition 1 @sqlstate = returned_sqlstate, 
          @errno = mysql_errno, @text = message_text;
         set @full_error = concat("error ", @errno, " (", @sqlstate, "): ", @text);
         select @full_error;--
      end;
*/
  start transaction;

  set d_opt=0;
  set d_cod_grupo=0;
  set bresult = false;

  if (p_opt = 1) then
      set icount = (select count(0) from grupo where cod_grupo=p_cod_grupo and id_empresa=p_id_empresa);
      if (icount = 0 or icount is null) then
         insert into grupo
            (cod_grupo,id_empresa,descricao_grupo,status)
            values
            (p_cod_grupo,p_id_empresa,upper(p_descricao_grupo),1);
      else
          select 'Grupo Já cadastrado';
          LEAVE main;
      end if;
  else
     if (p_opt = 2) then
        select cod_grupo      c_grupo
            ,descricao_grupo  c_descricaogrupo
            ,if(status=1,'ativo','inativo') c_statusgrupo
        from grupo
        where cod_grupo=p_cod_grupo
          and id_empresa=p_id_empresa
          and status=1;
     else
        if (p_opt = 3) then
              select cod_grupo      c_grupo
                  ,descricao_grupo  c_descricaogrupo
                  ,if(status=1,'ativo','inativo') c_statusgrupo
              from grupo
              where id_empresa=p_id_empresa
              order by status desc;
        else
            if (p_opt = 4) then
                update grupo set
                   descricao_grupo=upper(p_descricao_grupo)
                   ,status=p_status
                where cod_grupo=p_cod_grupo
                  and id_empresa=p_id_empresa
                  and status=1;
                select cod_grupo      c_grupo
                       ,descricao_grupo  c_descricaogrupo
                       ,if(status=1,'ativo','inativo') c_statusgrupo
                from grupo
                where cod_grupo=p_cod_grupo
                  and id_empresa=p_id_empresa
                  and status=1;
          else 
               if (p_opt = 5) then
                  set icount = 0;
                  set icount = (select count(0) from subgrupo where cod_grupo=p_cod_grupo and id_empresa=p_id_empresa);
                  if (icount = 0 or icount is null) then
                      delete from grupo where cod_grupo=p_cod_grupo and id_empresa=p_id_empresa;
                  else
                      set d_tpmsg=9;
                      set d_msg='impossivel exclusao de grupo com subgrupo associado';
                      select d_tpmsg,d_msg;
                      LEAVE main;
                  end if;
               end if;                            
            end if;
        end if;
     end if;
  end if;
commit;

END$$

DELIMITER ;
