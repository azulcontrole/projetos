USE `azul_erp`;
DROP procedure IF EXISTS `classPessoa_proc`;

DELIMITER $$
USE `azul_erp`$$
CREATE PROCEDURE `classPessoa_proc`(
-- {identificação
  in p_opt int(1),
  in p_ret int(1),
  in p_idempresa int(11),
  in p_cnpjcpf varchar(20),
  in p_classe int(1),
  in p_nome varchar(100),
  in p_nomefantasia varchar(45),
  in p_tppessoa int(2),
  in p_status int(1), 
  in p_classe int(1),
  in p_contato varchar(50),
  in p_inscrestadual varchar(20),
  in p_inscrmunicipal varchar(20),
  in p_numero_telefone varchar(20),
  in p_tipo_telefone INT(1),
  in p_email varchar(100),
  IN p_site  varchar(100),
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
  in p_sexo_fisica   int(1)   
  in p_profissao_fisica varchar(40),
  in p_id_atividades  int(11),
  in p_data_inicio varchar(10),
  in p_renda_fisica double(11,2),
-- }
  in p_empresa_cliente varchar(50),
  in p_foneempresa_cliente varchar(20),
  in p_tipo_cliente char(1),
  in p_cnpj_cliente varchar(20),
  in p_referencia_cliente varchar(50),
  in p_fone_referencia_cliente varchar(20),
 )
begin
  -- p_tppessoa = 1 cliente, 2 fornecedor, 3 prestador de serviço,4 - funcionario
  -- tipo_cliente 1 = juridica 2 = fisica
  -- se 1 tem cpf, se 2 tem cnpj--
  -- ecivil_cliente'1=solteiro(a),2=casado(a),3=eparado(a),4=divorciado(a),5=viuvo(a)\n',
  -- sexo_cliente'1=maculino, 2 = feminino',
  --
  declare d_idempresa int(11);
  declare d_cnpjcpf varchar(20);
  declare d_nome varchar(100);
  declare d_nomefantasia varchar(45);
  declare d_tppessoa int(2);
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
  start transaction;
--
  set d_opt=0;
  set d_cod_cliente=0;
  set d_idpessoa=0;
  set bresult = false;
