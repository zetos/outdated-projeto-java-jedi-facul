<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="Bean.Jedi" %>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Star Wars - Arquivo Jedi</title>

<!-- Bootstrap Core CSS - Uses Bootswatch Flatly Theme: http://bootswatch.com/flatly/ -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/freelancer.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link
	href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

</head>

<body id="page-top" class="index">

	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header page-scroll">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#page-top">Star Wars</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li class="hidden"><a href="#page-top"></a></li>
					<li class="page-scroll"><a href="#listar">Arquivos Jedi</a></li>
					<li class="page-scroll"><a href="#contact">Registro</a></li>
                    <li class="page-scroll"><a href="#">Editar</a></li>
                    <li class="page-scroll"><a href="#">Excluir</a></li>
                    <li class="page-scroll"><a href="#about">Sobre</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<!-- Header -->
	<header>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<img class="img-responsive" src="img/yoda.png" alt="">
					<div class="intro-text">
						<span class="name">Star Wars</span>
						<hr class="star-primary">
						<span class="skills">Plataforma para usuarios da força.</span>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Arquivos Jedi Section -->
	<section id="listar">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2>Arquivos Jedi</h2>
					<hr class="star-primary">
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					   <!-- Lista Jedi -->

<table class="table table-striped">
<tr>
<th colspan="8"><h3>Lista de Jedis</h3></th>
</tr>
<tr>
<th>Nome</th>
<th>Espécie</th>
<th>Planeta Natal</th>
<th>Sexo</th>
<th>Idade</th>
<th>MidiChlorians</th>
<th>Status</th>
<th>Classe</th>
</tr>

 <%
 List <Jedi> lista = new ArrayList<Jedi>();
 lista = (ArrayList) request.getAttribute("JediList");
 for(Jedi a: lista ){%>
<tr>
<td><%=a.getNome()%></td>
<td><%=a.getEspecie()%></td>
<td><%=a.getPlaneta()%></td>
<td><%=a.getStatus()%></td>
<td><%=a.getSexo()%></td>
<td><%=a.getIdade()%></td>
<td><%=a.getMidiChlorians()%></td>
<td><%=a.getClasse()%></td>
</tr>
 <%
 }
 %>

<tr>
<td colspan="6" align="center"><a href="index.jsp">Página Principal</a></td>
</tr>
</table>


				</div>
			</div>
		</div>
	</section>

	<!-- About Section -->
	<section class="success" id="about">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2>About</h2>
					<hr class="star-primary">
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-lg-offset-2">
					<p>Freelancer is a free bootstrap theme created by Start
						Bootstrap. The download includes the complete source files
						including HTML, CSS, and JavaScript as well as optional LESS
						stylesheets for easy customization.</p>
				</div>
				<div class="col-lg-4">
					<p>Whether you're a student looking to showcase your work, a
						professional looking to attract clients, or a graphic artist
						looking to share your projects, this template is the perfect
						starting point!</p>
				</div>
			</div>
		</div>
	</section>

	<hr>

	<!-- Registro Jedi Section -->
	<section id="registro">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2>Jedi</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<!-- MODAL botao -->
					<button type="button" class="btn btn-primary btn-lg"
						data-toggle="modal" data-target="#myModal">Adicione um Jedi</button>
				</div>
			</div>
	</section>

	<!-- Footer -->
	<footer class="text-center">
		<div class="footer-above">
			<div class="container">
				<div class="row">
					<div class="footer-col col-md-12">
						<h3>Localização</h3>
						<p>
							Couscant<br>Templo Jedi
						</p>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-below">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">Copyright &copy; Asia Corp 2015</div>
				</div>
			</div>
		</div>
	</footer>

	<!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
	<div class="scroll-top page-scroll visible-xs visible-sm">
		<a class="btn btn-primary" href="#page-top"> <i
			class="fa fa-chevron-up"></i>
		</a>
	</div>
                    <!-- MODAL inicio -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Adicione um Jedi</h4>
				</div>
				<div class="modal-body">
					<!-- MODAL corpo -->
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1">

								<form action="JediServlet" method="get" name="jediForm"
									id="Form_jedi" novalidate>
									<input type="hidden" name="cmd" value="incluir">
									<div class="row control-group">
										<div
											class="form-group col-xs-12 floating-label-form-group controls">
											<label>Nome do Jedi:</label> <input type="text"
												class="form-control" placeholder="Nome do Jedi"
												name="txtNome" id="name_jedi" required
												data-validation-required-message="Por favor insira o nome do jedi.">
											<p class="help-block text-danger"></p>
										</div>
									</div>

									<div class="row control-group">
										<div
											class="form-group col-xs-12 floating-label-form-group controls">
											<label>Espécie:</label> <input type="text"
												class="form-control" placeholder="Espécie do Jedi"
												name="txtEspecie" id="specie_jedi" required
												data-validation-required-message="Por favor insira a espécie do jedi.">
											<p class="help-block text-danger"></p>
										</div>
									</div>

									<div class="row control-group">
										<div
											class="form-group col-xs-12 floating-label-form-group controls">
											<label>Planeta:</label> <input type="text"
												class="form-control" placeholder="Planeta natal"
												name="txtPlaneta" id="planet_jedi" required
												data-validation-required-message="Por favor insira o planeta natal do jedi.">
											<p class="help-block text-danger"></p>
										</div>
									</div>

									<div class="row control-group">
										<div
											class="form-group col-xs-12 floating-label-form-group controls">
											<label>Idade:</label> <input type="number" size="6"
												name="txtIdade" min="0" max="999" value="22" id="age_jedi">
											<p class="help-block text-danger"></p>
										</div>
									</div>

									<div class="row control-group">
										<div class="form-group col-xs-12 controls">
											<label for="instituicao">Sexo:</label> <select
												class="form-control" placeholder="Sexo" id="sex_jedi"
												name="txtSexo" required
												data-validation-required-message="Por favor insira o sexo do jedi.">
												<option value="">--- SELECIONE O SEXO DO JEDI ---</option>
												<option value="m">Masculino</option>
												<option value="f">Feminino</option>
											</select>
										</div>
									</div>

									<div class="row control-group">
										<div
											class="form-group col-xs-12 floating-label-form-group controls">
											<label>MidiChlorians:</label> <input type="number" size="6"
												name="txtMidi" min="2500" max="20000" value="2500"
												id="midichlorians_jedi">
											<p class="help-block text-danger"></p>
										</div>
									</div>

									<div class="row control-group">
										<div class="form-group col-xs-12 controls">
											<label for="dept">Departamento:</label> <select
												class="form-control" placeholder="Classe" id="class_jedi"
												required name="txtClasse"
												data-validation-required-message="Por favor insira o sexo do jedi.">
												<option value="">--- SELECIONE A CLASSE DO JEDI ---</option>
												<option value="1">Iniciado</option>
												<option value="2">Corpo de Serviço</option>
												<option value="3">Padawan</option>
												<option value="4">Cavaleiro</option>
												<option value="4">Mestre</option>
											</select>
										</div>
									</div>
									<div class="row control-group">
										<div class="form-group col-xs-12 controls">
											<input type="submit" class="btn btn-primary btn-lg"
												value="enviar"></input>
										</div>
									</div>
								</form>
							</div>
							<!-- div row -->
						</div>
						<!-- div container -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- MODAL1 END -->

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
	<script src="js/classie.js"></script>
	<script src="js/cbpAnimatedHeader.js"></script>

	<!-- Contact Form JavaScript -->
	<script src="js/jqBootstrapValidation.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="js/freelancer.js"></script>
</html>