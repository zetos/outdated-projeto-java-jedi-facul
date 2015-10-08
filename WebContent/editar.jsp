<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Star Wars - Editar</title>
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
	<!-- Header -->
	<header>
		<div class="row">
			<div class="col-lg-12">
				<div class="intro-text">
					<span class="name">Atualizar</span> <span class="skills">Medite
						antes de tomar qualquer decisão..</span>
						<hr>
				</div>
			</div>
		</div>
	</header>
	<!-- Atualizar Section -->
	<section id="listar">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<jsp:useBean id="jedi" scope="session" class="Bean.Jedi" />

					<form action="JediServlet?cmd=atualizar" method="post">
						<table class="table table-striped">
							<tr>
								<td>Nome:</td>
								<td><input class="form-control" type="text" name="txtNome"
									value="${jedi.nome}" id="name_jedi" readonly="readonly"></td>
							</tr>
							<tr>
								<td>Espécie:</td>
								<td><input class="form-control" type="text"
									name="txtEspecie" value="${jedi.especie}" id="specie_jedi"
									required
									data-validation-required-message="Por favor insira a espécie do jedi.">
									<p class="help-block text-danger"></td>
							</tr>
							<tr>
								<td>Planeta:</td>
								<td><input class="form-control" type="text" name="txtPlaneta"
									value="${jedi.planeta}" required
									data-validation-required-message="Por favor insira o planeta natal do jedi.">
								</td>
							</tr>
							<tr>
								<td>Idade:</td>
								<td><input class="form-control" type="number" name="txtIdade" min="0" max="999"
									value="${jedi.idade}"></td>
							</tr>
							<tr>
								<td>Sexo:</td>
								<td><select class="form-control" name="txtSexo">
										<option value="Masculino">Masculino</option>
										<option value="Feminino">Feminino</option>
								</select></td>
							</tr>
							<tr>
								<td>MidiChlorians:</td>
								<td><input class="form-control" type="number" name="txtMidi" min="2500"
									max="20000" value="${jedi.midiChlorians}"></td>
							</tr>
							<tr>
								<td>Classe:</td>
								<td><select class="form-control" required name="txtClasse">
										<option value="Iniciado">Iniciado</option>
										<option value="Corpo de Serviço">Corpo de Serviço</option>
										<option value="Padawan">Padawan</option>
										<option value="Cavaleiro">Cavaleiro</option>
										<option value="Mestre">Mestre</option>
								</select></td>
							</tr>
							<tr>
								<td>Status:</td>
								<td><input type="text" class="form-control"
										name="txtStatus" value="${jedi.status}" required
										data-validation-required-message="Por favor entre com o status do jedi."></input>
								</td>
							</tr>

							<tr>
								<th colspan="2"><input type="submit"
									class="btn btn-primary btn-lg" name="btAtualizar"
									value="Salvar" />   <a class="btn btn-default btn-lg" href="index.jsp" role="button">Voltar</a></th>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- Footer -->
	<footer class="text-center">
		<div class="footer-below">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">Copyright &copy; Asia Corp 2015</div>
				</div>
			</div>
		</div>
	</footer>

</body>
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