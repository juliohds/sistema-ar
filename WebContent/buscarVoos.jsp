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
		<div class="col-md-10 offset-md-2">
		
			<c:if test="${voos != null}">
				<h1>Meus Voos</h1>
				
				<table class="table">
				  <thead class="thead-dark">
				    <tr>
				      <th scope="col">Origem</th>
				      <th scope="col">Destino</th>
				      <th scope="col">Data de Partida</th>
				      <th scope="col">Data de Volta</th>
				      <th scope="col">Valor</th>
				      <th scope="col">Opções</th>
				    </tr>
				  </thead>				  
												
					<tbody>
				<c:forEach var="voos" items="${voos}">	        					 				  					
				    <tr>
				      <td>${voos.voo.origem}</td>
				      <td>${voos.voo.destino}</td>
				      <td>${voos.voo.dataPartida}</td>
				      <td>${voos.voo.dataChegadaPrevista}</td>
				      <td>${voos.voo.precoPorTrecho}</td>
				      <td>
				      <a type="button" href="listaVoos.jsp" class="btn btn-primary">Buscar Mais Voos</a>
				      
				      </td>
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