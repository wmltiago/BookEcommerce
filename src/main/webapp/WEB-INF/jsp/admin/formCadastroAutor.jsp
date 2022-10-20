<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Import da taglib -->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Shop Homepage - Start Bootstrap Template</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="../resources/css/styles.css" rel="stylesheet" />
<link href="../resources/css/cadastro.css" rel="stylesheet" />

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

</head>
<body>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container px-4 px-lg-5">
			<a class="navbar-brand" href="#!">Bok Ecommerce</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#!">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">About</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#!">All Products</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="#!">Popular Items</a></li>
							<li><a class="dropdown-item" href="#!">New Arrivals</a></li>
						</ul></li>
				</ul>
<%-- 				<form class="d-flex"> --%>
<!-- 					<button class="btn btn-outline-dark" type="submit"> -->
<%-- 						<i class="bi-cart-fill me-1"></i> Cart <span --%>
<%-- 							class="badge bg-dark text-white ms-1 rounded-pill">0</span> --%>
<!-- 					</button> -->
<%-- 				</form> --%>
			</div>
		</div>
	</nav>
	<!-- Header-->
<!-- 	<header class="bg-dark py-5"> -->
<!-- 		<div class="container px-4 px-lg-5 my-5"> -->
<!-- 			<div class="text-center text-white"> -->
<!-- 				<h1 class="display-4 fw-bolder">Shop in style</h1> -->
<!-- 				<p class="lead fw-normal text-white-50 mb-0">With this shop -->
<!-- 					hompeage template</p> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</header> -->
	<!-- Section-->
	<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">
			<!-- aqui-->

			<div class="container">

				<div class="card bg-light">
					<article class="card-body mx-auto" style="max-width: 400px;">
						<h4 class="card-title mt-3 text-center">Cadastro de Autor</h4>
						<br />
						<form:form action="${s:mvcUrl('AC#cadastrarAutor').build()}"
							method="POST" modelAttribute="autor">
							<div class="form-group input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"> <i
										class="fas fa-info-circle"></i>
									</span>
								</div>
								<form:input path="nomeAutor" type="text" class="form-control"
									placeholder="Nome do Autor" />
							</div>
<!-- 							<div class="form-group input-group"> -->
<!-- 								<div class="input-group-prepend"> -->
<%-- 									<span class="input-group-text">  --%>
<!-- 									<i class="fas fa-chevron-down"></i> -->
<%-- 									</span> --%>
<!-- 								</div> -->
<%-- 								<form:select class="form-control" path="statusAutor"> --%>
<%-- 									<form:option value="" label="Selecione Status do Autor"/> --%>
<%-- 									<form:option value="true" label="Ativo" /> --%>
<%-- 									<form:option value="false" label="Inativo" /> --%>
<%-- 								</form:select> --%>
<!-- 							</div> -->
							<div class="form-group">
								<button type="submit" class="btn btn-primary btn-block">
									Cadastrar</button>
							</div>
							<!-- form-group// -->
							<p class="text-center">
								<a href="http://localhost:8080/admin/listarAutores">Ir para listagem de Autores</a>
							</p>
						</form:form>
					</article>
				</div>
				<!-- card.// -->

			</div>
			<!--container end.//-->

		</div>
		<!-- ate aqui-->
	</section>
	</br></br></br></br></br></br>
	</br></br></br></br></br></br></br>
	</br>
	<!-- Footer-->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2022</p>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>
