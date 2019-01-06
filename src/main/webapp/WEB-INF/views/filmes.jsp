<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<c:url value="/" var="contextPath" />
<link href="${contextPath}resources/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="${contextPath}resources/css/bootstrap-grid.min.css"
	rel="stylesheet" type="text/css" />
<link href="${contextPath}resources/css/bootstrap-reboot.min.css"
	rel="stylesheet" type="text/css" />
<title>Desafio - Pesquisar</title>
</head>
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

body {
	padding-top: 5rem;
}

.starter-template {
	padding: 3rem 1.5rem;
	text-align: center;
}
</style>
<body>
	<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
		<a class="navbar-brand" href="#">Desafio</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarsExampleDefault"
			aria-controls="navbarsExampleDefault" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarsExampleDefault">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="/desafio">Home <span
						class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link" href="filmes">Pesquisar</a></li>
			</ul>
		</div>
	</nav>

	<div role="main" class="container-fluid">
		<div class="card">
			<!-- 			<div class="card-header">Pesquisar Filmes</div> -->
			<div class="card-body">
				<h5 class="card-title">Pesquisar Filmes</h5>
				<form method="post" action="?">
					<div class="form-group">
						<label for="titulo" class="col-form-label">Titulo do Filme</label>
						<input type="text" class="form-control" id="title" name="title"
							placeholder="Ex.: De volta para futuro">
					</div>
					<button type="submit" class="btn btn-success" value="Pesquisar">Pesquisar</button>
				</form>
			</div>
		</div>
		<br />
		<c:if test="${catalogo!=null}">
			<div class="card">
				<div class="card-header">Filmes</div>
				<div class="card-body text-center">
					<c:forEach var="filme" items="${catalogo.search}" varStatus="key">
						<c:if test="${key.index == 0 || key.index == 5}">
							<div class="row">
								<div class="col-sm-12">
									<div class="card-group">
						</c:if>
						<div class="card">
							<img src="${filme.poster}" class="card-img-top"
								title="${filme.title}" alt="${filme.title}"
								style="height: 300px;">
							<div class="card-body">
								<h5 class="card-title">Titulo: ${filme.title}</h5>
								<p class="card-text">Ano: ${filme.year}</p>
							</div>
							<a
								href="/desafio/filmes/detalhe?id=${filme.imdbID}&search=${search}">
								<div class="card-footer">Descrição</div>
							</a>
						</div>
						<c:if test="${ key.index == 4 ||key.index == 9}">
				</div>
			</div>
	</div>
	</c:if>
	</c:forEach>
	</div>
	</div>
	</c:if>
	</div>



	<script src="${contextPath}resources/js/jquery-3.3.1.slim.min.js"></script>
	<script src="${contextPath}resources/js/bootstrap.min.js"></script>
	<script src="${contextPath}resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>