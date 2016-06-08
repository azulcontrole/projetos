package br.com.azulcontrole.persistencia.jdbc;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
//import java.util.ArrayList;
import java.util.ArrayList;
import java.util.List;

import br.com.azulcontrole.persistencia.entidade.Usuario;

public class UsuarioDAO {
	
	private Connection con = ConexaoFactory.getConnection();
/**
 * Fazer a autenticação do usuario buscando pelo login e a senha
 * @param usuConsulta
 * @return null se não existir e o objeto usuario se existir
 */
	public Usuario autenticar(Usuario usuConsulta){
		
		String sql = "Select * from users where login=? and senha=md5(?)";
		try (PreparedStatement preparador = con.prepareStatement(sql)){
			preparador.setString(1, usuConsulta.getLogin());
			preparador.setString(2, usuConsulta.getSenha());
			ResultSet resultado = preparador.executeQuery();
			if(resultado.next()){ //posicionando o cursor no primeiro registro
				Usuario usuario = new Usuario();
				usuario.setId(resultado.getInt("id"));
				usuario.setName(resultado.getString("name"));
				usuario.setLogin(resultado.getString("login"));
				usuario.setSenha(resultado.getString("senha"));
				return usuario;
			}		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
	public void cadastrar(Usuario usu){
       
		String sql = "insert into users (name,login,senha,dataCadastro) values (?,?,md5(?),?)";
		try (PreparedStatement preparador = con.prepareStatement(sql)){	
			preparador.setString(1, usu.getName());
			preparador.setString(2, usu.getLogin());
			preparador.setString(3, usu.getSenha());
			preparador.setString(4, usu.getDataCadastro());
			preparador.execute();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

	public void alterar(Usuario usu) {
		String sql = "update users set name=?,login=?,senha=md5(?) where id=?";
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
	
	public void salvar(Usuario usuario){
		if (usuario.getId()!=null && usuario.getId()!=0){
			alterar(usuario);
		}else{
			cadastrar(usuario);
		}
		
	}
	/**
	 * Busca registro pelo Id da tabela users 
	 * @param id É um inteiro que representa o numero do id do usuario 
	 * @return null quando não encontra ou um objeto usuario quando encontrar o id
	 */
	public Usuario buscarPorId(Integer id){
		
		String sql = "select * from users where id=?";
		try (PreparedStatement preparador = con.prepareStatement(sql)){	
			preparador.setInt(1, id);
			ResultSet resultado = preparador.executeQuery();
			if(resultado.next()){
				Usuario usuario = new Usuario();
				usuario.setId(resultado.getInt("id"));
				usuario.setName(resultado.getString("name"));
				usuario.setLogin(resultado.getString("login"));
				usuario.setSenha(resultado.getString("senha"));
				return usuario;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	/**
	 * Buscar todos os registros da tabela users
	 * @return uma lista com zeros elementos quando não encontrado ou 
	 * todos os registros da tabela.
	 */

	public List<Usuario> buscarTodos(){
		
		String sql = "select * from users";
		//criar uma lista para conter o resultado do select.
		List<Usuario> lista = new ArrayList<Usuario>();
		try (PreparedStatement preparador = con.prepareStatement(sql)){	
			ResultSet resultado = preparador.executeQuery();
			while(resultado.next()){
 				Usuario usuario = new Usuario();
				usuario.setId(resultado.getInt("id"));
				usuario.setName(resultado.getString("name"));
				usuario.setLogin(resultado.getString("login"));
				usuario.setSenha(resultado.getString("senha"));
				//adicionar usuario a lista criada
				lista.add(usuario);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return lista;
	}

	public void chama2Procedure(Usuario usuario) {
		String sql = "{call classUsers_proc(?, ?, ?, ?, ?, ?)}";
		try (CallableStatement stmt = con.prepareCall(sql)){
			stmt.setInt(1, usuario.getOpt());
			stmt.setInt(2, usuario.getId());
			stmt.setString(3, usuario.getName());
		    stmt.setString(4, usuario.getLogin());
		    stmt.setString(5, usuario.getSenha());
		    stmt.setString(6, usuario.getDataCadastro());
     	    stmt.execute();
     	    ResultSet rs = stmt.executeQuery();
     	    while (rs.next()) {
               System.out.println("Nome: "+rs.getString("name"));
            }
            System.out.println();
            rs.close();
            stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		
	}
	/**
	 * Esta chamada de uma procedure que grava um registro e retorna
	 * um select com todos os registros
	 * o stmt.executeQuery() executa o sql e retorna valores
	 * stmt.execute() apenas executa o sql.
	 * @param usuario
	 */
	public void chamaProcedure(Usuario usuario) {
		String sql = "{call classUsers_proc(?, ?, ?, ?, ?, ?)}";
		try (PreparedStatement stmt = con.prepareStatement(sql)){
			stmt.setInt(1, usuario.getOpt());
			stmt.setInt(2, usuario.getId());
			stmt.setString(3, usuario.getName());
		    stmt.setString(4, usuario.getLogin());
		    stmt.setString(5, usuario.getSenha());
		    stmt.setString(6, usuario.getDataCadastro());
     	    ResultSet rs = stmt.executeQuery();
     	    while (rs.next()) {
               System.out.println("Nome: "+rs.getString("name"));
            }
            System.out.println();
            rs.close();
            stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		
	}
	
}
