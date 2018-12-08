<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Agencia</title>
    
	<%@ include file="lib.jsp" %>
  </head>

  <body id="page-top">

    <%@ include file="menu.jsp" %>

    <!-- Header -->
    <header class="masthead d-flex">
      <div class="container text-center my-auto">
        <h1 class="mb-1" style="background-color: rgba(3,3,3,0.3); color: wheat;">Seja Livre - Voe</h1>
        <h3 class="mb-5">
          <em>i believe i can fly i believe i can touch the sky</em>
        </h3>
        <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Buscar Voos</a>
        <a class="btn btn-success btn-xl js-scroll-trigger" href="Cliente?acao=login">Login</a>
        <a class="btn btn-danger btn-xl js-scroll-trigger" href="Cliente?acao=cadastro">Registre-se</a>
        
      </div>
      <div class="overlay"></div>
    </header>

    <!-- About -->
    <section class="content-section bg-light" id="about";
    background-repeat: no-repeat;">
      <div class="container text-center">
      	<div class="row">
      		<div class="col-md-12">
      			<h1>
      				Escolha seu voo..
      			</h1>
      		</div>
      	</div>
        <div class="row">	
        <form method="post" action="Voo?acao=pesquisar" style="width: 100%;">
          <div class="col-lg-10 mx-auto">
            <div class="row">
	          <div class="col-lg-12 col-md-12 mx-auto">	  
	             <div class="form-group">
				    <label for="exampleSelect1">Origem</label>
				    <select class="form-control" id="ida" name="ida">				      
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
	            	<label for="example-date-input" class="col-2 col-form-label">Partida</label>
    				<input class="form-control" type="date" value="2018-07-23" id="data_ida" name="data_ida">
				  </div>          
	          </div>
	        </div>
	        <div class="row">
	          <div class="col-lg-12 col-md-12 mx-auto">
	          	<div class="form-group">
	          		<label for="exampleSelect1">Destino</label>
				    <select class="form-control" id="destino" name="destino">
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
	            	<label for="example-date-input" class="col-2 col-form-label">Volta</label>
    				<input class="form-control" type="date" value="2018-07-23" id="data_volta" name="data_volta">
	          	</div>
	          </div>
	        </div>
	        <button class="btn btn-primary" type="submit">Buscar</button>
          </div>     
        </div>
        </form>
      </div>
      <br/>
 
      <div class="row">
      		<div class="col-md-12">
      			<img alt="" src="https://2.bp.blogspot.com/-QxuVGEaiuuE/WhNRsocMBXI/AAAAAAAADJI/c3lXX3QcXTskPGtFq7wElc64N2SvtqD0gCLcBGAs/s1600/aviaozinho.png">
      		</div>
      	</div>
    </section>

    <!-- Services -->
    <section class="content-section bg-primary text-white text-center" id="services">
      <div class="container">
        <div class="content-section-heading">
          <h3 class="text-secondary mb-0">Nossos serviços</h3>
          <h2 class="mb-5">Oferecemos</h2>
        </div>
        <div class="row">
          <div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
            <span class="service-icon rounded-circle mx-auto mb-3">
              <i class="icon-screen-smartphone"></i>
            </span>
            <h4>
              <strong>Wi-fi</strong>
            </h4>
            <p class="text-faded mb-0">Todos os voos com internet!</p>
          </div>
          <div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
            <span class="service-icon rounded-circle mx-auto mb-3">
              <i class="icon-pencil"></i>
            </span>
            <h4>
              <strong>Reagendamento</strong>
            </h4>
            <p class="text-faded mb-0">Precisa remarcar? sem problemas.</p>
          </div>
          <div class="col-lg-3 col-md-6 mb-5 mb-md-0">
            <span class="service-icon rounded-circle mx-auto mb-3">
              <i class="icon-like"></i>
            </span>
            <h4>
              <strong>Qualidade</strong>
            </h4>
            <p class="text-faded mb-0">Aprovado por milhoes de usuarios           
          </div>
          <div class="col-lg-3 col-md-6">
            <span class="service-icon rounded-circle mx-auto mb-3">
              <i class="icon-mustache"></i>
            </span>
            <h4>
              <strong>Atendimento</strong>
            </h4>
            <p class="text-faded mb-0">Elegancia e Educação no atendimento</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Callout -->
    <section class="callout" style="background-image: url('https://www.comparaonline.com.br/blog/wp-content/uploads/2016/10/atraso-de-voo.png')">
      <div class="container text-center">
        <h2 class="mx-auto mb-5" style="color: white; border: 2px solid; border-color: black;">Viaje com 
          <em>Segurança</em>
          e qualidade!</h2>
        <a class="btn btn-primary js-scroll-trigger" href="#about">Buscar Voo!</a>
      </div>
    </section>

    <!-- Portfolio -->
    <section class="content-section" id="portfolio">
      <div class="container">
        <div class="content-section-heading text-center">
          <h3 class="text-secondary mb-0">Lugares</h3>
          <h2 class="mb-5">Mais Visitados</h2>
        </div>
        <div class="row no-gutters">
          <div class="col-lg-6">
            <a class="portfolio-item">
              <span class="caption">
                <span class="caption-content">
                  <h2>Internacional</h2>
                  <p class="mb-0">Visite Paris, um lindo lugar para casal!</p>
                </span>
              </span>
              <img class="img-fluid" src="http://traquo.com/wp-content/uploads/2017/11/parissunset-960x675.jpg" alt="">
            </a>
          </div>
          <div class="col-lg-6">
            <a class="portfolio-item">
              <span class="caption">
                <span class="caption-content">
                  <h2>Nacional</h2>
                  <p class="mb-0">Saiba como é uma dos mais famosos estados brasileiro</p>
                </span>
              </span>
              <img class="img-fluid" src="http://www.planaltoonline.com.br/wp-content/uploads/2018/01/WhatsApp-Image-2018-01-28-at-20.58.06-960x675.jpeg" alt="">
            </a>
          </div>
          <div class="col-lg-6">
            <a class="portfolio-item" href="#">
              <span class="caption">
                <span class="caption-content">
                  <h2>Internacional</h2>
                  <p class="mb-0">Veja de Perto a como é uma cidade que não dorme!</p>
                </span>
              </span>
              <img class="img-fluid" src="https://www.tripsavvy.com/thmb/gFx6QtNmO7OScWiDE1ToG6IPZnc=/960x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-535829219-58f528473df78ca159ce18a7.jpg" alt="">
            </a>
          </div>
          <div class="col-lg-6">
            <a class="portfolio-item" href="#">
              <span class="caption">
                <span class="caption-content">
                  <h2>Nacional</h2>
                  <p class="mb-0">Conheça um dos lugares mais lindos do Brasil.</p>
                </span>
              </span>
              <img class="img-fluid" src="https://www.turismorifaina.com.br/wp-content/uploads/2017/05/mergulho-turismo-rifaina-esporte-960x675.jpg" alt="">
            </a>
          </div>
        </div>
      </div>
    </section>

    <!-- Call to Action -->
    <section class="content-section bg-primary text-white">
      <div class="container text-center">
        <h2 class="mb-4">Aproveite e compre agora mesmo sua viagem...</h2>
        <a href="#" class="btn btn-xl btn-light mr-4">Ja sou Cadastrado!</a>
        <a href="#" class="btn btn-xl btn-dark">desejo me registrar!</a>
      </div>
    </section>

    <!-- Map -->
    <section id="contact">

    </section>

    <!-- Footer -->
    <footer class="footer text-center">
      <div class="container">
        <img src="http://transmid.usjt.br/wp-content/themes/transmid_magnus_child/img/usjt_logo.png" />
        <p class="text-muted small mb-0">Copyright &copy; Meu Site 2018 - ADSESPM-MCB1</p>
      </div>
    </footer>

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded js-scroll-trigger" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/stylish-portfolio.min.js"></script>

  </body>

</html>
