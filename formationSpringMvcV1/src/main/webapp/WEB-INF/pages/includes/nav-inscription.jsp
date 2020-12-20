<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
 	<a class="navbar-brand" href="<c:url value='/article/accueil/'/>" ml-auto><img alt="" src="<c:url value="/resources/images/logo7.png" />"  style="width: 70px;"></a>

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav mr-auto">
   <li class="nav-item active">
        <a class="nav-link" href="<c:url value='/'/>">Accueil <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#">INSCRIPTION <span class="sr-only">(current)</span></a>
      </li>
    </ul>
  </div>
</nav>