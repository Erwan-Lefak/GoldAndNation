<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



	
	

<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
	<a class="navbar-brand" href="<c:url value='/article/accueil/'/>" ml-auto><img alt="" src="<c:url value="/resources/images/logo7.png" />"  style="width: 70px;"></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNav" aria-controls="navbarNav"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNav">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active">
			
			<a class="nav-link" href="<c:url value='/'/>">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item">
				<div class="dropdown">
					<button class="nav-link" type="link"
						id="dropdownMenuButton" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Actions</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
					
						<a class="dropdown-item" href="<c:url value='/admin/add/'/> ">Ajouter un gérant</a>
						<a class="dropdown-item" href="<c:url value='/admin/list/'/> ">Gérer les gérants</a> 

					</div>
				</div>
			</li>
		</ul>
		<div class="btn-toolbar">
			<ul class="nav navbar-nav ml-auto">
				<li><a class="btn btn-default" href="<c:url value='/login/loginForm'/>">Deconnexion</a></li>
			</ul>
		</div>
	</div>
</nav>