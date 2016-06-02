<%@ page import="br.com.azulcontrole.persistencia.entidade.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->

</head>
<body>
	<%
		Usuario u = (Usuario) request.getAttribute("usu");
	%>
	<form action="usucontroller.do" method="post">
		<div>
			<span>ID:</span> <input type="number" name="id" value="<%=u.getId()%>" />
		</div>
		<div>
			<span>Nome:</span> <input type="text" name="nome" value="<%=u.getName()%>" />
		</div>
		<div>
			<span>Login:</span> <input type="text" name="login" value="<%=u.getLogin()%>" />
		</div>
		<div>
			<span>Senha:</span> <input type="text" name="senha" value="<%=u.getSenha()%>" />
		</div>
		<div>
			<input type="submit" value="Salvar" />
		</div>
	</form>

</body>
</html>