-- p_classe = 1 - Juridica , 2 - Fisica  
  set d_cnpjcpf = (select fun_formata_cpfcnpj(p_cnpjcpf,p_classe));
  set d_countcp = (select char_length(d_cnpjcpf));
  
  if (p_opt = 1) then
     if (p_cnpjcpf != '') then
        set icount = (select count(0) from pessoa where cnpjcpf=d_cnpjcpf and idempresa=p_idempresa);
        if (icount = 0 or icount is null) then
           set d_idpessoa = 0;
           INSERT INTO `pessoa` (`id_empresa`,`cnpj_cpf`,`nome`,`nome_fantasia`,`tp_pessoa`,`status`,`class_pessoa`,`id_atividades`,`data_inicio`)
                  VALUES (p_idempresa,d_cnpjcpf,upper(p_nome),upper(p_nomefantasia),p_tppessoa,1,p_classe,p_id_atividades,p_data_inicio);      
           select id_pessoa into d_idpessoa from pessoa where idempresa=p_idempresa and cnpjcpf=d_cnpjcpf;
           if (p_classe=1) then
               INSERT INTO `juridica`(`id_pessoa`,`contato_juridica`,`inscrestadual_juridica`,`inscrmunicipal_juridica`,`data_abertura_juridica`)
                   VALUES (d_idpessoa,p_contato,p_inscrestadual,p_inscrmunicipal,p_data_abertura);
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
                        ,p_nascimento_fisica
                        ,p_ecivil_fisica
                        ,p_sexo_fisica
                        ,p_profissao_fisica
                        ,p_renda_fisica);           
           end if;

           select p.idpessoa                 c_idpessoa
                 ,p.idempresa                c_idempresa
                 ,p.cnpjcpf                  c_cnpjcpf
                 ,p.nome                     c_nome
                 ,p.tppessoa                 c_tppessoa
                 ,p.status                   c_status
                 ,cl.rg_cliente              c_rgcliente
                 ,cl.orgao_rg_cliente        c_orgaocliente
                 ,cl.nascimento_cliente      c_datanasc
                 ,cl.desde_cliente           c_desde
                 ,cl.profissao_cliente       c_profissao
                 ,cl.empresa_cliente         c_empresatrab
                 ,cl.foneempresa_cliente     c_fonetrab
                 ,cl.renda_cliente           c_renda
                 ,cl.tipo_cliente            c_tipocli
                 ,cl.cnpjtrab_cliente        c_cnpjtrab
                 ,cl.referencia_cliente      c_referenciacli
                 ,cl.fone_referencia_cliente c_fonerefercli
                 ,cl.email                   c_email
                 ,ed.logradouro_endereco     c_rua
                 ,ed.numero_endereco         c_numero
                 ,ed.cep_endereco            c_cep
                 ,ed.bairro_endereco         c_bairro
                 ,ed.cidade_endereco         c_cidade
                 ,ed.uf_endereco             c_uf
                 ,tl.numero_telefone         c_telefone
                 ,tl.tipo_telefone           c_tpfone
                 ,cl.sexo_cliente            c_sxcliente
                 ,sx.descricao_sexo          c_descsx
                 ,cl.ecivil_cliente          c_ecivil               
                 ,ec.descricao_ecivil        c_descivil
                 ,ed.complemento_endereco    c_complemento
            from pessoa p
            left join empresa      e on e.idempresa=p.idempresa
            left join cliente      cl on cl.idpessoa=p.idpessoa
            left join endereco     ed on ed.idpessoa=p.idpessoa
            left join telefone     tl on tl.idpessoa=p.idpessoa
            left join sexo         sx on sx.cod_sexo=cl.sexo_cliente
            left join estado_civil ec on ec.cod_ecivil=cl.ecivil_cliente
            where p.cnpjcpf=p_cnpjcpf;
        else
           set d_opt=9;
           set d_msg='cliente ja cadastrado';
        end if;   
     else
        set d_opt=9;
        set d_msg='falta cpf/cnpj do cliente';
     end if;
  else
     if (p_opt = 2) then
        select p.idpessoa                 c_idpessoa
              ,p.idempresa                c_idempresa
              ,p.cnpjcpf                  c_cnpjcpf
              ,p.nome                     c_nome
              ,p.tppessoa                 c_tppessoa
              ,p.status                   c_status
              ,cl.rg_cliente              c_rgcliente
              ,cl.orgao_rg_cliente        c_orgaocliente
              ,cl.nascimento_cliente      c_datanasc
              ,cl.desde_cliente           c_desde
              ,cl.profissao_cliente       c_profissao
              ,cl.empresa_cliente         c_empresatrab
              ,cl.foneempresa_cliente     c_fonetrab
              ,cl.renda_cliente           c_renda
              ,cl.tipo_cliente            c_tipocli
              ,cl.cnpjtrab_cliente        c_cnpjtrab
              ,cl.referencia_cliente      c_referenciacli
              ,cl.fone_referencia_cliente c_fonerefercli
              ,cl.email                   c_email
              ,ed.logradouro_endereco     c_rua
              ,ed.numero_endereco         c_numero
              ,ed.cep_endereco            c_cep
              ,ed.bairro_endereco         c_bairro
              ,ed.cidade_endereco         c_cidade
              ,ed.uf_endereco             c_uf
              ,tl.numero_telefone         c_telefone
              ,tl.tipo_telefone           c_tpfone
              ,cl.sexo_cliente            c_sxcliente
              ,sx.descricao_sexo          c_descsx
              ,cl.ecivil_cliente          c_ecivil               
              ,ec.descricao_ecivil        c_descivil
              ,ed.complemento_endereco    c_complemento
         from pessoa p
         left join empresa      e on e.idempresa=p.idempresa
         left join cliente      cl on cl.idpessoa=p.idpessoa
         left join endereco     ed on ed.idpessoa=p.idpessoa
         left join telefone     tl on tl.idpessoa=p.idpessoa
         left join sexo         sx on sx.cod_sexo=cl.sexo_cliente
         left join estado_civil ec on ec.cod_ecivil=cl.ecivil_cliente
         where p.cnpjcpf=p_cnpjcpf
           and p.idempresa=p_idempresa;
     else
        if (p_opt = 3) then
           select p.idpessoa                 c_idpessoa
                 ,p.idempresa                c_idempresa
                 ,p.cnpjcpf                  c_cnpjcpf
                 ,p.nome                     c_nome
                 ,p.tppessoa                 c_tppessoa
                 ,p.status                   c_status
                 ,cl.rg_cliente              c_rgcliente
                 ,cl.orgao_rg_cliente        c_orgaocliente
                 ,cl.nascimento_cliente      c_datanasc
                 ,cl.desde_cliente           c_desde
                 ,cl.profissao_cliente       c_profissao
                 ,cl.empresa_cliente         c_empresatrab
                 ,cl.foneempresa_cliente     c_fonetrab
                 ,cl.renda_cliente           c_renda
                 ,cl.tipo_cliente            c_tipocli
                 ,cl.cnpjtrab_cliente        c_cnpjtrab
                 ,cl.referencia_cliente      c_referenciacli
                 ,cl.fone_referencia_cliente c_fonerefercli
                 ,cl.email                   c_email
                 ,ed.logradouro_endereco     c_rua
                 ,ed.numero_endereco         c_numero
                 ,ed.cep_endereco            c_cep
                 ,ed.bairro_endereco         c_bairro
                 ,ed.cidade_endereco         c_cidade
                 ,ed.uf_endereco             c_uf
                 ,tl.numero_telefone         c_telefone
                 ,tl.tipo_telefone           c_tpfone
                 ,cl.sexo_cliente            c_sxcliente
                 ,sx.descricao_sexo          c_descsx
                 ,cl.ecivil_cliente          c_ecivil               
                 ,ec.descricao_ecivil        c_descivil
                 ,ed.complemento_endereco    c_complemento
           from pessoa p
           left join empresa      e on e.idempresa=p.idempresa
           left join cliente      cl on cl.idpessoa=p.idpessoa
           left join endereco     ed on ed.idpessoa=p.idpessoa
           left join telefone     tl on tl.idpessoa=p.idpessoa
           left join sexo         sx on sx.cod_sexo=cl.sexo_cliente
           left join estado_civil ec on ec.cod_ecivil=cl.ecivil_cliente
           where p.idempresa=p_idempresa
             and p.tppessoa=1
            order by p.nome;
        else
            if (p_opt = 4) then
                select idpessoa into d_idpessoa from pessoa where idempresa=p_idempresa and cnpjcpf=p_cnpjcpf;
                update pessoa set
                     nome = upper(p_nome)
                     ,nomefantasia = upper(p_nomefantasia)
                     ,tppessoa = p_tppessoa
                where idpessoa = d_idpessoa;
                update cliente set
                     rg_cliente=p_rg_cliente
                     ,orgao_rg_cliente=upper(p_orgao_rg_cliente)
                     ,nascimento_cliente=p_nascimento_cliente
                     ,sexo_cliente=p_sexo_cliente
                     ,ecivil_cliente=p_ecivil_cliente
                     ,desde_cliente=p_desde_cliente
                     ,profissao_cliente=upper(p_profissao_cliente)
                     ,empresa_cliente=upper(p_empresa_cliente)
                     ,foneempresa_cliente=p_foneempresa_cliente
                     ,cnpjtrab_cliente=p_cnpj_cliente
                     ,renda_cliente=p_renda_cliente
                     ,tipo_cliente=p_tipo_cliente
                     ,referencia_cliente=upper(p_referencia_cliente)
                     ,fone_referencia_cliente=p_fone_referencia_cliente
                     ,email=p_email
                where idpessoa = d_idpessoa;
                update endereco set
                     logradouro_endereco=upper(p_logradouro_endereco)
                     ,complemento_endereco=upper(p_complemento_endereco)
                     ,numero_endereco=p_numero_endereco
                     ,cep_endereco=p_cep_endereco
                     ,bairro_endereco=upper(p_bairro_endereco)
                     ,cidade_endereco=upper(p_cidade_endereco)
                     ,uf_endereco=upper(p_uf_endereco)
                where idpessoa = d_idpessoa;
                update telefone set 
                     numero_telefone=p_numero_telefone
                     ,tipo_telefone=p_tipo_telefone
                where idpessoa = d_idpessoa;
                select p.idpessoa                 c_idpessoa
                       ,p.idempresa                c_idempresa
                       ,p.cnpjcpf                  c_cnpjcpf
                       ,p.nome                     c_nome
                       ,p.tppessoa                 c_tppessoa
                       ,p.status                   c_status
                       ,cl.rg_cliente              c_rgcliente
                       ,cl.orgao_rg_cliente        c_orgaocliente
                       ,cl.nascimento_cliente      c_datanasc
                       ,cl.desde_cliente           c_desde
                       ,cl.profissao_cliente       c_profissao
                       ,cl.empresa_cliente         c_empresatrab
                       ,cl.foneempresa_cliente     c_fonetrab
                       ,cl.renda_cliente           c_renda
                       ,cl.tipo_cliente            c_tipocli
                       ,cl.cnpjtrab_cliente        c_cnpjtrab
                       ,cl.referencia_cliente      c_referenciacli
                       ,cl.fone_referencia_cliente c_fonerefercli
                       ,cl.email                   c_email
                       ,ed.logradouro_endereco     c_rua
                       ,ed.numero_endereco         c_numero
                       ,ed.cep_endereco            c_cep
                       ,ed.bairro_endereco         c_bairro
                       ,ed.cidade_endereco         c_cidade
                       ,ed.uf_endereco             c_uf
                       ,tl.numero_telefone         c_telefone
                       ,tl.tipo_telefone           c_tpfone
                       ,cl.sexo_cliente            c_sxcliente
                       ,sx.descricao_sexo          c_descsx
                       ,cl.ecivil_cliente          c_ecivil               
                       ,ec.descricao_ecivil        c_descivil
                       ,ed.complemento_endereco    c_complemento
                  from pessoa p
                  left join empresa      e on e.idempresa=p.idempresa
                  left join cliente      cl on cl.idpessoa=p.idpessoa
                  left join endereco     ed on ed.idpessoa=p.idpessoa
                  left join telefone     tl on tl.idpessoa=p.idpessoa
                  left join sexo         sx on sx.cod_sexo=cl.sexo_cliente
                  left join estado_civil ec on ec.cod_ecivil=cl.ecivil_cliente
                  where p.cnpjcpf=p_cnpjcpf
                    and p.idempresa=p_idempresa;
            else 
                if (p_opt = 5) then
                    select idpessoa into d_idpessoa from pessoa where idempresa=p_idempresa and cnpjcpf=p_cnpjcpf;
                    delete from pessoa where idpessoa = d_idpessoa;
                    delete from cliente where idpessoa = d_idpessoa;
                    delete from endereco where idpessoa = d_idpessoa;
                    delete from telefone where idpessoa = d_idpessoa;
                end if;
            end if;
        end if;
     end if;
  end if;
if (d_inclusao = 1) then
    if (d_idpessoa > 0) then
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
commit;
end$$

DELIMITER ;
