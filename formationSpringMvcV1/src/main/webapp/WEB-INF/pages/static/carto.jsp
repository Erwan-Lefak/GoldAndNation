

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

<title>Cartographie</title>
</head>
<body>
	<!-- navbar -->
	
	<!-- navbar end -->
	<c:if test="${ not empty sessionScope.user }">
		<jsp:include page='../includes/navbar-logged.jsp' />
	</c:if>
	<c:if test="${ empty sessionScope.user }">
		<jsp:include page='../includes/navbar.jsp' />
	</c:if>
	

	<!--  content -->
	<div class="container">

		
			<div class="alert alert-warning" role="alert">Nous trouver dans Paris =) </div>

	
	
	<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#carte1" role="tab" aria-controls="home" aria-selected="true">Lundi-Mardi</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#carte2" role="tab" aria-controls="profile" aria-selected="false">Merc-Jeudi</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#carte3" role="tab" aria-controls="contact" aria-selected="false">Vendredi</a>
  </li>
    <li class="nav-item">
    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#carte4" role="tab" aria-controls="contact" aria-selected="false">WeekEnd</a>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
  <div  style="width: 400px;" class="tab-pane fade show active" id="carte1" role="tabpanel" aria-labelledby="home-tab">
  <h3>Lundi et Mardi :</h3>
  <p>"30 rue de Malte, 75011 Paris."</p>
  <img alt="cheh" src="<c:url value="/resources/images/carte1.png" />">
  <p><b>Metros :</b> République - Oberkampf</p></div> 
  
  
  <div class="tab-pane fade" id="carte2" role="tabpanel" aria-labelledby="profile-tab">
  <h3>Mercredi et Jeudi :</h3>
  <p>"73 boulevard Poissonière, 75009 Paris."</p>
  <img alt="cheh" src="<c:url value="/resources/images/carte2.png" />">
  <p><b>Metros :</b> Grands Boulevards - Bonne Nouvelle</p></div>
  
  <div class="tab-pane fade" id="carte3" role="tabpanel" aria-labelledby="contact-tab">
  <h3>Vendredi :</h3>
  <p>"69 rue d'Aboukir, 75002 Paris."</p>
  <img alt="cheh" src="<c:url value="/resources/images/carte3.png" />">
  <p><b>Metros :</b> Châtelet - Les Halles - Sentier</p></div>
  
<div class="tab-pane fade" id="carte4" role="tabpanel" aria-labelledby="contact-tab">
<h3>Samedi et Dimanche :</h3>
  <p>"4 rue Coëtlogon, 75006 Paris."</p>
<img alt="cheh" src="<c:url value="/resources/images/carte4.png" />">
<p> <b>Metros : </b> Rennes - Montparnasse</p></div>
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

