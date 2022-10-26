<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Import da taglib -->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cadastro de pessoa</title>
</head>
<body>
	<p>${sucesso}</p>
	<div class="container">
		<form:form action="${s:mvcUrl('F#create').build()}" method="POST"
			modelAttribute="pessoa" enctype="multipart/form-data">
			<div class="form-group">
				<label>Nome</label>
				<form:input path="nome"/>
				<form:errors path="nome" />
			</div>
			<div class="form-group">
				<label>Idade</label>
				<form:input path="idade"/>
				<form:errors path="idade" />
			</div>
			<div class="form-group">
				<label>Categoria</label>
				<form:select  path="categoria">
    				<form:option value="NONE"> --SELECT--</form:option>
    				<form:options items="${categorias}" itemLabel="descricao"></form:options>
  				</form:select>
			</div>
			<div class="form-group">
				<label>Telefone celular</label>
				<input type="tel" name="telcel"/>
			</div>
			<div class="form-group">
				<label>Telefone Residencial</label>
				<input type="tel" name="telresi"/>
			</div>			
			<div class="form-group">
				<label>Foto</label> 
				<input name="imagem" type="file" />
			</div>
			<button type="submit">Cadastrar</button>
		</form:form>
	</div>
</body>
</html>