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

<link rel="stylesheet" type="text/css"
	href="/resources/css-new/css/normalize.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css-new/icomoon/icomoon.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css-new/css/vendor.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css-new/style.css">

<!-- script
		================================================== -->
<script src="/resources/css-new/js/modernizr.js"></script>

</head>

<body>

	<%@ include file="menu.jsp"%>

	<section class="bg-sand padding-large">
		<div class="container">
			<c:forEach items="${livros}" var="livro">
				<div class="row">

					<div class="col-md-4">
						<a href="#" class="product-image"><img
							src="/${livro.fotoLivro}" style="width: 350; height: 350px;"></a>
					</div>

					<div class="col-md-4 pl-5">
					
						<div class="product-detail">
							<h4>${livro.tituloLivro}</h4>
							<span>Genero: ${livro.categoriaLivro.nomeCategoria}</span> <span>Autor:
								${livro.autorLivro.nomeAutor}</span><br>
							<br>
							<p class="price colored">R$ ${livro.precoLivro}</p>

							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
							<a class="button"
								href="${s:mvcUrl('CCC#excluirLivro').arg(0, livro.idLivro).build()}">Excluir tem</a>

						</div>
					</div>
					<div class="col-md-4">
						<h3>${carrinhoCompras.getQuantidadeTela(livro)}Unidades</h3>
						<div class="item-price">R$
							${carrinhoCompras.getQuantidadeTela(livro)*livro.precoLivro}</div>

						<form:form servletRelativeAction="/atualizar" method="POST"
							class="input-group">
							<div class="input-group-prepend">
								<div class="input-group-text">Qtd</div>
							</div>

							<input type="hidden" name="idLivro" value="${livro.idLivro}" />
							<input class="form-control" type="number" min="1"
								name="quantidade"
								value="${carrinhoCompras.getQuantidadeTela(livro)}" />

							<!-- 										<button type="submit" class="btn btn-success" value="atualizar">atualizar</button> -->
							<input class="btn btn-success" value="atualizar" type="submit" />
						</form:form>

					</div>
				</div>
				<hr>
			</c:forEach>
			
			<div class="col-md-12 ">

				<button type="submit" name="add-to-cart" value="27545" class="button">Confirmar Pagamento</button>

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
								<p>
									© 2022 All rights reserved. Free HTML Template by <a
										href="https://www.templatesjungle.com/" target="_blank">TemplatesJungle</a>
								</p>
							</div>

							<div class="col-md-6">
								<div class="social-links align-right">
									<ul>
										<li><a href="#"><i class="icon icon-facebook"></i></a></li>
										<li><a href="#"><i class="icon icon-twitter"></i></a></li>
										<li><a href="#"><i class="icon icon-youtube-play"></i></a>
										</li>
										<li><a href="#"><i class="icon icon-behance-square"></i></a>
										</li>
									</ul>
								</div>
							</div>

						</div>
					</div>
					<!--grid-->

				</div>
				<!--footer-bottom-content-->
			</div>
		</div>
	</div>

	<script src="/resources/css-new/js/jquery-1.11.0.min.js"></script>
	<script src="/resources/css-new/js/plugins.js"></script>
	<script src="/resources/css-new/js/script.js"></script>

</body>
</html>
