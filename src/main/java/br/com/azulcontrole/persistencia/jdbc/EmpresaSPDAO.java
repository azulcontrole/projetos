package br.com.azulcontrole.persistencia.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
	

}
