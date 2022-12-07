<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
	<html lang="en">
	<head>
		<title>Book Store</title>
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="format-detection" content="telephone=no">
	    <meta name="apple-mobile-web-app-capable" content="yes">
	    <meta name="author" content="">
	    <meta name="keywords" content="">
	    <meta name="description" content="">

	    <link rel="stylesheet" type="text/css" href="/resources/css-new/css/normalize.css">
	    <link rel="stylesheet" type="text/css" href="/resources/css-new/icomoon/icomoon.css">
	    <link rel="stylesheet" type="text/css" href="/resources/css-new/css/vendor.css">
	    <link rel="stylesheet" type="text/css" href="/resources/css-new/style.css">

		<!-- script
		================================================== -->
		<script src="/resources/css-new/js/modernizr.js"></script>

	</head>

<body>


<%@ include file="menuArcevo.jsp"%>

<!-- <div> -->
<!-- 	<div class="container"> -->
<!-- 		<div class="row"> -->
<!-- 			<div class="col-md-12">			 -->
<!-- 				<div class="colored"> -->
<!-- 					<h1 class="page-title">Shop</h1> -->
<!-- 					<div class="breadcum-items"> -->
<%-- 						<span class="item"><a href="/">Home /</a></span> --%>
<%-- 						<span class="item colored">Shop</span> --%>
<!-- 					</div>					 -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- </div> -->


<section class="padding-large">
	<div class="container">

		<div class="row">
			<div class="col-md-12">

				<div class="bootstrap-tabs">
					<nav>
					  <div class="nav nav-tabs" id="nav-tab" role="tablist">
					    <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">Autores</button>
					    <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">Editoras</button>
					    <button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact" type="button" role="tab" aria-controls="nav-contact" aria-selected="false">Generos</button>
					  </div>
					</nav>
					<div class="tab-content" id="nav-tabContent">
						
						<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
						<c:forEach items="${autores}" var="autor">
							<div ><a href="${s:mvcUrl('HC#buscarPorAutor').arg(0, autor.idAutor).build()}">${autor.nomeAutor}</a></div>
						</c:forEach>									  
						</div>						
						
						  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
						 	<c:forEach items="${editoras}" var="editora">
						 		<div ><a href="${s:mvcUrl('HC#buscarPorEditora').arg(0, editora.idEditora).build()}" >${editora.nomeEditora}</a></div>
						 	</c:forEach>
						  </div>
						  
						  			
						  						  
						  <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
							<c:forEach items="${categorias}" var="categoria">
							  <div ><a href="${s:mvcUrl('HC#buscarPorCategoria').arg(0, categoria.idCategoria).build()}" >${categoria.nomeCategoria}</a></div>
						 	</c:forEach>
						  </div>
						  
					</div>
				</div>

			</div>
		</div>

		<div class="row">
		
			<div class="products-grid grid">
			<c:forEach items="${listaLivros}" var="livro">
			  	<figure class="product-style">
					<a href="${s:mvcUrl('HC#detalhesLivro').arg(0, livro.idLivro).build()}">
					<img src="/${livro.fotoLivro}" alt="Books" class="product-item">
					</a>
					<a class="button" href="${s:mvcUrl('CCC#adicionaLivro').arg(0, livro.idLivro).build()}"><button type="button" class="add-to-cart" data-product-tile="add-to-cart">Adicionar ao carrinho</button></a>
					<figcaption>
						<a href="${s:mvcUrl('HC#detalhesLivro').arg(0, livro.idLivro).build()}" style="text-decoration:none;"><h3 style="color:#74642F;">${livro.tituloLivro}</h3></a>
						<p>${livro.autorLivro.nomeAutor}</p>
						<div class="item-price"><span>R$</span>${livro.precoLivro}</div>
					</figcaption>
				</figure>			  	
			</c:forEach> 
	    	</div>
	    	
	    	<c:if test="${empty listaLivros}">	    	
				<div class="row">
					<div class="col-md-12">			
						<h1 class="page-title align-center">Não Foram Encontrados Registros!</h1>
					</div>
				</div>	    	
	    	</c:if>

		</div>
	</div>
</section>

<div id="footer-bottom">
	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<div class="copyright">
					<div class="row">

						<div class="col-md-6">
							<p>© 2022 All rights reserved. Tiago Borges </p>
						</div>

						<div class="col-md-6">
							<div class="social-links align-right">
								<ul>
									<li>
										<a href="#"><i class="icon icon-facebook"></i></a>
									</li>
									<li>
										<a href="#"><i class="icon icon-twitter"></i></a>
									</li>
									<li>
										<a href="#"><i class="icon icon-youtube-play"></i></a>
									</li>
									<li>
										<a href="#"><i class="icon icon-behance-square"></i></a>
									</li>
								</ul>
							</div>
						</div>

					</div>
				</div><!--grid-->

			</div><!--footer-bottom-content-->
		</div>
	</div>
</div>

<script src="/resources/css-new/js/jquery-1.11.0.min.js"></script>
<script src="/resources/css-new/js/plugins.js"></script>
<script src="/resources/css-new/js/script.js"></script>

</body>
</html>	