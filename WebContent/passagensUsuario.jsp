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
				<c:if test="${sessionScope.cliente != null}"><a href="buscarVoos.jsp">Minhas Passagens</a><br /></c:if>				
				<c:if test="${sessionScope.cliente != null}"><a href="Cliente?acao=dadosUsuario">Meus Dados</a><br /></c:if>
				<c:if test="${sessionScope.cliente != null}"><a href="#" data-toggle="modal" data-target="#myModal">Alterar Senha</a><br /></c:if>
				<c:if test="${sessionScope.cliente != null}"><a href="Cliente?acao=sair">Sair</a><br /></c:if>
				<c:if test="${sessionScope.cliente == null}"><a href="Cliente?acao=login">Login</a><br /></c:if>
			</div>
	     
		</div>			
	</div>
	<div class="row">
		<div class="col-md-6 offset-md-3">
			<c:if test="${vooUser != null}">
				<table class="table">
				  <thead class="thead-dark">
				    <tr>
				      <th scope="col">Origem</th>
				      <th scope="col">Destino</th>
				      <th scope="col">ida</th>
				      <th scope="col">chegada</th>
				    </tr>
				  </thead>
	        		  			
				  <tbody>
				  <c:forEach var="vooUser" items="${vooUser}">
				    <tr>
				      <th scope="row">${vooUser.origem}</th>
				      <td>${vooUser.destino}</td>
				      <td>${vooUser.horaSaida}</td>
				      <td>${vooUser.horaChegada}</td>
				    </tr>
				    
				  </c:forEach>
				  </tbody>
				</table>	
				
			</c:if>	
		</div>
	</div>
	
<%@ include file="modal.jsp" %>
</body>
</html>