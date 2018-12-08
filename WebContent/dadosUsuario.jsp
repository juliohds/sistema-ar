<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="lib.jsp" %>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-1" style="color: white; padding: 5px; background-color: black; position: fixed; width: 500px; left: 0; top: 0; min-width: 200px; min-height: 100%;">				
				<h3>Opções</h3><br />				
				<a href="index.jsp">Home</a><br />
				<a href="listaVoos.jsp">Comprar Passagens</a><br />
				<c:if test="${sessionScope.cliente != null}"><a href="Voo?acao=minhasPassagens">Minhas Passagens</a><br /></c:if>				
				<c:if test="${sessionScope.cliente != null}"><a href="Cliente?acao=dadosUsuario">Meus Dados</a><br /></c:if>
				<c:if test="${sessionScope.cliente != null}"><a href="#" data-toggle="modal" data-target="#myModal">Alterar Senha</a><br /></c:if>
				<c:if test="${sessionScope.cliente != null}"><a href="Cliente?acao=sair">Sair</a><br /></c:if>
				<c:if test="${sessionScope.cliente == null}"><a href="Cliente?acao=login">Login</a><br /></c:if>
			</div>
	     
		</div>			
	</div>
	<div class="row">
		<div class="col-md-6 offset-md-3">
			<c:if test="${cliente != null}">
				<h1>Alterar Informações</h1>
				
				<form method="post" action="Cliente?acao=atualizar">
				  <div class="form-group">
				    <label for="exampleInputPassword1" style="color: white;">Nome</label>
				    <input type="text" class="form-control" id="nome" name="nome" value="${cliente.nome}" placeholder="Nome">
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1" style="color: white;">Telefone</label>
				    <input type="text" class="form-control" id="telefone" name="telefone" value="${cliente.telefone}"  placeholder="Telefone (11)-99999-9990">
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1" style="color: white;">Endereco</label>
				    <input type="text" class="form-control" id="endereco" name="endereco" value="${cliente.endereco}"  placeholder="Endereco">
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1" style="color: white;">RG</label>
				    <input type="text" class="form-control"  id="rg" name="rg" placeholder="RG" value="${cliente.rg}" >
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1" style="color: white;">CPF</label>
				    <input type="text" class="form-control" id="cpf" name="cpf" placeholder="CPF" value="${cliente.cpf}" >
				  </div>
				  <div class="form-group">		  
				    <label for="exampleInputEmail1" style="color: white;">Email</label>
				    <input type="email" class="form-control" id="email" value="${cliente.email}"  name="email" aria-describedby="emailHelp" placeholder="Email">
				    <small id="emailHelp" class="form-text text-muted" style="color: white;">Nunca divulgue sua senha para ninguem.</small>
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1" style="color: white;">Senha</label>
				    <input type="password" class="form-control" value="${cliente.senha}"  id="senha" name="senha" placeholder="Senha">
				  </div>
				   <a type="button" class="btn btn-success" href="index.jsp">Voltar</a>
				   <button type="submit" class="btn btn-primary">ALterar</button>
				</form>
			</c:if>	
		</div>
	</div>
	
<%@ include file="modal.jsp" %>
</body>
</html>