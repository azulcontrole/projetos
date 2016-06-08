package br.com.azulcontrole.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.azulcontrole.persistencia.entidade.Usuario;
import br.com.azulcontrole.persistencia.jdbc.UsuarioDAO;

@WebServlet("/autenticador.do")
public class AutenticadorController extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		String login = req.getParameter("login");
		String senha = req.getParameter("senha");
		
		Usuario usuario = new Usuario();
		usuario.setLogin(login);
		usuario.setSenha(senha);
		
		UsuarioDAO usuariodao = new UsuarioDAO();
		Usuario usuAutenticado = usuariodao.autenticar(usuario);
		
		if (usuAutenticado!=null){
			
			HttpSession sessao = req.getSession();
			sessao.setAttribute("usuAutenticado", usuAutenticado);
			sessao.setMaxInactiveInterval(60*5);
			//req.getRequestDispatcher("WEB-INF/index.jsp").forward(req, resp);
			req.getRequestDispatcher("WEB-INF/menu.jsp").forward(req, resp);			
		} else {
			resp.getWriter().print("<script> window.alert ('Nao Encontrado'); "
					+ "location.href='login.jsp'</script>");
		}
	}

}
