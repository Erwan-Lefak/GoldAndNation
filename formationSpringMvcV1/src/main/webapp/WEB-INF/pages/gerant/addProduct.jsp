<%@page import="model.Categorie"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">

<title>Manager - Administration - Ajout nouveau produit</title>
</head>
<body>
	<!-- header -->
	<jsp:include page='../includes/nav-manager.jsp' />
	<!-- fin header -->
	<!-- content -->
	<h1 class="display-4 text-primary">Ajout d'un nouveau produit</h1>
	<div class="container">
		<div class="row">
			<form:form class="form-horizontal" action="" method="post"
				modelAttribute="article" style="width: 50%; margin: auto;">
				<fieldset>
					<div class="form-group">
						<label for="nom">Nom</label>
						<form:input id="nom" name="nom" type="text" placeholder="Nom"
							class="form-control input-md" required="" path="nom" />
						<label for="prixHT">Prix</label>
						<form:input id="prixHT" name="prixHT" type="number"
							placeholder="prixHT" class="form-control input-md" required=""
							path="prixHT" />
						<label for="desctription">Description</label>
						<form:input id="desctription" name="desctription" type="text"
							placeholder="description" class="form-control input-md"
							path="description" />
						<label for="type">Type</label>
						<form:select path="Type" class="form-control">
							<form:options />
						</form:select>
						
						<label for="stock">Stock</label>
						<form:input id="stock" name="stock" type="stock"
							placeholder="Stock" class="form-control input-md" required=""
							path="stock" />
							<form:input id="image" name="image" type="text"
							placeholder="image" class="form-control input-md"
							path="image" />
					</div>

 					
   					<form:select path="categories" items="${categories}" multiple="true" itemValue="id"
 
						itemLabel="nom" class="form-control input-sm" />



					<button type="submit" class="btn btn-primary">Ajouter</button>
			</form:form>

		</div>
	</div>
	<!-- footer -->
	<jsp:include page='../includes/footer.jsp' />
	<!-- footer end -->

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>