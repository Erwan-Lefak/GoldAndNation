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

<title>Conseil</title>
</head>
<style>

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
	<br>
	<br>
	
	<div class="alert alert-warning" role="alert" style="width: 50%; margin:auto">Nos meilleurs ventes !!! </div>
	
	<br>
	<br>
	
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="width: 50%; margin:auto">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner" style=" width: 500px;">
    <div class="carousel-item active" style=" margin-top: 0px; margin-left: 30px">
<A href="<c:url value='/static/carto'/>"><img class="mx-auto" width="450px" src="<c:url value="/resources/images/${article1.image  }" />" alt="First slide"></A>    
	<div style="width: 450px;"><h3 >${article1.nom }</h3></div>
	   		 <div class="stats-container text-center">
		<form action="" method="post">
			<button class="btn btn-info" type="submit" name="articleId" value="${ article1.id }">Ajouter au panier</button>
		</form>
		</div>
	</div>
    <div class="carousel-item" style=" margin-top: 60px; ">
<A href="#"><img class="mx-auto" width="450px" src="<c:url value="/resources/images/${article2.image  }" />" alt="Second slide"></A>
    <h3 style="">${article2.nom }</h3>
   		 <div class="stats-container text-center">
		<form action="" method="post">
			<button class="btn btn-info" type="submit" name="articleId" value="${ article2.id }">Ajouter au panier</button>
		</form>
		</div>
    </div>
    <div class="carousel-item" style=" margin-top: 0px;">
<A href="<c:url value='/article/conseil'/>"><img class="mx-auto" width="450px" src="<c:url value="/resources/images/${article3.image  }" />" alt="First slide"></A>
    <h3>${article3.nom }</h3>
       		 <div class="stats-container text-center">
		<form action="" method="post">
			<button class="btn btn-info" type="submit" name="articleId" value="${ article3.id }">Ajouter au panier</button>
		</form>
		</div>
    </div>
    <div class="carousel-item" style=" margin-top: 60px;">
<A href="<c:url value='/article/bestOf'/>"><img class="mx-auto p-5" width="450px" src="<c:url value="/resources/images/${article4.image  }" />" alt="First slide"></A>
   <h3>${article4.nom }</h3>
      	<div class="stats-container text-center">
		<form action="" method="post">
			<button class="btn btn-info" type="submit" name="articleId" value="${ article4.id }">Ajouter au panier</button>
		</form>
		</div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

	
<%-- 	<c:if test="${ not empty sessionScope.user }"> --%>
		<script>
			document.getElementById("catalogue").style.marginLeft = "320px"
		</script>
		<div id="panier" style="height: 100%; margin-top: 60px; width: 250px; position: fixed; top: 0; left: 0; background-color: #333; overflow-x: hidden; padding-top: 10px">
			<c:if test="${ empty sessionScope.panier.lignesCommande }">
				<div style="padding: 5px 20px 5px 20px; color:#818181">Pas d'articles dans le panier</div>
			</c:if>
			<c:if test="${ not empty sessionScope.panier.lignesCommande }">
				<form action="" method="post">
					<table style="margin: 10px; color:#DDD">
					<col width="170">
					<col width="15">
					<col width="15">
					<col width="15">
					<col width="15">
						<c:forEach items="${ sessionScope.panier.lignesCommande }" var="ligne">
							<tr>
								<td>${ ligne.article.nom }</td>
								<td><button class="panierIcon" type="submit" name="moins" value="${ ligne.article.id }">-</button></td>
								<td style="text-align: center">${ ligne.quantite }</td>
								<td><button class="panierIcon" type="submit" name="plus" value="${ ligne.article.id }">+</button></td>
								<td><button class="panierIcon" type="submit" name="supp" value="${ ligne.article.id }">x</button></td>
							</tr>
						</c:forEach>
					</table>
					<div style="padding: 5px 20px 5px 20px; color:#ccc; font-weight: bold">
						Total : <fmt:formatNumber value="${ sessionScope.panier.prix }" type="currency" currencySymbol="&euro;"/>
					</div>
										<c:if test="${ not empty sessionScope.panier.lignesCommande }">
					<c:if test="${ not empty sessionScope.user }">
						<div><a href="<c:url value='/commande/save'/>" class="btn btn-info" role="button" style="margin: 20px">Passer la commande</a></div>
					</c:if> 
					</c:if>
					<c:if test="${ not empty sessionScope.panier.lignesCommande }">
					<c:if test="${ empty sessionScope.user }">
						<div><a href="<c:url value='/login/loginForm'/>" class="btn btn-info" role="button" style="margin: 20px">Login first</a></div>
					</c:if> 
					</c:if>
					
					
				</form>
			</c:if>
		</div>
<%-- 	</c:if> --%>
	
	</div>
	
	<!-- footer -->
	<jsp:include page='../includes/footer.jsp' />
	<!-- footer end -->

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>