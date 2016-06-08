package br.com.azulcontrole.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/empresaspcontroller.do")
public class EmpresaSPController extends HttpServlet {
	
	public EmpresaSPController(){
		
		System.out.println("construtor!!");
		
	}
	public void init() throws ServletException {
		super.init();
		
	}
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		String acao = req.getParameter("acao");
		if (acao.equals("lis")){
			
		}
		
	}
	
}
