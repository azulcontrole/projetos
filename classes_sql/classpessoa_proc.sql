USE `azul_controle`;
DROP procedure IF EXISTS `classPessoa_proc`;

DELIMITER $$
USE `azul_controle`$$
CREATE PROCEDURE `classPessoa_proc`(
   in p_opt int(1),
   in p_ret int(1),
   in p_idempresa int(11),
   in p_cnpjcpf varchar(20),
   in p_tppessoa int(2),
   in p_classe int(1),
   in p_nome varchar(100),
   in p_nomefantasia varchar(45),
   in p_status int(1), 
   in p_contato varchar(50),
   in p_inscrestadual varchar(20),
   in p_inscrmunicipal varchar(20),
   in p_numero_telefone varchar(20),
   in p_tipo_telefone INT(1),
   in p_email varchar(100),
   in p_site  varchar(100),
   in p_logradouro_endereco varchar(50),
   in p_complemento_endereco varchar(50),
   in p_numero_endereco varchar(10),
   in p_cep_endereco varchar(10),
   in p_bairro_endereco varchar(50),
   in p_cidade_endereco varchar(50),
   in p_uf_endereco char(2),
   in p_tipo_endereco INT(1),
   in p_rg_fisica varchar(25),
   in p_orgao_rg_fisica varchar(10),
   in p_nascimento_fisica varchar(10),
   in p_ecivil_fisica int(1),
   in p_sexo_fisica   int(1),
   in p_profissao_fisica varchar(40),
   in p_id_atividades  int(11),
   in p_data_inicio varchar(10),
   in p_renda_fisica double(11,2),
   in p_prestacao_servico varchar(255),
   in p_id_departamento int(11),
   in p_funcao_funcionario varchar(20),
   in p_login_funcionario varchar(10),
   in p_senha_funcionario varchar(10),
   in p_admissao_funcionario varchar(10),
   in p_data_abertura varchar(10),
   in p_id_matricula int(11),
   in p_acesso_total char(1)
/*
  in p_empresa_cliente varchar(50),
  in p_foneempresa_cliente varchar(20),
  in p_tipo_cliente char(1),
  in p_cnpj_cliente varchar(20),
  in p_referencia_cliente varchar(50),w
  in p_fone_referencia_cliente varchar(20),
*/
)
begin
  -- p_tppessoa = 1 cliente, 2 fornecedor, 3 prestador de serviço,4 - funcionario
  -- tipo_cliente 1 = juridica 2 = fisica
  -- se 1 tem cpf, se 2 tem cnpj--
  -- ecivil_cliente'1=solteiro(a),2=casado(a),3=eparado(a),4=divorciado(a),5=viuvo(a)\n',
  -- sexo_cliente'1=maculino, 2 = feminino',
  --
   declare d_nascimento_fisica date;
   declare d_data_inicio date;
   declare d_admissao_funcionario date;
   declare d_data_abertura date; 
   declare d_classe int(1);
   declare d_juridica int(11);
   declare d_fisica int(11);
   declare d_idempresa int(11);
   declare d_cnpjcpf varchar(20);
   declare d_nome varchar(100);
   declare d_nomefantasia varchar(45);
   --
   declare d_tppessoa int(211);
   declare d_status int(1);
   declare d_cod_cliente int(11);
   declare d_nome_cliente varchar(50);
   declare d_cpf_cliente varchar(14);
   declare d_rg_fisica varchar(25);
   declare d_orgao_rg_fisica varchar(10);
   declare d_nascimento_cliente varchar(10);
   declare d_desde_cliente varchar(10);
   declare d_profissao_cliente varchar(40);
   declare d_empresa_cliente varchar(50);
   declare d_foneempresa_cliente varchar(20);
   declare d_renda_cliente double(11,2);
   declare d_tipo_cliente char(1);
   declare d_cnpj_cliente varchar(18);
   declare d_referencia_cliente varchar(50);
   declare d_fone_referencia_cliente varchar(20);
   declare d_email varchar(255);
   -- cliente_endereco
   declare d_logradouro_endereco varchar(50);
   declare d_complemento_endereco varchar(50);
   declare d_numero_endereco varchar(10);
   declare d_cep_endereco varchar(10);
   declare d_bairro_endereco varchar(50);
   declare d_cidade_endereco varchar(50);
   declare d_uf_endereco char(2);
   -- cliente_telefone
   declare d_numero_telefone varchar(20);
   declare d_tipo_telefone char(1);
   declare d_opt char(1);
   declare d_msg varchar(100);
   -- |cpf 999.999.999-99 |cnpj 99.999.999/9999-99
   declare d_idpessoa integer(11);
   declare d_inclusao int(1);
   declare icount integer(5);
   declare d_countcp int;
   declare bresult boolean;
   declare `_rollback` bool default 0;
 
