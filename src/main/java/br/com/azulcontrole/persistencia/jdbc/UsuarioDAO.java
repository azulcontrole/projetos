package br.com.azulcontrole.persistencia.jdbc;

import java.security.GeneralSecurityException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import br.com.azulcontrole.persistencia.entidade.Usuario;

public class UsuarioDAO {
	
	private Connection con = ConexaoFactory.getConnection();

	public void cadastrar(Usuario usu){
        
		String sql = "insert into users (name,login,senha) values (?,?,?)";
		try (PreparedStatement preparador = con.prepareStatement(sql)){	
			preparador.setString(1, usu.getName());
			preparador.setString(2, usu.getLogin());
			preparador.setString(3, usu.getSenha());
			preparador.execute();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

	public void alterar(Usuario usu) {
		String sql = "update users set name=?,login=?,senha=? where id=?";
		try (PreparedStatement preparador = con.prepareStatement(sql)){	
			preparador.setString(1, usu.getName());
			preparador.setString(2, usu.getLogin());
			preparador.setString(3, usu.getSenha());
			preparador.setInt(4, usu.getId());
			preparador.execute();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

	public void excluir(Usuario usu) {
		String sql = "delete from users where id=?";
		try (PreparedStatement preparador = con.prepareStatement(sql)){	
			preparador.setInt(1, usu.getId());
			preparador.execute();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

}
