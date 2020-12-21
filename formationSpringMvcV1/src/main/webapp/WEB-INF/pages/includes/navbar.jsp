<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top" >
  <a class="navbar-brand" href="#" ml-auto>	<a class="navbar-brand" href="<c:url value='/article/accueil/'/>" ml-auto><img alt="" src="<c:url value="/resources/images/logo8.png" />"  style="width: 70px;"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="<c:url value='/'/>">Accueil <span class="sr-only">(current)</span></a>
      </li>
      <%-- <li class="nav-item active">
        <a class="nav-link" href="<c:url value='/article/articles/'/>">Catalogue <span class="sr-only">(current)</span></a>
      </li> --%>
      <li class="nav-item active">
        <a class="nav-link" href="<c:url value='/article/articles/'/>">Service <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="<c:url value='/'/>">OmegaPro <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="<c:url value='/partenaire/partenaires'/>">Partenaires <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="<c:url value='/'/>">Temoignages <span class="sr-only">(current)</span></a>
      </li>
      
      <%-- <li class="nav-item">
				<div class="dropdown">
					<button class="nav-link" type="button"
						id="dropdownMenuButton" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false" 
						style="border-radius: 5px; border: none; background-color: #ccc; color: #111">
						Catégories</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
					<a class="dropdown-item" href="<c:url value='/article/articles/'/>">Toutes</a> 
					<c:forEach items="${categories}" var="categorie">
						<a class="dropdown-item" href="<c:url value='/article/categorie/'/>${categorie.id}">${categorie.nom}</a> 
						</c:forEach>
					</div>
				</div>
			</li> --%>
    </ul>
    <div class="btn-toolbar">
     <ul class="nav navbar-nav ml-auto">
        <li><a class="btn btn-default" href="<c:url value='/inscription/pre'/>">Inscription</a></li>
        <li><a class="btn btn-default" href="<c:url value='/login/loginForm'/>">Connexion</a></li>
      </ul>
      </div>
  </div>
</nav>