-- declare continue handler for sqlexception set `_rollback` = 1;
/*
  declare exit handler for sqlexception
begin
rollback;
get diagnostics condition 1 @sqlstate = returned_sqlstate, 
 @errno = mysql_errno, @text = message_text;
set @full_error = concat("error ", @errno, " (", @sqlstate, "): ", @text);
select @full_error;
end;
*/
DECLARE EXIT HANDLER FOR 1052 rollback;
DECLARE EXIT HANDLER FOR 1054 rollback;
DECLARE EXIT HANDLER FOR 1062 rollback;
DECLARE EXIT HANDLER FOR 1048 rollback;


start transaction;
--
set d_data_abertura=STR_TO_DATE(p_data_abertura, '%d/%m/%Y');
set d_nascimento_fisica=STR_TO_DATE(p_nascimento_fisica, '%d/%m/%Y');
set d_data_inicio=STR_TO_DATE(p_data_inicio, '%d/%m/%Y');
set d_admissao_funcionario=STR_TO_DATE(p_admissao_funcionario, '%d/%m/%Y');

set d_opt=0;
set d_cod_cliente=0;
set d_inclusao = 0;
set d_idpessoa=0;
set bresult = false;
-- p_classe = 1 - Juridica , 2 - Fisica  
if (p_classe > 2) or (p_classe < 1) then
   select 'Classe Invalida';
   rollback;
   set d_inclusao =0;
   set p_opt = 0;
end if;

if (p_tppessoa = 4) and (p_id_matricula = 0 or p_id_matricula is null) then
   select 'funcionario exige numero da matricula';
   rollback;
   set d_inclusao =0;
   set p_opt = 0;
end if;

set d_cnpjcpf = (select fun_formata_cpfcnpj(p_cnpjcpf,p_classe));
set d_countcp = (select char_length(d_cnpjcpf));
if (p_opt = 1) then
   if (p_cnpjcpf != '') then
      set icount = (select count(0) from pessoa where cnpj_cpf=d_cnpjcpf and id_empresa=p_idempresa);
      if (icount = 0 or icount is null) then
         set d_idpessoa = 0;
         INSERT INTO `pessoa` (`id_empresa`,`cnpj_cpf`,`nome`,`nome_fantasia`,`tp_pessoa`,`status`,`class_pessoa`,`id_atividades`,`data_inicio`)
         VALUES (p_idempresa
                  ,d_cnpjcpf
                  ,upper(p_nome)
                  ,upper(p_nomefantasia)
                  ,p_tppessoa
                  ,1
                  ,p_classe
                  ,p_id_atividades
                  ,d_data_inicio);      
         select id_pessoa into d_idpessoa from pessoa where id_empresa=p_idempresa and cnpj_cpf=d_cnpjcpf;
         if (d_idpessoa > 0) then
            set d_inclusao = 1;
         end if;
         if (p_classe=1) then
            INSERT INTO `juridica`(`id_pessoa`,`contato_juridica`,`inscrestadual_juridica`,`inscrmunicipal_juridica`,`data_abertura_juridica`)
            VALUES (d_idpessoa
                  ,upper(p_contato)
                  ,p_inscrestadual
                  ,p_inscrmunicipal
                  ,d_data_abertura);
            SELECT `id_juridica` INTO d_juridica FROM `juridica` where `id_pessoa` = d_idpessoa;
            if (d_juridica=0 or d_juridica is null) then
               rollback;
               set d_inclusao =0;
               set p_opt = 0;
            end if;
         else
            if (p_classe=2) then
               INSERT INTO `fisica`
                     (`id_pessoa`
                     ,`rg_fisica`
                     ,`orgao_rg_fisica`
                     ,`nascimento_fisica`
                     ,`ecivil_fisica`
                     ,`sexo_fisica`
                     ,`profissao_fisica`
                     ,`renda_fisica`)
               VALUES
                     (d_idpessoa
                     ,p_rg_fisica
                     ,p_orgao_rg_fisica
                     ,d_nascimento_fisica
                     ,p_ecivil_fisica
                     ,p_sexo_fisica
                     ,upper(p_profissao_fisica)
                     ,p_renda_fisica);                                  
	            SELECT `id_fisica` INTO d_fisica FROM `fisica` where `id_pessoa` = d_idpessoa;
	            if (d_fisica=0 or d_fisica is null) then
	               rollback;
	               set d_inclusao =0;
	               set p_opt = 0;
	            end if;
            end if;
         end if;
      else
         select 'Já cadastrado';
         rollback;
         set d_inclusao =0;
         set p_opt = 0;
      end if;
   end if;
