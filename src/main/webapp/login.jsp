<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sistema de Login</title>
<link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/signin.css" rel="stylesheet">
</head>

<body>
	<div class="container">
		<form class="form-signin" method="post" action="autenticador.do">
			<p class="title form-signin-heading">Entre com o Nome do Usuário</p>
			<label for="login" class="sr-only">Login</label> 
			<input type="text" id="login"
			       name="login" 
			       class="form-control"
			       placeholder="Usuário" 
			       required autofocus> 
			<label for="senha" class="sr-only">Senha</label> 
			<input type="password" id="senha"
			       name="senha" 
			       class="form-control"
				   placeholder="Senha" 
				   required>
			<button class="btn btn-lg btn-primary btn-block" type="submit" value="Autenticar">Acessar</button>
		</form>
	</div>
	<!-- /container -->
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
