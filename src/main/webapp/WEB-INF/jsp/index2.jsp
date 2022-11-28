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

<div id="header-wrap">
	
	<div class="top-content">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="social-links">
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
					</div><!--social-links-->
				</div>
				<div class="col-md-6">
					<div class="right-element">
						<a href="#" class="user-account for-buy"><i class="icon icon-user"></i><span>Account</span></a>
						<a href="#" class="cart for-buy"><i class="icon icon-clipboard"></i><span>Cart:(0 $)</span></a>

						<div class="action-menu">

							<div class=""> <!--search-bar o valor que tava aqui dentro-->
								
								<form:form action="${s:mvcUrl('HC#buscarPorTitulo').build()}" method="POST" modelAttribute="livro" role="search" class="search-box">
									<form:input path="tituloLivro" class="search-field text search-input" placeholder="Pesquisar" type="search"/>
									<input class="botao" type="submit" value="filtrar">
								</form:form>
							</div>
						</div>

					</div><!--top-right-->
				</div>
				
			</div>
		</div>
	</div><!--top-content-->

	<header id="header">
		<div class="container">
			<div class="row" style="display: flex; align-items:center;">

				<div class="col-md-2">
					<div class="main-logo">
						<a href="/"><img src="/resources/css-new/images/logo.png" alt="logo"></a>
					</div>

				</div>

				<div class="col-md-10">
					
					<nav id="navbar">
						<div class="main-menu stellarnav">
							<ul class="menu-list">
								<li class="menu-item active"><a href="#home" data-effect="Home">Home</a></li>
								<li class="menu-item"><a href="#about" class="nav-link" data-effect="About">About</a></li>
								<li class="menu-item has-sub">
									<a href="#pages" class="nav-link" data-effect="Pages">Pages</a>

									<ul>
								        <li class="active"><a href="index.html">Home</a></li>
								        <li><a href="about.html">About</a></li>
								        <li><a href="styles.html">Styles</a></li>
								        <li><a href="blog.html">Blog</a></li>
								        <li><a href="single-post.html">Post Single</a></li>
								        <li><a href="shop.html">Our Store</a></li>
								        <li><a href="single-product.html">Product Single</a></li>
								        <li><a href="contact.html">Contact</a></li>
								        <li><a href="thank-you.html">Thank You</a></li>
								     </ul>

								</li>
								<li class="menu-item"><a href="#popular-books" class="nav-link" data-effect="Shop">Shop</a></li>
								<li class="menu-item"><a href="#latest-blog" class="nav-link" data-effect="Articles">Articles</a></li>
								<li class="menu-item"><a href="#contact" class="nav-link" data-effect="Contact">Contact</a></li>
							</ul>

							<div class="hamburger">
				                <span class="bar"></span>
				                <span class="bar"></span>
				                <span class="bar"></span>
				            </div>

						</div>
					</nav>

				</div>

			</div>
		</div>
	</header>
		
</div><!--header-wrap-->

<!-- <section id="billboard">

	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<button class="prev slick-arrow">
					<i class="icon icon-arrow-left"></i>
				</button>

				<div class="main-slider pattern-overlay">
					<div class="slider-item">
						<div class="banner-content">
							<h2 class="banner-title">Life of the Wild</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eu feugiat amet, libero ipsum enim pharetra hac. Urna commodo, lacus ut magna velit eleifend. Amet, quis urna, a eu.</p>
							<div class="btn-wrap">
								<a href="#" class="btn btn-outline-accent btn-accent-arrow">Read More<i class="icon icon-ns-arrow-right"></i></a>
							</div>
						</div>
						<img src="/resources/css-new/images/main-banner1.jpg" alt="banner" class="banner-image">
					</div>

					<div class="slider-item">
						<div class="banner-content">
							<h2 class="banner-title">Birds gonna be Happy</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eu feugiat amet, libero ipsum enim pharetra hac. Urna commodo, lacus ut magna velit eleifend. Amet, quis urna, a eu.</p>
							<div class="btn-wrap">
								<a href="#" class="btn btn-outline-accent btn-accent-arrow">Read More<i class="icon icon-ns-arrow-right"></i></a>
							</div>
						</div>
						<img src="/resources/css-new/images/main-banner2.jpg" alt="banner" class="banner-image">
					</div>

				</div>
					
				<button class="next slick-arrow">
					<i class="icon icon-arrow-right"></i>
				</button>
				
			</div>
		</div>
	</div>
	
</section> -->

