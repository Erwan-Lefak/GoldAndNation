<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
	<a class="navbar-brand" href="<c:url value='/article/accueil/'/>" ml-auto><img alt="" src="<c:url value="/resources/images/logo9.png" />"  style="width: 70px;"></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNav" aria-controls="navbarNav"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNav">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active">
			
			
		<li class="nav-item active">
        <a class="nav-link" href="<c:url value='/'/>">Entreprise <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="<c:url value='/partenaire/partenaires'/>">Partenaires <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="<c:url value='/'/>">Temoignages <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="https://omegapro.world/" target="_blank">OmegaPro <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="<c:url value='/'/>">Tutoriels <span class="sr-only">(current)</span></a>
      </li>
		</ul>
		<div class="btn-toolbar">
			<ul class="nav navbar-nav ml-auto">
				<li style="margin: 7px 20px 10px 0px;">Bienvenue ${ sessionScope.user.prenom }</li> <!-- Bienvenue ${ sessionScope.user.prenom } -->
				<li><a class="btn btn-default" href="<c:url value='/profil/dashboard/'/>" target="_blank">Dashboard</a></li>
				<li><a class="btn btn-default" href="<c:url value='/profil/dashboard/'/>" target="_blank">Profil</a></li>
				<li><a class="btn btn-default" href="<c:url value='/deco/after'/>">Déconnexion</a></li>
			</ul>
		</div>
	</div>
</nav>