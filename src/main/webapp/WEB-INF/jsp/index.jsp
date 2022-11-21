<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AB Livros</title>
    <link rel="stylesheet" href="/resources/css/css-home/ablivraria.css">
    <link rel="stylesheet" href="/resources/css/css-home/reset.css">

</head>
<header class="header">
    <a href="http://localhost:8080/"><img class="logoab" src="/resources/css/css-home/livro1.png"></a>
    <div class="buscador">
    <form:form action="${s:mvcUrl('HC#buscarPorTitulo').build()}" method="POST" modelAttribute="livro">
    	<form:input path="tituloLivro" class="search" type="search" name="search" placeholder="Buscar"/>        
        <input class="botao" type="submit" value="filtrar">
        </form:form>
    </div>
    <img class="car" src="/resources/css/css-home/carrinho.png">
</header>

<body>

    <input type="checkbox" id="check">
    <label for="check">
        <img class="riscomenu" src="riscomenu.png">
    </label>
    <nav>
        <ul>
            <li><a href="">Autor</a></li>
            <li><a href="">Editora</a></li>
            <li><a href="">Categoria</a></li>
        </ul>
    </nav>
    <div>
        <main>

            <ul class="produtos">
            <c:forEach items="${livros}" var="livro">
                <li>
                    <h2></h2>
                    <img class="book" src="${livro.fotoLivro}">
                    <p class="descricaoproduto"></p>
                    <p class="precodoproduto">${livro.tituloLivro}</p>
                    <p class="precodoproduto">${livro.precoLivro}</p>
                    <button>COMPRAR</button>
                </li>
               </c:forEach>             
            </ul>

        </main>
    </div>
<!--     <div> -->
<!--         <footer> -->
<!--             <img class="rodape" src="livro1.png" alt="Logo da AB Livraria"> -->
<!--             <p class="cpr">&copy; Copyright AB Livraria - 2022</p> -->
<!--         </footer> -->
<!--     </div> -->

</body>

</html>