<!-- <section id="client-holder" data-aos="fade-up">
	<div class="container">
		<div class="row">
			<div class="inner-content">
				<div class="logo-wrap">
					<div class="grid">
						<a href="#"><img src="/resources/css-new/images/client-image1.png" alt="client"></a>
						<a href="#"><img src="/resources/css-new/images/client-image2.png" alt="client"></a>
						<a href="#"><img src="/resources/css-new/images/client-image3.png" alt="client"></a>
						<a href="#"><img src="/resources/css-new/images/client-image4.png" alt="client"></a>
						<a href="#"><img src="/resources/css-new/images/client-image5.png" alt="client"></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section> -->

<section id="best-selling" class="leaf-pattern-overlay">
	<div class="corner-pattern-overlay"></div>
	<div class="container">
		<div class="row">

			<div class="col-md-8 col-md-offset-2">

				<div class="row">

					<div class="col-md-6">
						<figure class="products-thumb">
							<img src="/resources/css-new/images/single-image.jpg" alt="book" class="single-image">
						</figure>	
					</div>

					<div class="col-md-6">
						<div class="product-entry">
							<h2 class="section-title divider">Best Selling 2022</h2>

							<div class="products-content">
								<div class="author-name">By Timbur Hood</div>
								<h3 class="item-title">Birds gonna be happy</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eu feugiat amet, libero ipsum enim pharetra hac.</p>
								<div class="item-price">$ 45.00</div>
								<div class="btn-wrap">
									<a href="#" class="btn-accent-arrow">shop it now <i class="icon icon-ns-arrow-right"></i></a>
								</div>
							</div>

						</div>
					</div>

				</div>
				<!-- / row -->

			</div>

		</div>
	</div>
</section>

<section id="featured-books">
	<div class="container">
		<div class="row">
			<div class="col-md-12">

			<div class="section-header align-center">
				<div class="title">
					<span></span>
				</div>				
				
				<h2 class="section-title">Destaques da Semana</h2>
			</div>
			
			

			<div class="product-list" data-aos="fade-up">
				<div class="row">
					<c:forEach items="${livros}" var="livro">
					
						<div class="col-md-3">
							<figure class="product-style">
								<img src="${livro.fotoLivro}" alt="Books" class="product-item">
									<button type="button" class="add-to-cart" data-product-tile="add-to-cart">Add to Cart</button>
								<figcaption>
									<h3>${livro.tituloLivro}</h3>
									<p>${livro.autorLivro.nomeAutor}</p>
									<div class="item-price">${livro.precoLivro}</div>
								</figcaption>
							</figure>
						</div>	
					</c:forEach> 

			    </div><!--ft-books-slider-->				
			</div><!--grid-->


			</div><!--inner-content-->
		</div>
		
		<div class="row">
			<div class="col-md-12">

				<div class="btn-wrap align-right">
					<a href="/listarLivrosShop" class="btn-accent-arrow">Ver mais Produtos <i class="icon icon-ns-arrow-right"></i></a>
				</div>
				
			</div>		
		</div>
	</div>
</section>


<!-- <section id="quotation" class="align-center">
	<div class="inner-content">
		<h2 class="section-title divider">Quote of the day</h2>
		<blockquote data-aos="fade-up">
			<q>“The more that you read, the more things you will know. The more that you learn, the more places you’ll go.”</q>
			<div class="author-name">Dr. Seuss</div>			
		</blockquote>
	</div>		
</section> -->

