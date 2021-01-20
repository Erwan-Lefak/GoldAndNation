
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<link href='<c:url value="/resources/css/rotating-card.css" />'
	rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">    

<title>Historique</title>
</head>
<style>
	.panierIcon {
	border-radius: 15px; border: none; font-weight: bold; width: 15px; heigth: 15px; z-index: unset;
	text-align: center; padding: 1px; background-color: #888; margin-bottom: 5px; margin-top: 5px
	}
	.panierIcon:hover {
	background-color: #DDD
	}
</style>
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
	<h1 class="display-4 text-primary">Historique des commandes</h1>
	 <table class="table">
    <thead>
      <tr>
        <th>Numéro de commande</th>
        <th>Prix</th>
        <th>Détails</th>
      </tr>
    </thead>
    <tbody>
     <c:forEach items = "${commandes}" var="commande">
        <tr>
        <td>${commande.id}</td>
        <td>${commande.prix}</td>
        <td><a class="btn btn-info"  href="<c:url value='/user/details/${commande.id}'/>">Afficher</a></td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
  </div>


 
	
	<!-- footer -->
	<jsp:include page='../includes/footer.jsp' />
	<!-- footer end -->
	
		

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>