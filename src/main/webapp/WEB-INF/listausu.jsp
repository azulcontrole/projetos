<%@ page import="br.com.azulcontrole.persistencia.entidade.Usuario"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>AzulControle Menu</title>
    <link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath()%>/resources/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/theme.css" rel="stylesheet">
<script type="text/javascript">
function confirmaExclusao(id){
	if (window.confirm('Tem certeza que deseja excluir?')){
		location.href="usucontroller.do?acao=exc&id="+id;
	}
		
}

</script>
</head>
  <body role="document">
	<%
		List<Usuario> lista = (List<Usuario>) request.getAttribute("lista");
	%>
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
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

	<div class="container theme-showcase" role="main">
		<div class="row">
			<div class="col-lg-4 ">
				<ul class="breadcrumb">
					<li><i class="fa fa-home"></i><a href="usucontroller.do?acao=men"> Home</a></li>
					<li class="active">Lista Usuários</li>
				</ul>
			</div>
		</div>
		<div class="col-sm-2">
			<h5>
     		   <a href="usucontroller.do?acao=cad" title="Incluir" class="btn btn-block btn-lg btn-primary">Novo</a>
			</h5>
		</div>
		<table class="table table-condensed">
			<tr>
				<th>id</th>
				<th>Nome</th>
				<th>Ação</th>
			</tr>
			<%
				for (Usuario u : lista) {
			%>
			<tr>
				<td>
					<%
						out.print(u.getId());
					%>
				</td>
				<td><%=u.getName()%></td>
				<td><a href="javascript:confirmaExclusao(<%=u.getId()%>)" title="Excluir" class="btn btn-danger">excluir</a>
  				   <a href="usucontroller.do?acao=alt&id=<%=u.getId()%>" title="Edit" class="btn btn-primary">alterar</a></td>
			</tr>
			<%
				}
			%>
		</table>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="<%=request.getContextPath()%>/resources/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>