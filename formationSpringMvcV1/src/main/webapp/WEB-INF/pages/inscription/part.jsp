<%@page import="model.Role"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="client" value="<%=Role.Client%>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">

<title>Site - Inscription</title>
</head>
<body>
	<!-- header -->
	<jsp:include page='../includes/navbar.jsp' />
	<!-- fin header -->
	<!-- content -->
	<h1 class="display-4 text-primary">Inscription</h1>
	<div class="container">
		<div class="row">
			<form:form class="form-horizontal" action="" method="post"
				modelAttribute="user" style="width: 50%; margin: auto;">
				<fieldset>
					<div class="form-group">
						<form:input id="role" name="role" class="form-control input-md"
							required="true" path="Role" value="${client}" type="hidden" />
						<form:input id="role1" name="role1" class="form-control input-md"
							required="true" path="Role" value="${client}" disabled="true" />
					</div>
					<div class="form-group">
						<label for="email">Email address</label>
						<form:input type="email" class="form-control" id="email"
							path="email" required="true" />
					</div>
					<div class="form-group">
						<label for="nom">Nom</label>
						<form:input id="nom" name="nom" type="text"
							class="form-control input-md" required="true" path="nom" />
					</div>
					<div class="form-group">
						<label for="prenom">Prenom</label>
						<form:input id="prenom" name="prenom" type="text"
							class="form-control input-md" required="true" path="prenom" />
					</div>
					<div class="form-group">
						<label for="password">Mot de passe</label>
						<form:input id="password" name="password" type="password"
							class="form-control input-md" required="true" path="password" />
					</div>
					<div class="form-group">
						<label for="parrain">Parrain / Marraine</label>
						<form:input id="parrain" name="parrain" type="text"
							class="form-control input-md" required="true" path="parrain" />
					</div>

					<fieldset>
						<label><b>Adresse</b></label>
						<div class="form-group">
							<label for="rue">Rue</label>
							<form:input id="rue" name="rue" type="text"
								class="form-control input-md" required="" path="adresse.rue" />
						</div>
						<div class="form-group">
							<label for="numero">Numero</label>
							<form:input id="numero" name="numero" type="number"
								class="form-control input-md" required="" path="adresse.numero" />
						</div>
						<div class="form-group">
							<label for="ville">Ville</label>
							<form:input id="ville" name="ville" type="text"
								class="form-control input-md" required="" path="adresse.ville" />
						</div>
						<div class="form-group">
							<label for="codePostal">Code postal</label>
							<form:input id="codePostal" name="codePostal" type="number"
								class="form-control input-md" required=""
								path="adresse.codePostal" />
							<label for="pays">Pays</label>
							<form:input id="pays" name="pays" type="text"
								class="form-control input-md" required="" path="adresse.pays" />
						</div>
					</fieldset>

					<br>

					<fieldset>
						<h2>Objectif à l'année</h2>
						<hr>



						<div class="form-group">
							<label for="gradevise">Grade visé en Décembre 2021</label>
							<form:input id="gradevise" name="gradevise" type="text"
								class="form-control" value="" required="true"
								path="objectif.gradevise" placeholder="Ex: Diamond" />
						</div>

						<div class="form-group">
							<div class="form-group">
								<label for="revsouhaite">Revenu souhaité en Décembre
									2021 (en $/mois)</label>
								<form:input id="revsouhaite" name="revsouhaite" type="number"
									class="form-control" value="" required="true"
									path="objectif.revsouhaite" />
							</div>
						</div>

						<div class="form-group">
							<label for="persparraine">Nombre de personnes parrainées
								en 2021</label>
							<form:input id="persparraine" name="persparraine" type="number"
								class="form-control" value="" required="true"
								path="objectif.persparraine" />
						</div>

						<br> <br> <br>
						<h2>Objectif au mois</h2>
						<hr>

						<div class="form-group">
							<label for="persinvitem">Nombre de personnes invitées par
								mois</label>
							<form:input id="persinvitem" name="persinvitem" type="number"
								class="form-control" value="" required="true"
								path="objectif.persinvitem" />
						</div>
						<div class="form-group">
							<label for="persparraine">Nombre de personnes parrainé
								par mois</label>
							<form:input id="persparraine" name="persparraine" type="number"
								class="form-control" value="" required="true"
								path="objectif.persparraine" />
						</div>



						<br> <br> <br>
						<h2>Objectif à la semaine</h2>
						<hr>
						<div class="form-group">
							<label for="persinvites">Nombre de personnes invitées par
								semaine</label>
							<form:input id="persinvites" name="persinvites" type="number"
								class="form-control" value="" required="true"
								path="objectif.persinvites" />
						</div>
						<div class="form-group">
							<label for="formationassist">Nombre de formations
								assistées par semaine</label>
							<form:input id="formationassist" name="formationassist"
								type="number" class="form-control" value="" required="true"
								path="objectif.formationassist" />
						</div>

					</fieldset>


					<button type="submit" class="btn btn-primary">S'inscrire</button>
				</fieldset>
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