end if;
if (p_opt = 4) then
   set d_inclusao = 4;
   select `id_pessoa`,`class_pessoa`,`tp_pessoa`
     into d_idpessoa,d_classe,d_tppessoa
     from pessoa
    where id_empresa=p_idempresa
      and cnpj_cpf=d_cnpjcpf;
   if (d_tppessoa = 3) then
      delete from `prestacao_servico` where `id_pessoa` = d_idpessoa;
   else
      if (d_tppessoa = 4) then
         delete from `funcionario` where `id_pessoa` = d_idpessoa;
      end if;
   end if;
   if (d_classe = p_classe) then
      if (p_classe = 1) then
         update `juridica` set
                `contato_juridica`        = upper(p_contato)
               ,`inscrestadual_juridica`  = p_inscrestadual
               ,`inscrmunicipal_juridica` = p_inscrmunicipal
               ,`data_abertura_juridica`  = d_data_abertura      
         where `id_pessoa` = d_idpessoa;
      else
         if (p_classe = 2) then
            update fisica set            
                `rg_fisica`         = p_rg_fisica
               ,`orgao_rg_fisica`   = p_orgao_rg_fisica
               ,`nascimento_fisica` = d_nascimento_fisica
               ,`ecivil_fisica`     = p_ecivil_fisica
               ,`sexo_fisica`       = p_sexo_fisica
               ,`profissao_fisica`  = upper(p_profissao_fisica)
               ,`renda_fisica`      = p_renda_fisica
            where `id_pessoa` = d_idpessoa;
         end if;
      end if;
   else
      if (p_classe = 1) then
      -- conforme o valor do p_classe deletar o registro ao contrario
      -- excluir a fisica e cadastrar a juridica
         delete from fisica where id_pessoa = d_idpessoa;
         INSERT INTO `juridica`
               (`id_pessoa`
               ,`contato_juridica`
               ,`inscrestadual_juridica`
               ,`inscrmunicipal_juridica`
               ,`data_abertura_juridica`)
         VALUES (d_idpessoa
               ,upper(p_contato)
               ,p_inscrestadual
               ,p_inscrmunicipal
               ,d_data_abertura);      
      else
      -- excluir a juridica e cadastrar a fisica
         delete from juridica where id_pessoa = d_idpessoa;
         INSERT INTO `fisica`
               (`id_pessoa`
               ,`rg_fisica`
               ,`orgao_rg_fisica`
               ,`nascimento_fisica`
               ,`ecivil_fisica`
               ,`sexo_fisica`
               ,`profissao_fisica`
               ,`renda_fisica`)
         VALUES
               (d_idpessoa
               ,p_rg_fisica
               ,p_orgao_rg_fisica
               ,d_nascimento_fisica
               ,p_ecivil_fisica
               ,p_sexo_fisica
               ,upper(p_profissao_fisica)
               ,p_renda_fisica);                                  
      end if;
   end if; 
   update pessoa set
       `nome`          = upper(p_nome)
      ,`nome_fantasia` = upper(p_nomefantasia)
      ,`tp_pessoa`     = p_tppessoa
      ,`class_pessoa`  = p_classe
      ,`status`        = p_status
      ,`id_atividades` = p_id_atividades
      ,`data_inicio`   = d_data_inicio
   where `id_pessoa` = d_idpessoa;
