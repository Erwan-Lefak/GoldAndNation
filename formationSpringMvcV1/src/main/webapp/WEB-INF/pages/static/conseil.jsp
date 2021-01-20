<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<link href='<c:url value="/resources/css/rotating-card.css" />'
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">

<title>Conseil</title>
<style>
.blog-banner h1 {
	text-align: center;
	color: #000000;
	font-size: 30px;
	font-weight: bold;
	margin-top: 44px;
}

.blog-banner p {
	color: #000000;
	font-size: 18px;
	margin-bottom: 44px;
}

.card-blog h1 {
	font-size: 20px;
	color: #ff4b68;
	text-transform: upcase;
}

.card-blog p {
	font-size: 16px;
	text-transform: upcase;
	color: #000000;
}

.card-blog a:hover {
	color: #ff4b68;
	text-decoration: none;
}

.date {
	font-size: 18px;
}

.card-blog-polaroid {
	min-height: 560px;
	max-height: 700px;
	background: white;
	padding: 7px;
	margin-top: 10px;
	border-radius: 3px;
	box-shadow: 0px 3px 5px rgba(0, 0, 0, 0.1);
	position: relative;
}

.card-blog-polaroid img {
	-o-object-fit: cover;
	object-fit: cover;
	width: 100%;
}
</style>
</head>
<body class="site">
	<!-- navbar -->

	<!-- navbar end -->
	<c:if test="${ not empty sessionScope.user }">
		<jsp:include page='../includes/navbar-logged.jsp' />
	</c:if>
	<c:if test="${ empty sessionScope.user }">
		<jsp:include page='../includes/navbar.jsp' />
	</c:if>

	<!--  content -->

	<div class="site-content">
		<div class="container text-center">
			<div class="row">
				<div
					class="col-sm-8 col-sm-offset-2 col-xs-12 blog-content text-center margin-50-top">
				</div>
			</div>
		</div>

		<div class="blog-banner">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<h1>Paris Truck</h1>
						<p>Envie de mieux connaître Paris Truck et de suivre son
							évolution ? Retrouvez notre actualité au travers d’articles
							destinés aussi bien au grand public qu’aux Food Truckers&nbsp;:
							analyses des concepts montants, conseils pour le choix des repas,
							pour la gestion d’une activité de Food Truck ainsi que des guides
							pour mieux se vendre et bien plus encore&nbsp;!</p>
					</div>
				</div>
			</div>
		</div>
		<div class="container margin-50-top">
			<div class="row">
				<div class="col-xs-12 col-md-6">
					<div class="padded-50-top margin-bottom-50">
						<div class="card-blog">
							<a href="#"> </a>
							<div class="card-blog-polaroid">
								<a
									href="https://www.wearesportlab.fr/nutrition/les-fruits-vrais-ou-faux-amis/">
									<img width="545" height="320"
									src="https://res.cloudinary.com/foodtruckagency/image/upload/c_fill,h_320,q_auto:low,w_545/v1548346646/dz0ebiawfsd5sjcsboju.png"
									alt="Dz0ebiawfsd5sjcsboju">
									<div class="card-blog-infos">
										<i class="fa fa-truck"></i>
									</div>
								</a>
								<div class="card-blog-category">
									<a
										href="https://www.wearesportlab.fr/nutrition/les-fruits-vrais-ou-faux-amis/">
										<h1>Les légumes : vrais ou faux amis ?</h1>
										<div class="date">15 Janvier 2020</div>
										<p>On les pense d'une bonté infaillible à notre égard,
											légumes le sont-ils de vrais ou faux amis ? Découvrez leurs
											moindres secrets dans ce nouvel article !</p>
									</a>
									<div class="text-center">
										<a
											href="https://www.wearesportlab.fr/nutrition/les-fruits-vrais-ou-faux-amis/">
										</a><a
											href="https://www.wearesportlab.fr/nutrition/les-fruits-vrais-ou-faux-amis/">Lire
											la suite</a>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="col-xs-12 col-md-6">
					<div class="padded-50-top margin-bottom-50">
						<div class="card-blog">
							<a href="https://www.youtube.com/watch?v=X_biAw34sm4"> </a>
							<div class="card-blog-polaroid">
								<a href="https://www.youtube.com/watch?v=X_biAw34sm4"> <img
									width="545" height="320"
									src="https://res.cloudinary.com/foodtruckagency/image/upload/c_fill,h_320,q_auto:low,w_545/v1532093634/vmjg1dszsl3jdnr1a1lu.jpg"
									alt="Vmjg1dszsl3jdnr1a1lu">
									<div class="card-blog-infos">
										<i class="fa fa-truck"></i>
									</div>
								</a>
								<div class="card-blog-category">
									<a href="https://www.youtube.com/watch?v=X_biAw34sm4">
										<h1>Un régime sain pour un esprit sain</h1>
										<div class="date">20 Janvier 2020</div>
										<p>Depuis peu nous connaissons l'influence qu'a un régime
											sain sur notre esprit. Quels sont les aliments qui peuvent
											nous aider lors d'une dépression et à quel point sont-ils
											efficaces?</p>
									</a>
									<div class="text-center">
										<a href="https://www.youtube.com/watch?v=X_biAw34sm4"> </a><a
											href="https://www.youtube.com/watch?v=X_biAw34sm4">Voir
											la vidéo</a>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="col-xs-12 col-md-6">
					<div class="padded-50-top margin-bottom-50">
						<div class="card-blog">
							<a href="https://fr.wikipedia.org/wiki/Cuisine_italienne"> </a>
							<div class="card-blog-polaroid">
								<a href="https://fr.wikipedia.org/wiki/Cuisine_italienne"> <img
									width="545" height="320"
									src="https://res.cloudinary.com/foodtruckagency/image/upload/c_fill,h_320,q_auto:low,w_545/v1531931589/jubjol43f2ihqx9gwtbx.jpg"
									alt="Jubjol43f2ihqx9gwtbx">
									<div class="card-blog-infos">
										<i class="fa fa-truck"></i>
									</div>
								</a>
								<div class="card-blog-category">
									<a href="https://fr.wikipedia.org/wiki/Cuisine_italienne">
										<h1>La cuisine italienne</h1>
										<div class="date">26 Janvier 2020</div>
										<p>Connaissons-nous bien la vraie cuisine italienne ? Dans
											cet article, nous allons lever le voile sur les nombreux
											clichés qu'on lui concède.</p>
									</a>
									<div class="text-center">
										<a href="https://fr.wikipedia.org/wiki/Cuisine_italienne">
										</a><a href="https://fr.wikipedia.org/wiki/Cuisine_italienne">Lire
											la suite</a>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="col-xs-12 col-md-6">
					<div class="padded-50-top margin-bottom-50">
						<div class="card-blog">
							<a href="https://fr.wikipedia.org/wiki/Hot-dog"> </a>
							<div class="card-blog-polaroid">
								<a href="https://fr.wikipedia.org/wiki/Hot-dog"> <img
									width="545" height="320"
									src="https://res.cloudinary.com/foodtruckagency/image/upload/c_fill,h_320,q_auto:low,w_545/v1530714640/l7sv4oaqhlkma6xzykuc.jpg"
									alt="L7sv4oaqhlkma6xzykuc">
									<div class="card-blog-infos">
										<i class="fa fa-truck"></i>
									</div>
								</a>
								<div class="card-blog-category">
									<a href="https://fr.wikipedia.org/wiki/Hot-dog">
										<h1>L'histoire et l'évolution du hot dog</h1>
										<div class="date">1er Février 2020</div>
										<p>Le hot dog est un produit issu de l'immigration et,
											tout comme le hamburger, de la mondialisation. Quelle est
											l'histoire de ce fameux "roll" qui nous ramène jusqu'au XIIIe
											siècle?</p>
									</a>
									<div class="text-center">
										<a href="https://fr.wikipedia.org/wiki/Hot-dog"> </a><a
											href="https://fr.wikipedia.org/wiki/Hot-dog">Lire la
											suite</a>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="col-xs-12 col-md-6">
					<div class="padded-50-top margin-bottom-50">
						<div class="card-blog">
							<a href="https://fr.wikipedia.org/wiki/Restauration_rapide">
							</a>
							<div class="card-blog-polaroid">
								<a href="https://fr.wikipedia.org/wiki/Restauration_rapide">
									<img width="545" height="320"
									src="https://res.cloudinary.com/foodtruckagency/image/upload/c_fill,h_320,q_auto:low,w_545/v1528710535/l8sfsx4193e2bgtquphf.jpg"
									alt="L8sfsx4193e2bgtquphf">
									<div class="card-blog-infos">
										<i class="fa fa-truck"></i>
									</div>
								</a>
								<div class="card-blog-category">
									<a href="https://fr.wikipedia.org/wiki/Restauration_rapide">
										<h1>La restauration rapide, une affaire de génération ?</h1>
										<div class="date">18 Février 2020</div>
										<p>Depuis les baby-boomers, les gouts ont bien changés....
											Notamment dans la restauration! Que ce soit par souci de
											rapidité ou de qualité le secteur est en constante évolution.</p>
									</a>
									<div class="text-center">
										<a href="https://fr.wikipedia.org/wiki/Restauration_rapide">
										</a><a href="https://fr.wikipedia.org/wiki/Restauration_rapide">Lire
											la suite</a>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="col-xs-12 col-md-6">
					<div class="padded-50-top margin-bottom-50">
						<div class="card-blog">
							<a href="https://www.youtube.com/watch?v=FOzZ60lA4XY"> </a>
							<div class="card-blog-polaroid">
								<a href="https://www.youtube.com/watch?v=FOzZ60lA4XY"> <img
									width="545" height="320"
									src="https://res.cloudinary.com/foodtruckagency/image/upload/c_fill,h_320,q_auto:low,w_545/v1528379993/ovprlcnwofulrdbozcug.jpg"
									alt="Ovprlcnwofulrdbozcug">
									<div class="card-blog-infos">
										<i class="fa fa-truck"></i>
									</div>
								</a>
								<div class="card-blog-category">
									<a href="https://www.youtube.com/watch?v=FOzZ60lA4XY">
										<h1>Les aliments à privilégier après le sport</h1>
										<div class="date">1er Mars 2020</div>
										<p>Que manger après l'effort? Paris Truck vous propose
											quelques aliments qui vous permettront de récupérer tout en
											gardant votre ligne .</p>
									</a>
									<div class="text-center">
										<a href="https://www.youtube.com/watch?v=FOzZ60lA4XY"> </a><a
											href="#https://www.youtube.com/watch?v=FOzZ60lA4XY">Voir
											vidéo</a>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>

			</div>
		</div>

	</div>

	<script type="text/javascript" async=""
		src="https://snap.licdn.com/li.lms-analytics/insight.min.js"></script>
	<script async="" src="https://www.google-analytics.com/analytics.js"></script>
	<script
		src="/assets/application-2c1569034d3c96c11ccce9c3d6a9dc7f402f1853a0de88d7a94a37e2d795834e.js"></script>
	<script src="/packs/application-8ed494e6ceb66b29d5e0.js"></script>


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