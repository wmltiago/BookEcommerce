<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
						<a href="/carrinho" class="cart for-buy"><i class="icon icon-clipboard"></i><span>Carrinho:(0 $)</span></a>

						<div class="action-menu">

							<div class=""> <!--search-bar o valor que tava aqui dentro-->
								
								<form:form action="${s:mvcUrl('HC#buscarPorTituloArcevo').build()}" method="POST" modelAttribute="livro" role="search" class="search-box">
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
								<li class="menu-item active"><a href="/" data-effect="Home">Home</a></li>
								<li class="menu-item"><a href="#about" class="nav-link" data-effect="About">SOBRE</a></li>
								<li class="menu-item has-sub">
									<a href="#pages" class="nav-link" data-effect="Pages">Pages</a>

									<ul>
								        <li class="active"><a href="/">Home</a></li>
<!-- 								        <li><a href="about.html">About</a></li> -->
<!-- 								        <li><a href="styles.html">Styles</a></li> -->
<!-- 								        <li><a href="blog.html">Blog</a></li> -->
<!-- 								        <li><a href="single-post.html">Post Single</a></li> -->
<!-- 								        <li><a href="shop.html">Our Store</a></li> -->
<!-- 								        <li><a href="single-product.html">Product Single</a></li> -->
<!-- 								        <li><a href="contact.html">Contact</a></li> -->
<!-- 								        <li><a href="thank-you.html">Thank You</a></li> -->
								     </ul>

								</li>
								<li class="menu-item"><a href="/listarLivrosShop" class="nav-link" data-effect="Shop">Shop</a></li>								
								<li class="menu-item"><a href="#contact" class="nav-link" data-effect="Contact">Contato</a></li>
								
								<li class="menu-item has-sub">
									<a href="#pages" class="nav-link" data-effect="Pages">Administrativo</a>

									<ul>
								        <li class="active"><a href="/admin/cadastroLivro">Cadastrar Livro</a></li>
								        <li class="active"><a href="/admin/cadastroEditora">Cadastrar Editora</a></li>
								        <li class="active"><a href="/admin/cadastroCategoria">Cadastrar Categoria</a></li>
								        <li class="active"><a href="/admin/cadastroAutor">Cadastrar Autor</a></li>								        
								     </ul>

								</li>
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