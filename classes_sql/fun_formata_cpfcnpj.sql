USE `azul_erp`;
DROP function IF EXISTS `fun_formata_cpfcnpj`;

DELIMITER $$
USE `azul_erp`$$
CREATE FUNCTION `fun_formata_cpfcnpj`(
p_cpf varchar(20),
p_classe int(1)) RETURNS varchar(14) CHARSET utf8
BEGIN  
 declare l_ret varchar(14);  
 -- Retirando possiveis formatacoes no valor recebido.
 -- p_classe 1 - Juridica , 2 - Fisica
 set p_cpf = replace(p_cpf,'.','');  
 set p_cpf = replace(p_cpf,'-','');  
 set p_cpf = replace(p_cpf,' ','');  
 set p_cpf = replace(p_cpf,'/','');
 set p_cpf = trim(p_cpf);
 if (p_classe = 1) then
     set l_ret = (select lpad(p_cpf,14,'0'));
 else
     set l_ret = (select lpad(p_cpf,11,'0'));
 end if;
 -- set l_ret = p_cpf;  
 -- Montando a formatacao  
 -- set l_ret = concat(mid(l_ret,1,3),'.',mid(l_ret,4,3),'.',mid(l_ret,7,3),'-',mid(l_ret,10,2));  
 -- Retornando o resultado  
 return l_ret;  
 END$$

DELIMITER ;