<!-- <section id="special-offer" class="bookshelf">

	<div class="section-header align-center">
		<div class="title">
			<span>Grab your opportunity</span>
		</div>
		<h2 class="section-title">Books with offer</h2>
	</div>

	<div class="container">
		<div class="row">
			<div class="inner-content">	
				<div class="product-list" data-aos="fade-up">
					<div class="grid product-grid">				
						<figure class="product-style">
							<img src="/resources/css-new/images/product-item5.jpg" alt="Books" class="product-item">
							<button type="button" class="add-to-cart" data-product-tile="add-to-cart">Add to Cart</button>
							<figcaption>
								<h3>Simple way of piece life</h3>
								<p>Armor Ramsey</p>
								<div class="item-price">
								<span class="prev-price">$ 50.00</span>$ 40.00</div>
							</figcaption>
						</figure>
					
						<figure class="product-style">
							<img src="/resources/css-new/images/product-item6.jpg" alt="Books" class="product-item">
							<button type="button" class="add-to-cart" data-product-tile="add-to-cart">Add to Cart</button>
							<figcaption>
								<h3>Great travel at desert</h3>
								<p>Sanchit Howdy</p>
								<div class="item-price">
								<span class="prev-price">$ 30.00</span>$ 38.00</div>
							</figcaption>
						</figure>
					
						<figure class="product-style">
							<img src="/resources/css-new/images/product-item7.jpg" alt="Books" class="product-item">
							<button type="button" class="add-to-cart" data-product-tile="add-to-cart">Add to Cart</button>
							<figcaption>
								<h3>The lady beauty Scarlett</h3>
								<p>Arthur Doyle</p>
								<div class="item-price">
								<span class="prev-price">$ 35.00</span>$ 45.00</div>
							</figcaption>
						</figure>
					
						<figure class="product-style">
							<img src="/resources/css-new/images/product-item8.jpg" alt="Books" class="product-item">
							<button type="button" class="add-to-cart" data-product-tile="add-to-cart">Add to Cart</button>
							<figcaption>
								<h3>Once upon a time</h3>
								<p>Klien Marry</p>
								<div class="item-price">
								<span class="prev-price">$ 25.00</span>$ 35.00</div>
							</figcaption>
						</figure>

						<figure class="product-style">
							<img src="/resources/css-new/images/product-item2.jpg" alt="Books" class="product-item">
							<button type="button" class="add-to-cart" data-product-tile="add-to-cart">Add to Cart</button>
							<figcaption>
								<h3>Simple way of piece life</h3>
								<p>Armor Ramsey</p>
								<div class="item-price">$ 40.00</div>
							</figcaption>
						</figure>					
					</div>
				</div>
			</div>
		</div>
	</div>
</section> -->

<!-- <section id="subscribe">
	<div class="container">
		<div class="row">

			<div class="col-md-8 col-md-offset-2">
				<div class="row">

					<div class="col-md-6">

						<div class="title-element">
							<h2 class="section-title divider">Subscribe to our newsletter</h2>
						</div>

					</div>
					<div class="col-md-6">

						<div class="subscribe-content" data-aos="fade-up">
							<p>Sed eu feugiat amet, libero ipsum enim pharetra hac dolor sit amet, consectetur. Elit adipiscing enim pharetra hac.</p>
							<form id="form">
								<input type="text" name="email" placeholder="Enter your email addresss here">
								<button class="btn-subscribe">
									<span>send</span> 
									<i class="icon icon-send"></i>
								</button>
							</form>
						</div>

					</div>
					
				</div>
			</div>
			
		</div>
	</div>
</section> -->

<!-- <section id="latest-blog">
	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<div class="section-header align-center">
					<div class="title">
						<span>Read our articles</span>
					</div>
					<h2 class="section-title">Latest Articles</h2>
				</div>

				<div class="row">

					<div class="col-md-4">

						<article class="column" data-aos="fade-up">

							<figure>
								<a href="#" class="image-hvr-effect">
									<img src="/resources/css-new/images/post-img1.jpg" alt="post" class="post-image">			
								</a>
							</figure>

							<div class="post-item">	
								<div class="meta-date">Mar 30, 2021</div>			
							    <h3><a href="#">Reading books always makes the moments happy</a></h3>

							    <div class="links-element">
								    <div class="categories">inspiration</div>
								    <div class="social-links">
										<ul>
											<li>
												<a href="#"><i class="icon icon-facebook"></i></a>
											</li>
											<li>
												<a href="#"><i class="icon icon-twitter"></i></a>
											</li>
											<li>
												<a href="#"><i class="icon icon-behance-square"></i></a>
											</li>
										</ul>
									</div>
								</div>

							</div>
						</article>
						
					</div>
					<div class="col-md-4">

						<article class="column" data-aos="fade-down">
							<figure>
								<a href="#" class="image-hvr-effect">
									<img src="/resources/css-new/images/post-img2.jpg" alt="post" class="post-image">
								</a>
							</figure>
							<div class="post-item">	
								<div class="meta-date">Mar 29, 2021</div>			
							    <h3><a href="#">Reading books always makes the moments happy</a></h3>

							    <div class="links-element">
								    <div class="categories">inspiration</div>
								    <div class="social-links">
										<ul>
											<li>
												<a href="#"><i class="icon icon-facebook"></i></a>
											</li>
											<li>
												<a href="#"><i class="icon icon-twitter"></i></a>
											</li>
											<li>
												<a href="#"><i class="icon icon-behance-square"></i></a>
											</li>
										</ul>
									</div>
								</div>

							</div>
						</article>
						
					</div>
					<div class="col-md-4">

						<article class="column" data-aos="fade-up">
							<figure>
								<a href="#" class="image-hvr-effect">
									<img src="/resources/css-new/images/post-img3.jpg" alt="post" class="post-image">
								</a>
							</figure>
							<div class="post-item">		
								<div class="meta-date">Feb 27, 2021</div>			
							    <h3><a href="#">Reading books always makes the moments happy</a></h3>

							    <div class="links-element">
								    <div class="categories">inspiration</div>
								    <div class="social-links">
										<ul>
											<li>
												<a href="#"><i class="icon icon-facebook"></i></a>
											</li>
											<li>
												<a href="#"><i class="icon icon-twitter"></i></a>
											</li>
											<li>
												<a href="#"><i class="icon icon-behance-square"></i></a>
											</li>
										</ul>
									</div>
								</div>

							</div>
						</article>
						
					</div>

				</div>

				<div class="row">

					<div class="btn-wrap align-center">
						<a href="#" class="btn btn-outline-accent btn-accent-arrow" tabindex="0">Read All Articles<i class="icon icon-ns-arrow-right"></i></a>
					</div>
				</div>

			</div>	
		</div>
	</div>
