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
				<li class="nav-item active"><a class="nav-link" href="/desafio/filmes">Pesquisar</a></li>
			</ul>
		</div>
	</nav>
	<div role="main" class="container-fluid">
		<div class="card">
			<div class="card-body">
				<div class="row">
					<div class="col-sm-3">
						<img src="${filme.poster}" class="img-thumbnail" title="${filme.title}" alt="${filme.title}" >
					</div>
					<div class="col-sm-9">
						<h3>${filme.title} <small>(${filme.year})</small></h3> 
						<strong>Diretor: </strong> ${filme.director}<br/>
						<strong>País:</strong>${filme.country}<br/>
						<strong>Tempo de duração:</strong>${filme.runtime}<br/>
						<strong>Descrição do enredo (plot):</strong>${filme.plot}<br/>
					</div>
				</div>
				<div class="row justify-content-end">
					<div class="col-sm-2 text-right">
						<form action="/desafio/filmes" method="post">
							<input  type="hidden" value="${search}" name="title"></input> 
							<button type="submit" value="voltar" class="btn btn-primary">Voltar</button>
						</form>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	<script src="${contextPath}resources/js/jquery-3.3.1.slim.min.js"></script>
	<script src="${contextPath}resources/js/bootstrap.min.js"></script>
	<script src="${contextPath}resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>