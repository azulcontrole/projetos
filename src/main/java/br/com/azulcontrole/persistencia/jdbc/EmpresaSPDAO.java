package br.com.azulcontrole.persistencia.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.azulcontrole.persistencia.entidade.Empresa;
import br.com.azulcontrole.persistencia.entidade.Usuario;
import br.com.azulcontrole.persistencia.storeprocedure.EmpresaSP;

public class EmpresaSPDAO {
	
	private Connection con = ConexaoFactory.getConnection();

	public void chamaProcedure(EmpresaSP empresa) {
		
		String sql = "{call classEmpresa_proc (?, ?, ?, ?, ?, ?, ?,"
				+ " ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
    	try (PreparedStatement stmt = con.prepareStatement(sql)){
		    stmt.setInt     (1, empresa.getpOpt());
		    stmt.setInt     (2, empresa.getpIdEmpresa());
		    stmt.setInt     (3, empresa.getpIdAtividade());
		    stmt.setString  (4, empresa.getpCnpjCpf());
		    stmt.setInt     (5, empresa.getpClassEmpresa());
		    stmt.setString  (6, empresa.getpRazaoSocial());
		    stmt.setString  (7, empresa.getpFantasia());
		    stmt.setString  (8, empresa.getpContato());
		    stmt.setString  (9, empresa.getpNumeroTelefone());
		    stmt.setInt     (10, empresa.getpTipoTelefone());
		    stmt.setString  (11, empresa.getpEndereco());
		    stmt.setString  (12, empresa.getpNumeroEndereco());
		    stmt.setString  (13, empresa.getpComplemento());
		    stmt.setString  (14, empresa.getpBairro());
		    stmt.setString  (15, empresa.getpCidade());
		    stmt.setString  (16, empresa.getpUf());
		    stmt.setString  (17, empresa.getpInscrEstadual());
		    stmt.setString  (18, empresa.getpInscrMunicipal());
		    stmt.setString  (19, empresa.getpCepEmpresa());
		    stmt.setString  (20, empresa.getpPais());
		    stmt.setString  (21, empresa.getpEMail());
		    stmt.setString  (22, empresa.getpSite());
		    stmt.setString  (23, empresa.getpSexo());
		    stmt.setString  (24, empresa.getpStatus());
		    ResultSet rs = stmt.executeQuery();
     	    while (rs.next()) {
               System.out.println("Mensagem "+rs.getString("mensagem"));
            }
            System.out.println();
            rs.close();
            stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		
	}
	public void listaProcedure(EmpresaSP empresa){
		String sql = "{call classEmpresa_proc (?, ?, ?, ?, ?, ?, ?,"
				+ " ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
		List<EmpresaSP> lista = new ArrayList<EmpresaSP>();
    	try (PreparedStatement stmt = con.prepareStatement(sql)){
		    stmt.setInt     (1, empresa.getpOpt());
		    stmt.setInt     (2, empresa.getpIdEmpresa());
		    stmt.setInt     (3, empresa.getpIdAtividade());
		    stmt.setString  (4, empresa.getpCnpjCpf());
		    stmt.setInt     (5, empresa.getpClassEmpresa());
		    stmt.setString  (6, empresa.getpRazaoSocial());
		    stmt.setString  (7, empresa.getpFantasia());
		    stmt.setString  (8, empresa.getpContato());
		    stmt.setString  (9, empresa.getpNumeroTelefone());
		    stmt.setInt     (10, empresa.getpTipoTelefone());
		    stmt.setString  (11, empresa.getpEndereco());
		    stmt.setString  (12, empresa.getpNumeroEndereco());
		    stmt.setString  (13, empresa.getpComplemento());
		    stmt.setString  (14, empresa.getpBairro());
		    stmt.setString  (15, empresa.getpCidade());
		    stmt.setString  (16, empresa.getpUf());
		    stmt.setString  (17, empresa.getpInscrEstadual());
		    stmt.setString  (18, empresa.getpInscrMunicipal());
		    stmt.setString  (19, empresa.getpCepEmpresa());
		    stmt.setString  (20, empresa.getpPais());
		    stmt.setString  (21, empresa.getpEMail());
		    stmt.setString  (22, empresa.getpSite());
		    stmt.setString  (23, empresa.getpSexo());
		    stmt.setString  (24, empresa.getpStatus());
		    ResultSet rs = stmt.executeQuery();
     	    while (rs.next()) {
     	    	Empresa emp = new Empresa();
     	    	emp.setIdEmpresa(rs.getInt("ID"));
     	    	emp.setIdAtividade(rs.getInt("IDATIVIDADE"));
     	    	emp.setCnpjCpf(rs.getString("CNPJ"));
     	    	emp.setRazaoSocial(rs.getString("RAZAOSOCIAL"));
     	    	emp.setFantasia(rs.getString("FANTASIA"));
     	    	emp.setContato(rs.getString("CONTATO"));
     	    	emp.setNumeroTelefone(rs.getString("TELEFONE"));
     	    	emp.setTipoTelefone(rs.getString("TPTELEFONE"));
     	    	
  /*   	    	
               `empresa`.`razao_social` ,
               `empresa`.`fantasia` ,
               `empresa`.`contato` ,
               `empresa`.`numero_telefone` ,
               `empresa`.`tipo_telefone` ,
               `empresa`.`endereco` ENDERECO,
               `empresa`.`numero_endereco` NUMERO,
               `empresa`.`complemento` COMPLEMENTO,
               `empresa`.`bairro` BAIRRO,
               `empresa`.`cidade` CIDADE,
               `empresa`.`uf` UF,
               `empresa`.`inscr_estadual` INSCRESTADUAL,
               `empresa`.`inscr_municipal` INSCRMUNICIPAL,
               `empresa`.`cep_empresa` CEPEMPRESA,
               `empresa`.`pais` PAIS,
               `empresa`.`e_mail` EMAIL,
               `empresa`.`site` SITE,
               `empresa`.`class_empresa` CLEMPRESA,
                DATE_FORMAT(`empresa`.`data_cadastro`,'%d/%m/%Y') DATACADASTRO,
                DATE_FORMAT(`empresa`.`data_alteracao`,'%d/%m/%Y') DATAALTERACAO,
               `empresa`.`sexo` SEXO,
               `empresa`.`status` STATUS
          FROM `empresa`;
*/     	    	
               System.out.println("Mensagem "+rs.getString("mensagem"));
            }
            System.out.println();
            rs.close();
            stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} 
	}
	

}