</section> -->

<!-- <section id="download-app" class="leaf-pattern-overlay">
	<div class="corner-pattern-overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<div class="row">

						<div class="col-md-5">
							<figure>
								<img src="/resources/css-new/images/device.png" alt="phone" class="single-image">
							</figure>
						</div>

						<div class="col-md-7">
							<div class="app-info">
								<h2 class="section-title divider">Download our app now !</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis sed ptibus liberolectus nonet psryroin. Amet sed lorem posuere sit iaculis amet, ac urna. Adipiscing fames semper erat ac in suspendisse iaculis.</p>
								<div class="google-app">
									<img src="/resources/css-new/images/google-play.jpg" alt="google play">
									<img src="/resources/css-new/images/app-store.jpg" alt="app store">
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
</section> -->

<!-- <footer id="footer">
	<div class="container">
		<div class="row">

			<div class="col-md-4">
				
				<div class="footer-item">
					<div class="company-brand">
						<img src="/resources/css-new/images/main-logo.png" alt="logo" class="footer-logo">
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis sed ptibus liberolectus nonet psryroin. Amet sed lorem posuere sit iaculis amet, ac urna. Adipiscing fames semper erat ac in suspendisse iaculis.</p>
					</div>
				</div>
				
			</div>

			<div class="col-md-2">

				<div class="footer-menu">
					<h5>About Us</h5>
					<ul class="menu-list">
						<li class="menu-item">
							<a href="#">vision</a>
						</li>
						<li class="menu-item">
							<a href="#">articles </a>
						</li>
						<li class="menu-item">
							<a href="#">careers</a>
						</li>
						<li class="menu-item">
							<a href="#">service terms</a>
						</li>
						<li class="menu-item">
							<a href="#">donate</a>
						</li>
					</ul>
				</div>

			</div>
			<div class="col-md-2">

				<div class="footer-menu">
					<h5>Discover</h5>
					<ul class="menu-list">
						<li class="menu-item">
							<a href="#">Home</a>
						</li>
						<li class="menu-item">
							<a href="#">Books</a>
						</li>
						<li class="menu-item">
							<a href="#">Authors</a>
						</li>
						<li class="menu-item">
							<a href="#">Subjects</a>
						</li>
						<li class="menu-item">
							<a href="#">Advanced Search</a>
						</li>
					</ul>
				</div>

			</div>
			<div class="col-md-2">

				<div class="footer-menu">
					<h5>My account</h5>
					<ul class="menu-list">
						<li class="menu-item">
							<a href="#">Sign In</a>
						</li>
						<li class="menu-item">
							<a href="#">View Cart</a>
						</li>
						<li class="menu-item">
							<a href="#">My Wishtlist</a>
						</li>
						<li class="menu-item">
							<a href="#">Track My Order</a>
						</li>
					</ul>
				</div>

			</div>
			<div class="col-md-2">

				<div class="footer-menu">
					<h5>Help</h5>
					<ul class="menu-list">
						<li class="menu-item">
							<a href="#">Help center</a>
						</li>
						<li class="menu-item">
							<a href="#">Report a problem</a>
						</li>
						<li class="menu-item">
							<a href="#">Suggesting edits</a>
						</li>
						<li class="menu-item">
							<a href="#">Contact us</a>
						</li>
					</ul>
				</div>

			</div>

		</div>
		

	</div>
</footer> -->

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

