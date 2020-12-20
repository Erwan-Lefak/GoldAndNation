<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">

<title>Manager - Administration - Liste des produits</title>
</head>
<body>
<!-- header -->
	<jsp:include page='../includes/nav-manager.jsp' />
	<!-- fin header -->
	
	<h1 class="display-4 text-primary ">Liste des produits</h1>
	<a class="btn btn-primary float-right" style="margin-right: 15px;" href="<c:url value='/gerant/addProduct/'/> ">Ajouter un gérant</a>
	
	</br>
	<div class="container">
	 <table class="table">
    <thead>
      <tr>
        <th>#id</th>
        <th>Nom</th>
        <th>Prix HT</th>
        <th>Description</th>
        <th>Stock</th>
      </tr>
    </thead>
    <tbody>
     <c:forEach items = "${listProducts}" var="product">
        <tr>
        <td>${product.id}</td>
        <td>${product.nom}</td>
        <td>${product.prixHT}</td>
        <td>${product.description}</td>
        <td>${product.stock}</td>
        <td><a class="btn btn-info "  href="<c:url value='/gerant/edit/product/${product.id}'/> ">Editer</a></td>
        <td><a class="btn btn-danger "  href="<c:url value='/gerant/delete/product/${product.id}'/> ">Supprimer</a></td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
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