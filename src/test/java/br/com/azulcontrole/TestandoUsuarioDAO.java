package br.com.azulcontrole;
import br.com.azulcontrole.persistencia.entidade.Usuario;
import br.com.azulcontrole.persistencia.jdbc.UsuarioDAO;

public class TestandoUsuarioDAO {

	public static void main(String[] args) {
		//testExcluir();
		testSalvar();

	}

	public static void testExcluir(){
		Usuario usu = new Usuario();
		usu.setId(5);
		
		UsuarioDAO usuDAO = new UsuarioDAO();
		usuDAO.excluir(usu);
		
		System.out.println("Excluido com sucesso");
	}
	
	public static void testAlterar(){
		Usuario usu = new Usuario();
		usu.setId(4);
		usu.setName("CLAUDEMIR");
		usu.setLogin("CLAU123");
		usu.setSenha("1420");
		
		UsuarioDAO usuDAO = new UsuarioDAO();
		usuDAO.alterar(usu);
		
		System.out.println("Alterado com sucesso");
	}
	
	public static void testCadastrar(){
		Usuario usu = new Usuario();
		usu.setName("nome22");
		usu.setLogin("login22");
		usu.setSenha("12322");
		
		UsuarioDAO usuDAO = new UsuarioDAO();
		usuDAO.cadastrar(usu);
		
		System.out.println("Cadastrado com sucesso");

	}
	
	public static void testSalvar(){
		Usuario usuario = new Usuario();
//		usuario.setId(1);
		usuario.setName("Teste salvar2 cadastro");
		usuario.setLogin("loginCadastro");
		usuario.setSenha("cad1");
		
		UsuarioDAO usuDAO = new UsuarioDAO();
		usuDAO.salvar(usuario);
		
		System.out.println("Salvo com sucesso");
		
	}

}
