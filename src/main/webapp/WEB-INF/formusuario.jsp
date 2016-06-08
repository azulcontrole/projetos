<%@ page import="br.com.azulcontrole.persistencia.entidade.Usuario"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
	<title>Azul Controle</title>
	<meta charset="UTF-8">
	<!-- CSS -->
	<link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<!-- <link href="<%=request.getContextPath()%>/resources/css/my-custom-styles.css" rel="stylesheet" type="text/css">-->
    <link href="<%=request.getContextPath()%>/resources/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/theme.css" rel="stylesheet">
</head>

<body class="form-layouts" role="document">
	<%
		Usuario u = (Usuario) request.getAttribute("usu");
	%>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" 
                  class="navbar-toggle collapsed" 
                  data-toggle="collapse" 
                  data-target="#navbar" 
                  aria-expanded="false" 
                  aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Azul Controle</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

	<div class="wrapper">
		<div class="bottom">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 ">
						<ul class="breadcrumb">
							<li><i class="fa fa-home"></i>
							    <a href="usucontroller.do?acao=men"> Home</a></li>
							<li><a href="usucontroller.do?acao=lis">Lista Usuário</a></li>
							<%
							String editar = null;
							if(u.getId()==0){
								editar="Novo";
							} else {
								editar="Editar";
							}
							%>
							<li class="active"><%=editar %></li>
						</ul>
					</div>
					<div class="col-md-10 content-wrapper">
						<div class="content">
							<div class="main-content">
								<div class="row">
									<div class="col-md-6">
										<div class="widget">
											<div class="widget-header">
												<h3>
													<i class="fa fa-edit"></i> <%=editar %> Cadastro de Usuário
												</h3>
											</div>
											<div class="widget-content">
												<form class="form-horizontal" role="form"
													action="usucontroller.do" method="post">
													<div class="form-group">
														<label for="nome" class="control-label sr-only">Nome</label>
														<div class="col-sm-12">
															<div class="input-group">
																<input type="number" class="form-control" id="id"
																	name="id" placeholder="Id" value="<%=u.getId()%>"
																	readonly="readonly"> <span
																	class="input-group-addon"><i
																	class="fa fa-wrench"></i></span>
															</div>
														</div>
													</div>
													<div class="form-group">
														<label for="nome" class="control-label sr-only">Nome</label>
														<div class="col-sm-12">
															<div class="input-group">
																<input type="text" class="form-control" id="nome"
																	name="nome" placeholder="Nome" value="<%=u.getName()%>">
																<span class="input-group-addon"><i
																	class="fa fa-user-plus"></i></span>
															</div>
														</div>
													</div>
													<div class="form-group">
														<label for="login" class="control-label sr-only">Login</label>
														<div class="col-sm-12">
															<div class="input-group">
																<input type="text" class="form-control" id="login"
																	name="login" placeholder="Login"
																	value="<%=u.getLogin()%>"> <span
																	class="input-group-addon"><i
																	class="fa fa-ellipsis-h"></i></span>
															</div>
														</div>
													</div>
													<div class="form-group">
														<label for="senha" class="control-label sr-only">Senha</label>
														<div class="col-sm-12">
															<div class="input-group">
																<input type="password" class="form-control" id="senha"
																	name="senha" placeholder="Senha"
																	value="<%=u.getSenha()%>"> <span
																	class="input-group-addon"><i class="fa fa-lock"></i></span>
															</div>
														</div>
													</div>
													<div class="form-group">
														<div class="col-sm-12">
															<button type="submit" class="btn btn-primary">
																<i class="fa fa-check-circle"></i> Salvar
															</button>
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Javascript -->
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery/jquery-2.1.0.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/bootstrap.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/modernizr/modernizr.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/king-common.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/plugins/bootstrap-multiselect/bootstrap-multiselect.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/king-form-layouts.js"></script>
</body>

</html>