end if;              
if (p_opt = 5) then
   select id_pessoa into d_idpessoa from pessoa where id_empresa=p_idempresa and cnpj_cpf=d_cnpjcpf;
   delete from pessoa where id_pessoa = d_idpessoa;
   set d_inclusao = 0;
end if;

if (d_inclusao = 1) then
   if (d_idpessoa > 0) then
      if (p_tppessoa = 3) then
         INSERT INTO `prestacao_servico`
            (`id_pessoa`
            ,`prestacao_servico`)
         VALUES
            (d_idpessoa
            ,upper(p_prestacao_servico));            
      end if;
      if (p_tppessoa = 4) then
         INSERT INTO `funcionario`
            (`id_pessoa`
            ,`id_departamento`
            ,`funcao_funcionario`
            ,`login_funcionario`
            ,`senha_funcionario`
            ,`admissao_funcionario`
            ,`acesso_total`
            ,`id_matricula`)
         VALUES
            (d_idpessoa
            ,p_id_departamento
            ,upper(p_funcao_funcionario)
            ,upper(p_login_funcionario)
            ,upper(p_senha_funcionario)
            ,d_admissao_funcionario
            ,p_acesso_total
            ,p_id_matricula);           
      end if;
      INSERT INTO `endereco`
         (`id_pessoa`
         ,`logradouro_endereco`
         ,`complemento_endereco`
         ,`numero_endereco`
         ,`cep_endereco`
         ,`bairro_endereco`
         ,`cidade_endereco`
         ,`uf_endereco`
         ,`tipo_endereco`)
      VALUES
         (d_idpessoa
         ,upper(p_logradouro_endereco)
         ,upper(p_complemento_endereco)
         ,p_numero_endereco
         ,p_cep_endereco
         ,upper(p_bairro_endereco)
         ,upper(p_cidade_endereco)
         ,upper(p_uf_endereco)
         ,p_tipo_endereco);
      INSERT INTO `telefone`
         (`id_pessoa`
         ,`numero_telefone`
         ,`tipo_telefone`)
      VALUES
         (d_idpessoa
         ,p_numero_telefone
         ,p_tipo_telefone);
      INSERT INTO `email`
         (`id_pessoa`
         ,`email`
         ,`site`)
      VALUES
         (d_idpessoa
         ,p_email
         ,p_site);
   end if;
end if;
if (d_inclusao = 4) then
   if (p_tppessoa = 3) then
      INSERT INTO `prestacao_servico`
         (`id_pessoa`
         ,`prestacao_servico`)
      VALUES
         (d_idpessoa
         ,upper(p_prestacao_servico));            
   end if;
   if (p_tppessoa = 4) then
      INSERT INTO `funcionario`
         (`id_pessoa`
         ,`id_departamento`
         ,`funcao_funcionario`
         ,`login_funcionario`
         ,`senha_funcionario`
         ,`admissao_funcionario`
         ,`acesso_total`
         ,`id_matricula`)
      VALUES
         (d_idpessoa
         ,p_id_departamento
         ,upper(p_funcao_funcionario)
         ,upper(p_login_funcionario)
         ,upper(p_senha_funcionario)
         ,d_admissao_funcionario
         ,p_acesso_total
         ,p_id_matricula);           
   end if;
   update `endereco` set
         `logradouro_endereco`   = upper(p_logradouro_endereco) 
         ,`complemento_endereco` = upper(p_complemento_endereco)
         ,`numero_endereco`      = p_numero_endereco
         ,`cep_endereco`         = p_cep_endereco
         ,`bairro_endereco`      = upper(p_bairro_endereco)
         ,`cidade_endereco`      = upper(p_cidade_endereco)
         ,`uf_endereco`          = upper(p_uf_endereco)
         ,`tipo_endereco`        = p_tipo_endereco
   where `id_pessoa` = d_idpessoa;
   update `telefone` set
          `numero_telefone` = p_numero_telefone 
         ,`tipo_telefone`   = p_tipo_telefone
   where `id_pessoa` = d_idpessoa;
   update `email` set 
          `email` = p_email 
         ,`site`  = p_site
   where `id_pessoa` = d_idpessoa;
end if;

if (`_rollback`=1) then
   rollback;
else
   commit;
end if;

end$$

DELIMITER ;
