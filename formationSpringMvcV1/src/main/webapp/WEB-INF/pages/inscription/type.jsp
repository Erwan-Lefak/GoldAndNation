<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<jsp:include page='../includes/navbar-login.jsp' />
	<!-- fin header -->
	<br><br><br><br>
	<div class="container">
		
		
			<!-- <div class="alert alert-success" role="alert">Bienvenue dans
				lespace Gérant</div> -->
				
			<div class ="jumbotron">
			<p>Désirez vous vous inscrire entant que particulier ou entant qu'entreprise ?</p>
			 <div class="form-group">
			 
			<form:form class="form-horizontal" action="" method="post"
				modelAttribute="user" style="width: 50%; margin: auto;">
				<button type="submit" name="ent" value="ent" class="btn btn-primary" style="margin-right:15px;">Entreprise</button>
				<button type="submit" name="part" value="part" class="btn btn-secondary" >Particulier</button>
			</form:form>
			</div>
			</div>
			

		
</body>
</html>