<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="lib.jsp" %>
</head>
<body style="background-image: url('https://images5.alphacoders.com/650/650641.jpg');">
	<div class="row" style="margin-top: 150px;">
      <div class="col-lg-6 col-md-6 mx-auto">
		<form action="Cliente?acao=logar" method="POST">
		  <div class="form-group">
		   <h1>Login </h1>
		    <label for="exampleInputEmail1">CPF</label>
		    <input type="text" class="form-control" id="cpf" name="cpf" aria-describedby="emailHelp" placeholder="Entre com seu CPF">
		    <small  class="form-text text-muted">nunca passe sua senha para ninguem.</small>
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1">Senha</label>
		    <input type="password" id="senha" name="senha" class="form-control" placeholder="Password">
		  </div>
		   <a type="button" class="btn btn-success" href="index.jsp">Voltar</a>
		   <button type="submit" class="btn btn-primary">Entrar</button>
		   <!-- Button trigger modal -->
		   &nbsp
			<button type="button" class="btn btn-warning btn-sm" data-toggle="modal" data-target="#myModal">
			   esqueci minha senha!
			</button>
		</form>
      </div>
	</div>
	
	


<%@ include file="modal.jsp" %>

</body>
</html>