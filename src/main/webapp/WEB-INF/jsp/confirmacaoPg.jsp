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

<link rel="stylesheet" type="text/css"
	href="/resources/css/pagamento/pagamento.css">

<!-- script
		================================================== -->
<script src="/resources/css/pagamento/pagamento_f.js"></script>

</head>

<body>


	<%@ include file="menu.jsp"%>

	<section class="bg-sand padding-large">
		<div class="container">
			<div class="row">

				<div class="col-md-12">
					<div class="checkout-panel">
						<div class="panel-body">
							<h2 class="title">Tudo certo com o pagamento!</h2>

							<div class="progress-bar">
								<div class="step active"></div>
								<div class="step active"></div>
								<div class="step active"></div>
								<div class="step"></div>

							</div>
							<br>
							<div class="text-center">
								<h1>Nº DO PEDIDO É 20221212</h1>
							</div>

							<br>
							<div class="text-center">
								<a href="/"><button class="btn next-btn">Inicio</button></a>

							</div>
						</div>
					</div>

				</div>

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
