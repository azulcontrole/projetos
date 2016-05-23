package br.com.azulcontrole.persistencia.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.com.azulcontrole.persistencia.storeprocedure.PessoaProc;

public class PessoaProcDAO {
	
	private Connection con = ConexaoFactory.getConnection();

	public void chamaProcedure(PessoaProc pessoaproc) {
		String sql = "{call classPessoa_proc(?, ?, ?, ?, ?, ?, ?, ?, ?,"
			    	+ " ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,"
			    	+ " ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
		try (PreparedStatement stmt = con.prepareStatement(sql)){
			stmt.setInt     (1, pessoaproc.getpOpt());
			stmt.setInt     (2, pessoaproc.getpRet());
			stmt.setInt     (3, pessoaproc.getpIdempresa());
		    stmt.setString  (4, pessoaproc.getpCnpjCpf());
		    stmt.setInt     (5, pessoaproc.getpTpPessoa());
			stmt.setInt     (6, pessoaproc.getpClasse());
			stmt.setString  (7, pessoaproc.getpNome());
			stmt.setString  (8, pessoaproc.getpNomeFantasia());
			stmt.setInt     (9, pessoaproc.getpStatus());
			stmt.setString  (10, pessoaproc.getpContato());
			stmt.setString  (11, pessoaproc.getpInscrEstadual());
			stmt.setString  (12, pessoaproc.getpInscrMunicipal());
			stmt.setString  (13, pessoaproc.getpNumeroTelefone());
			stmt.setInt     (14, pessoaproc.getpTipoTelefone());
			stmt.setString  (15, pessoaproc.getpEmail());
			stmt.setString  (16, pessoaproc.getpSite());
			stmt.setString  (17, pessoaproc.getpLogradouroEndereco());
			stmt.setString  (18, pessoaproc.getpComplementoEndereco());
			stmt.setString  (19, pessoaproc.getpNumeroEndereco());
			stmt.setString  (20, pessoaproc.getpCepEndereco());
			stmt.setString  (21, pessoaproc.getpBairroEndereco());
			stmt.setString  (22, pessoaproc.getpCidadeEndereco());
			stmt.setString  (23, pessoaproc.getpUfEndereco());
			stmt.setInt     (24, pessoaproc.getpTipoEndereco());
			stmt.setString  (25, pessoaproc.getpRgFisica());
			stmt.setString  (26, pessoaproc.getpOrgaoRgFisica());
			stmt.setString  (27, pessoaproc.getpNascimentoFisica());
			stmt.setInt     (28, pessoaproc.getpEcivilFisica());
			stmt.setInt     (29, pessoaproc.getpSexoFisica());
			stmt.setString  (30, pessoaproc.getpProfissaoFisica());
			stmt.setInt     (31, pessoaproc.getpIdAtividades());
			stmt.setString  (32, pessoaproc.getpDataInicio());
			stmt.setDouble  (33, pessoaproc.getpRendaFisica());
			stmt.setString  (34, pessoaproc.getpPrestacaoServico());
			stmt.setInt     (35, pessoaproc.getpIdDepartamento());
			stmt.setString  (36, pessoaproc.getpFuncaoFuncionario());
			stmt.setString  (37, pessoaproc.getpLoginFuncionario());
			stmt.setString  (38, pessoaproc.getpSenhaFuncionario());
			stmt.setString  (39, pessoaproc.getpAdmissaoFuncionario());
			stmt.setString  (40, pessoaproc.getpDataAbertura());
			stmt.setInt     (41, pessoaproc.getpIdMatricula());
			stmt.setString  (42, pessoaproc.getpAcessoTotal());

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
