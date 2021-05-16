<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- creacion de header reutilizable -->
<html>
<head>
<meta charset="UTF-8">
<title>ZCap</title>
<!-- integracion de Bulma -->
<link rel="stylesheet" href="vendor/bulma/css/bulma.min.css">
</head>
<body>
	<!-- Cabecera de pagina -->
	<header class="has-background-warning">

		<div class="columns">
			<div class="column">
				<!-- NavBar de Bulma -->
				<nav class="navbar is-warning" role="navigation"
					aria-label="main navigation">
					<div class="navbar-brand">
						<a role="button" class="navbar-burger" aria-label="menu"
							aria-expanded="false" data-target="navbarBasicExample"> <span
							aria-hidden="true"></span> <span aria-hidden="true"></span> <span
							aria-hidden="true"></span>
						</a>
					</div>
					<!-- Elementos de barra de navegacion -->
					<div id="navbarBasicExample" class="navbar-menu">
						<div class="navbar-start">
							<a class="navbar-item" href="index.jsp"> Home </a>
							<div class="navbar-item has-dropdown is-hoverable">
								<a class="navbar-link"> Consolas </a>

								<div class="navbar-dropdown">
									<a class="navbar-item" href="AgregarConsolaController.do"> Registrar </a>
									<a class="navbar-item"> Ver </a>
								</div>
							</div>
							<div class="navbar-item has-dropdown is-hoverable">
								<a class="navbar-link"> Juegos </a>

								<div class="navbar-dropdown">
									<a class="navbar-item"> Registrar </a> <a class="navbar-item">
										Ver </a>
								</div>
							</div>
						</div>
					</div>
				</nav>
			</div>
		</div>
	</header>