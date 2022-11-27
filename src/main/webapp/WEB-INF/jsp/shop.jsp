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

							<div class="search-bar">
								<a href="#" class="search-button search-toggle" data-selector="#header-wrap">
									<i class="icon icon-search"></i>
								</a>
								<form role="search" method="get" class="search-box">
									<input class="search-field text search-input" placeholder="Search" type="search">
								</form>
							</div>
						</div>

					</div><!--top-right-->
				</div>
				
			</div>
		</div>
	</div><!--top-content-->

	<header id="header">
		<div class="container">
			<div class="row">

				<div class="col-md-2">
					<div class="main-logo">
						<a href="index.html"><img src="images/main-logo.png" alt="logo"></a>
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

<div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">			
				<div class="colored">
					<h1 class="page-title">Shop</h1>
					<div class="breadcum-items">
						<span class="item"><a href="index.html">Home /</a></span>
						<span class="item colored">Shop</span>
					</div>					
				</div>
			</div>
		</div>
	</div>
</div><!--site-banner-->


<section class="padding-large">
	<div class="container">

		<div class="row">
			<div class="col-md-12">

				<div class="bootstrap-tabs">
					<nav>
					  <div class="nav nav-tabs" id="nav-tab" role="tablist">
					    <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">Home</button>
					    <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">Profile</button>
					    <button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact" type="button" role="tab" aria-controls="nav-contact" aria-selected="false">Contact</button>
					  </div>
					</nav>
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
							<div ><a href="https://www.google.com.br">AUTOR 1</a></div>
							<div>AUTOR 2</div>	
							<a href="https://www.google.com.br">info@yourcompany.com</a>				  
							</div>
					  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>
					  <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">Ut enim ad minim veniam,
					  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Ut enim ad minim veniam,
					  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</div>
					</div>
				</div>

			</div>
		</div>

		<div class="row">
			<div class="products-grid grid">

			  	<figure class="product-style">
					<img src="images/tab-item1.jpg" alt="Books" class="product-item">
					<button type="button" class="add-to-cart" data-product-tile="add-to-cart">Add to Cart</button>
					<figcaption>
						<h3>Portrait photography</h3>
						<p>Adam Silber</p>
						<div class="item-price">$ 40.00</div>
					</figcaption>
				</figure>

			  	<figure class="product-style">
					<img src="images/tab-item2.jpg" alt="Books" class="product-item">
					<button type="button" class="add-to-cart" data-product-tile="add-to-cart">Add to Cart</button>
					<figcaption>
						<h3>Once upon a time</h3>
						<p>Klien Marry</p>
						<div class="item-price">$ 35.00</div>
					</figcaption>
				</figure>

			  	<figure class="product-style">
					<img src="images/tab-item3.jpg" alt="Books" class="product-item">
					<button type="button" class="add-to-cart" data-product-tile="add-to-cart">Add to Cart</button>
					<figcaption>
						<h3>Tips of simple lifestyle</h3>
						<p>Bratt Smith</p>
						<div class="item-price">$ 40.00</div>
					</figcaption>
				</figure>

			  	<figure class="product-style">
					<img src="images/tab-item4.jpg" alt="Books" class="product-item">
					<button type="button" class="add-to-cart" data-product-tile="add-to-cart">Add to Cart</button>
					<figcaption>
						<h3>Just felt from outside</h3>
						<p>Nicole Wilson</p>
						<div class="item-price">$ 40.00</div>
					</figcaption>
				</figure>

			  	<figure class="product-style">
					<img src="images/tab-item5.jpg" alt="Books" class="product-item">
					<button type="button" class="add-to-cart" data-product-tile="add-to-cart">Add to Cart</button>
					<figcaption>
						<h3>Peaceful Enlightment</h3>
						<p>Marmik Lama</p>
						<div class="item-price">$ 40.00</div>
					</figcaption>
				</figure>

			  	<figure class="product-style">
					<img src="images/tab-item6.jpg" alt="Books" class="product-item">
					<button type="button" class="add-to-cart" data-product-tile="add-to-cart">Add to Cart</button>
					<figcaption>
						<h3>Great travel at desert</h3>
						<p>Sanchit Howdy</p>
						<div class="item-price">$ 40.00</div>
					</figcaption>
				</figure>

			  	<figure class="product-style">
					<img src="images/tab-item7.jpg" alt="Books" class="product-item">
					<button type="button" class="add-to-cart" data-product-tile="add-to-cart">Add to Cart</button>
					<figcaption>
						<h3>Life among the pirates</h3>
						<p>Armor Ramsey</p>
						<div class="item-price">$ 40.00</div>
					</figcaption>
				</figure>

			  	<figure class="product-style">
					<img src="images/tab-item8.jpg" alt="Books" class="product-item">
					<button type="button" class="add-to-cart" data-product-tile="add-to-cart">Add to Cart</button>
					<figcaption>
						<h3>Simple way of piece life</h3>
						<p>Armor Ramsey</p>
						<div class="item-price">$ 40.00</div>
					</figcaption>
				</figure>

				<figure class="product-style">
					<img src="images/tab-item8.jpg" alt="Books" class="product-item">
					<button type="button" class="add-to-cart" data-product-tile="add-to-cart">Add to Cart</button>
					<figcaption>
						<h3>Simple way of piece life</h3>
						<p>Armor Ramsey</p>
						<div class="item-price">$ 40.00</div>
					</figcaption>
				</figure>

				<figure class="product-style">
					<img src="images/tab-item8.jpg" alt="Books" class="product-item">
					<button type="button" class="add-to-cart" data-product-tile="add-to-cart">Add to Cart</button>
					<figcaption>
						<h3>Simple way of piece life</h3>
						<p>Armor Ramsey</p>
						<div class="item-price">$ 40.00</div>
					</figcaption>
				</figure>

				<figure class="product-style">
					<img src="images/tab-item8.jpg" alt="Books" class="product-item">
					<button type="button" class="add-to-cart" data-product-tile="add-to-cart">Add to Cart</button>
					<figcaption>
						<h3>Simple way of piece life</h3>
						<p>Armor Ramsey</p>
						<div class="item-price">$ 40.00</div>
					</figcaption>
				</figure>

				<figure class="product-style">
					<img src="images/tab-item8.jpg" alt="Books" class="product-item">
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
</section>


<footer id="footer">
	<div class="container">
		<div class="row">

			<div class="col-md-4">
				
				<div class="footer-item">
					<div class="company-brand">
						<img src="images/main-logo.png" alt="logo" class="footer-logo">
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
		<!-- / row -->

	</div>
</footer>

<div id="footer-bottom">
	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<div class="copyright">
					<div class="row">

						<div class="col-md-6">
							<p>© 2022 All rights reserved. Free HTML Template by <a href="https://www.templatesjungle.com/" target="_blank">TemplatesJungle</a></p>
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