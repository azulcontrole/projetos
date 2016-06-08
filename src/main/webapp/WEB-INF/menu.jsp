<%@ page import="br.com.azulcontrole.persistencia.entidade.Usuario"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>AzulControle Menu</title>
    <link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath()%>/resources/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/theme.css" rel="stylesheet">
  </head>

  <body role="document">
	<%
	
//		List<Usuario> lista = (List<Usuario>) request.getAttribute("lista");
	%>
    <!-- Fixed navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Azul Controle</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">Sobre</a></li>
            <li><a href="#contact">Contato</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Cadastro <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li class="dropdown-header">Pessoas</li>
                <li><a href="#">Empresa</a></li>
                <li><a href="#">Cliente</a></li>
                <li><a href="#">Fornecedor</a></li>
                <li><a href="#">Prestador de Serviço</a></li>
                <li><a href="#">Colaborador</a></li>               
                <li><a href="usucontroller.do?acao=lis">Usuário</a></li>               
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">Produtos</li>
                <li><a href="#">Estoque</a></li>
                <li><a href="#">Compra</a></li>
                <li><a href="#">Vendas</a></li>
                <li><a href="#">Ordem Compra</a></li>
                <li><a href="#">Pedido de Venda</a></li>              
                <li><a href="#">Ordem de Serviço</a></li>              
                <li class="dropdown-header">Financeiro</li>
                <li><a href="#">Contas a Pagar</a></li>
                <li><a href="#">Contas a Receber</a></li>
                <li><a href="#">Caixa</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container theme-showcase" role="main">
		<div class="col-lg-4 ">
			<ul class="breadcrumb">
				<li><i class="fa fa-home active"></i><a href="#"> Home</a></li>
			</ul>
		</div>
	</div> <!-- /container -->

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="<%=request.getContextPath()%>/resources/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
