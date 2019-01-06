
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<title>Desafio - Home</title>
<style type="text/css">
body {
	padding-top: 5rem;
}

.starter-template {
	padding: 3rem 1.5rem;
	text-align: center;
}
</style>
</head>
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
			<li class="nav-item active"><a class="nav-link" href="home">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="filmes">Pesquisar</a></li>
		</ul>
	</div>
	</nav>
	<main role="main" class="container">

	<div class="starter-template">
		<h1>Desafio Maven-Inventing </h1>
		<p class="lead">
			
		</p>
	</div>

	</main>
	<script src="${contextPath}resources/js/jquery-3.3.1.slim.min.js"></script>
	<script src="${contextPath}resources/js/bootstrap.min.js"></script>
	<script src="${contextPath}resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>