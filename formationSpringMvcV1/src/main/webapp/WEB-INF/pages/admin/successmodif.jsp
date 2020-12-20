<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href='<c:url value="/resources/css/rotating-card.css" />'
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">

<title>Commande - Succes</title>
</head>
<style>
.panierIcon {
	border-radius: 15px;
	border: none;
	font-weight: bold;
	width: 15px;
	heigth: 15px;
	z-index: unset;
	text-align: center;
	padding: 1px;
	background-color: #888;
	margin-bottom: 5px;
	margin-top: 5px
}

.panierIcon:hover {
	background-color: #DDD
}

.panierButton {
	border-radius: 5px;
	margin: 20px;
	border: none;
}

.panierButton:hover {
	background-color: #FAA
}
</style>
<body>
	<!-- navbar -->

	<!-- header -->
	<jsp:include page='../includes/nav-admin.jsp' />
	<!-- fin header -->

	<!--  content -->
	<content class="container">
	<div class="alert alert-success" role="alert">Modifications prisent en compte</div>
	<div style ="margin-left: 37%;">
	<form action="<c:url value='/deco/after'/>" method="post">
		<button type="submit" name="continue" value="continue" class="btn btn-outline-primary">Effectuer
			un nouvel achat</button>
		<button type="submit" name="stop" value="stop" class="btn btn-outline-primary">Deconnexion</button>
	</form>
	</div>
	
	
	</content>


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