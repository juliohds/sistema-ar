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
			<div class="col-md-1" style="color: white; padding: 5px; background-color: black; position: fixed; width: 500px; right: 0; top: 0; min-width: 200px; min-height: 100%;">
			</div>
		    <div class="col-lg-12 col-md-12 mx-auto text-center" style="background-color: black; color: white; width: 120%">Buscar Viagens</div>
			<div class="col-md-10">
				<div class="row">
				<h1 class="text-center" style="margin: auto">Bem vindo ${sessionScope.cliente.nome}</h1>
				<form method="post" action="Voo?acao=pesquisar" style="width: 100%;">
					<div class="container" style="display: inline-flex; padding: 20px; margin-left: 100px;">		          	 
		          	<div class="col-lg-6 col-md-6 mx-auto">	  
		             <div class="form-group">
					    <label for="exampleSelect1">Origem</label>
					    <select class="form-control" id="ida" name="ida">
					     <option>Manaus</option>
					  <option>Aracaju</option>
					      <option>Manaus</option>
					  <option>Belo Horizonte</option>
					  <option>Belém</option>
					  <option>Curitiba</option>
					  <option>João Pessoa</option>
					  <option>Rio Branco</option>
					  <option>Vitória</option>
					  <option>Porto Velho</option>
					  <option>Luís</option>
					  <option>Porto Alegre</option>
					  <option>Brasília</option>
					  <option>Campo Grande</option>
					  <option>Florianópolis</option>
					  <option>Boa Vista</option>
					  <option>Rio de Janeiro</option>
					  <option>Maceió</option>
					  <option>Macapá</option>
					  <option>Recife</option>
					  <option>Goiânia</option>						     				      
					    </select>			            	
					 </div>          
			        </div>
			        <div class="col-lg-6 col-md-6 mx-auto">	  
		             <div class="form-group">
						<label for="example-date-input">Partida</label>
	    				<input class="form-control" type="date" value="2018-07-23" id="data_ida" name="data_ida">			            	
					 </div>          
			        </div>				       
			        </div>
			        <button class="btn btn-primary" style="position: fixed; right: 60px; top: 70px;" type="submit"> &nbspBuscar &nbsp Voos </button>			        
			        <a class="btn btn-danger" style="position: fixed; right: 60px; top: 140px;" href="listaVoos.jsp">Limpar Busca</a>
		         </div>
		         <div class="row">
					<div class="container" style="display: inline-flex; margin-left: 100px;">
		          	<div class="col-lg-6 col-md-6 mx-auto">	  
		             <div class="form-group">
					    <label for="exampleSelect1">Destino</label>
					    <select class="form-control" id="destino" name="destino" style="width: 433px">
					      <option>Manaus</option>
						  <option>Aracaju</option>
						  <option>Belo Horizonte</option>
						  <option>Belém</option>
						  <option>Curitiba</option>
						  <option>João Pessoa</option>
						  <option>Rio Branco</option>
						  <option>Vitória</option>
						  <option>Porto Velho</option>
						  <option>Luís</option>
						  <option>Porto Alegre</option>
						  <option>Brasília</option>
						  <option>Campo Grande</option>
						  <option>Florianópolis</option>
						  <option>Boa Vista</option>
						  <option>Rio de Janeiro</option>
						  <option>Maceió</option>
						  <option>Macapá</option>
						  <option>Recife</option>
						  <option>Goiânia</option>					     				      
					    </select>			            	
					 </div>          
			        </div>
			        <div class="col-lg-6 col-md-6 mx-auto" style="margin-left: 0px !important">	  
		             <div class="form-group">
						<label for="example-date-input">Partida</label>
	    				<input class="form-control" type="date" value="2018-07-23"  style="width: 425px" id="data_volta" name="data_volta">			            	
					 </div>          
			        </div>				       
			        </div>
		         </div>
	        </form>
       	      <hr style="width: 1100px"> 
	        <div class="row">
	        	<div class="container" style="display: inline-flex; padding: 20px;">
	        		<c:if test="${vi != null}">			
	        			<h1>IDA</h1>
	        		</c:if>
	        		<c:forEach var="voo" items="${vi}">
	        		  <img src="https://image.flaticon.com/icons/svg/67/67076.svg" width="100" style="position: absolute; right: -160px; border: 5px solid;" alt="...">
	        		  <div class="col-md-3" style="">
						<br><br>						  						
						Numero: <h6>${voo.numero}</h6>							
						Fileiras: <h6>${voo.fileiras}</h6>
						Preço: <h6>${voo.precoPorTrecho}</h6>					 						  					
					  </div>
					  <div class="col-md-3" style="">
						<br><br>						  						
						Origem: <h6>${voo.origem}</h6>							
						Destino: <h6>${voo.destino}</h6>			 						  					
					  </div>
					  <div class="col-md-3" style="">
						<br><br>						  						
						Data Partida: <h6>${voo.dataPartida}</h6>
						Hora Partida: <h6>${voo.horaPartida}</h6>											 						  					
					  </div>											  
				      <div class="col-md-3" style="">
						<br><br>						  						
						Data Chegada: <h6>${voo.dataChegadaPrevista}</h6>
						Hora Chegada: <h6>${voo.horaChegadaPrevista}</h6>	
						
						<c:if test="${sessionScope.cliente != null}">			
	        				<a href="Voo?acao=comprar&id=${voo.id}" class="btn btn-primary">
							  Comprar <span class="badge badge-light">R$ ${voo.precoPorTrecho}</span>
							</a>
	        			</c:if>			
	        			<c:if test="${sessionScope.cliente == null}">			
						<a href="loginUsuario.jsp" class="btn btn-primary">
						  Comprar <span class="badge badge-light">R$ ${voo.precoPorTrecho}</span>
						</a>	
						</c:if>					 						  					
					  </div>			
					</c:forEach>
	        				       
	        				       
	        		
	       		</div>
	        </div>
	        <hr style="width: 1100px"> 
	        <div class="row">
	        	<div class="container" style="display: inline-flex; padding: 20px;">
	        		<c:if test="${vv != null}">			
	        			<h1>VOLTA</h1>
	        		</c:if>	
	        		<c:forEach var="volta" items="${vv}">	
	        		<img src="https://image.flaticon.com/icons/svg/67/67076.svg" width="100" style="transform: rotate(180deg); margin-top: -9px; position: absolute; right: -160px; border: 5px solid;" alt="...">				
					  <div class="col-md-3" style="">
						<br><br>						  						
						Numero: <h6>${volta.numero}</h6>							
						Fileiras: <h6>${volta.fileiras}</h6>
						Preço: <h6>${volta.precoPorTrecho}</h6>					 						  					
					  </div>
					  <div class="col-md-3" style="">
						<br><br>						  						
						Origem: <h6>${volta.origem}</h6>							
						Destino: <h6>${volta.destino}</h6>			 						  					
					  </div>
					  <div class="col-md-3" style="">
						<br><br>						  						
						Data Partida: <h6>${volta.dataPartida}</h6>
						Hora Partida: <h6>${volta.horaPartida}</h6>											 						  					
					  </div>											  
				      <div class="col-md-3" style="">
						<br><br>						  						
						Data Chegada: <h6>${volta.dataChegadaPrevista}</h6>
						Hora Chegada: <h6>${volta.horaChegadaPrevista}</h6>							
						<c:if test="${sessionScope.cliente != null}">			
	        				<a href="Voo?acao=comprar&id=${volta.id}" class="btn btn-primary">
							  Comprar <span class="badge badge-light">R$ ${volta.precoPorTrecho}</span>
							</a>
	        			</c:if>			
	        			<c:if test="${sessionScope.cliente == null}">			
						<a href="loginUsuario.jsp" class="btn btn-primary">
						  Comprar <span class="badge badge-light">R$ ${volta.precoPorTrecho}</span>
						</a>	
						</c:if>						 						  					
					  </div>							 		
					</c:forEach>	       		
	       		</div>
	        </div>
	        </div>
	     
		</div>			
	</div>
	
	 
Copy
<!-- Large modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Large modal</button>

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      ...
    </div>
  </div>
</div>

<%@ include file="modal.jsp" %>
</body>
</html>