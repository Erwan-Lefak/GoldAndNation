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

<title>Catalogue</title>
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

			
		<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Article</th>
      <th scope="col">Quantité</th>
      <th scope="col">Prix</th>
      
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${sessionScope.panier.lignesCommande}" var="item">
    <tr >
      <th scope="row"><c:out value="${item.article.nom}"/></th>
      <td><c:out value="${item.quantite}"/></td>
      <td><c:out value="${item.prix}"/></td>
      
    </tr>
    </c:forEach>
  </tbody>
</table>

<br>


<form action="" method="post" id="myform">

Prix total sans promotion : ${prixsanspromo}

<br>


<c:forEach items="${promos}" var="item">
	<div><button  name="appliquerpromo"  id="appliquerpromo" type ="submit" class="btn btn-warning" value="${item.id}"  onclick="image()">  ${item.nom } % </button></div>
</c:forEach> 


<%-- <div id="imgButton"><img   src="<c:url value="/resources/images/valide.jpg" />" alt="Texte alternatif" style="display:none;" /></div> --%>

<br>

<%-- Prix total avec promo : ${panierpromo} --%>

<br>







</form>

<div><a href="<c:url value='/commande/succes'/>" class="btn btn-info" role="button" >Valider mes achats</a></div>


<%-- 	</c:if> --%>
	
	<!-- footer -->
	<jsp:include page='../includes/footer.jsp' />
	<!-- footer end -->
	
		<script type="text/javascript">
		
		//var t = true;
		
			
// 			function image(){
				
// 				console.log("lol");
				
// 				document.getElementById('myform').submit;
				
//  				document.getElementById('imgButton').style.display='inline';
				
 				

// 				document.getElementById("appliquerpromo").disabled=true;	
// 			}
			
// 			window.addEventListener('unload', function event() {
// 		        console.log('I am the 4th and last one…');
// 		      });
	
		</script>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>