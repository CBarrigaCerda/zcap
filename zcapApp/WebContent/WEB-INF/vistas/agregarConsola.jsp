<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>
<jsp:include page="../templates/header.jsp"></jsp:include>

<main class="container mt-6">

	<c:if test="${mensaje != null}">
		<div class="columns mb-6 is-centered">
			<div class="column is-6">
				<div class="notification is-info">
					<p>${mensaje}</p>
				</div>
			</div>
		</div>
	</c:if>

	<c:if test="${errores != null}">
		<div class="columns mb-6 is-centered">
			<div class="column is-6">
				<div class="notification is-danger">
					<p>Existen errores que debe corregir</p>
					<div class="content">
						<ul>
							<c:forEach var="error" items="${errores }">
								<li>${error }</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</c:if>

	<div class="columns is-centered">
		<div class="column is-6">
			<form method="POST" action="AgregarConsolaController.do">
				<div class="card">
					<div class="card-header has-background-warning">
						<span class="card-header-tittle">Agregar Consola</span>
					</div>
					<div class="card-content">
						<div class="field">
							<label class="label" for="nombre-txt">Nombre</label>
							<div class="control">
								<input type="text" class="input" id="nombre-txt"
									name="nombre-txt" />
							</div>
						</div>
						<div class="field">
							<label class="label">Marca</label>
							<div class="control">
								<div class="select">
									<select name="marca-select" id="marca-select">
										<option>Microsoft</option>
										<option>Sony</option>
										<option>Nintendo</option>
									</select>
								</div>
							</div>
						</div>
						<div class="field">
							<label class="label" for="anio-txt">Año de Lanzamiento</label>
							<div class="control">
								<input type="number" name="anio-txt" id="anio-txt" class="input" />
							</div>
						</div>
					</div>
					<div class="card-footer">
						<div class="card-footer-item">
							<button type="submit" class="button is-primary">Registrar</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</main>

</body>
</html>