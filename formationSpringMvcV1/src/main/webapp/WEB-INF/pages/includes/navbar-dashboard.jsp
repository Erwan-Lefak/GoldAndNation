<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav id="sidebar" class="sidebar-wrapper">
	<div class="sidebar-content">
		<div class="sidebar-brand">
			<a href="<c:url value='/article/accueil'/>" target="_blank">Gold&Nation</a>
			<div id="close-sidebar">
				<i class="fas fa-times"></i>
			</div>
		</div>
		<div class="sidebar-header">
			<div class="user-pic">
				<img class="img-responsive img-rounded"
					src="https://raw.githubusercontent.com/azouaoui-med/pro-sidebar-template/gh-pages/src/img/user.jpg"
					alt="User picture">
			</div>
			<div class="user-info">
				<span class="user-name">${ sessionScope.user.prenom } <strong>${ sessionScope.user.nom }</strong>
				</span> <span class="user-role">${ sessionScope.user.role }</span> <span
					class="user-status"> <i class="fa fa-circle"></i> <span>

						<c:if test="${ not empty sessionScope.user }">
		Connecté
	</c:if> <c:if test="${ empty sessionScope.user }">
		Veuillez vous connecté sur Gold&Nation.com
	</c:if>

				</span>
				</span>
			</div>
		</div>
		<!-- sidebar-header  -->
		<div class="sidebar-search">
			<div>
				<div class="input-group">
					<input type="text" class="form-control search-menu"
						placeholder="Search...">
					<div class="input-group-append">
						<span class="input-group-text"> <i class="fa fa-search"
							aria-hidden="true"></i>
						</span>
					</div>
				</div>
			</div>
		</div>
		<!-- sidebar-search  -->
		<div class="sidebar-menu">
			<ul>
				<li class="header-menu"><span>General</span></li>
				<li class="sidebar-dropdown"><a
					href="<c:url value='/profil/dashboard/'/>"> <i
						class="fa fa-tachometer-alt"></i> <span>Dashboard</span>
				</a>
					<div class="sidebar-submenu"></div></li>
				<li class="sidebar-dropdown"><a
					href="<c:url value='/profil/planning/'/>"> <i
						class="fa fa-shopping-cart"></i> <span>Planning</span>
				</a></li>
				<li class="sidebar-dropdown"><a href="<c:url value='/profil/liste/'/>"> <i
						class="far fa-gem"></i> <span>Liste</span>
				</a></li>
				<li class="sidebar-dropdown"><a href="<c:url value='/profil/grade/'/>"> <i
						class="fa fa-chart-line"></i> <span>Grade</span>
				</a></li>
				<li class="sidebar-dropdown"><a href="<c:url value='/profil/support/'/>"> <i
						class="fa fa-globe"></i> <span>Support</span>
				</a></li>
				<li class="header-menu"><span>Extra</span></li>
				<li><a href="<c:url value='/profil/documentation/'/>"> <i class="fa fa-book"></i>
						<span>Documentation</span>
				</a></li>
			</ul>
		</div>
		<!-- sidebar-menu  -->
	</div>
	<!-- sidebar-content  -->
	<div class="sidebar-footer"></div>
</nav>