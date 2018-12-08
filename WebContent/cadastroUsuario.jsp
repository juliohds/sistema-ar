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
	<div class="row" style="margin-top: 50px;">	  
      <div class="col-lg-6 col-md-6 mx-auto">
		<form method="post" action="Cliente?acao=novo">
		  <div class="form-group">
		  <h1>Cadastre-se </h1>
		    <label for="exampleInputPassword1" style="color: white;">Nome</label>
		    <input type="text" class="form-control" id="nome" name="nome" placeholder="Nome">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1" style="color: white;">Telefone</label>
		    <input type="text" class="form-control" id="telefone" name="telefone" placeholder="Telefone (11)-99999-9990">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1" style="color: white;">Endereco</label>
		    <input type="text" class="form-control" id="endereco" name="endereco" placeholder="Endereco">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1" style="color: white;">RG</label>
		    <input type="text" class="form-control"  id="rg" name="rg" placeholder="RG">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1" style="color: white;">CPF</label>
		    <input type="text" class="form-control" id="cpf" name="cpf" placeholder="CPF">
		  </div>
		  <div class="form-group">		  
		    <label for="exampleInputEmail1" style="color: white;">Email</label>
		    <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp" placeholder="Email">
		    <small id="emailHelp" class="form-text text-muted" style="color: white;">Nunca divulgue sua senha para ninguem.</small>
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1" style="color: white;">Senha</label>
		    <input type="password" class="form-control"  id="senha" name="senha" placeholder="Senha">
		  </div>
		   <a type="button" class="btn btn-success" href="index.jsp">Voltar</a>
		   <button type="submit" class="btn btn-primary">Registrar</button>
		</form>
      </div>
	</div>
</body>
</html>