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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">    

<title>Accueil</title>
</head>
<style>

.home-bottom-banner p {
    /* color: #000000; */
    font-size: 18px;
    padding-bottom: 50px;
}
.text-itemhome {
    flex: 1;
    margin-top: 50px;
    margin-bottom: 50px;
}

	.panierIcon {
	border-radius: 15px; border: none; font-weight: bold; width: 15px; heigth: 15px; z-index: unset;
	text-align: center; padding: 1px; background-color: #888; margin-bottom: 5px; margin-top: 5px
	}
	.panierIcon:hover {
	background-color: #DDD
	}
	c{

    color: #000000;
    font-size: 18px;
    padding-bottom: 50px;
    
}
	
	#carouselSection1{
	background-color: #125FC8;
    height: 400px;
    width: 100%;
    margin-left: auto;
    margin-right: auto;
    }
    
    #carouselSection2{
    height: auto;
    width: 300px;
    margin-left: auto;
    margin-right: auto;
    }
    
    p , h3 {
    text-align: center
    }
    
    .btn-nous-contacter {
    transition: all 0.3s ease;
    color: #fff;
    border: 2px solid #E6BF26;
    border-radius: 3px;
    padding: 10px 30px;
    background-color: #E6BF26;
    min-width: 300px;
}
    
    #carouselSection1 img{
    position: absolute;
    clip:rect(10px,190px,190px,10px);
    }
    
    .home-banner  {
    text-align: center;
    height: 100vh;
    background-image: url("<c:url value="/resources/images/logo19.jpg" />");
    background-size: cover;
    background-repeat: no-repeat;
    background-position: 50% 50%;
    display: flex;
    justify-content: space-around;
    align-items: center;
    margin-top: 0px;
    }
    
    .home-bottom-banner {
    min-height: 200px;
    background-color: #fff;
}

	.home-banner-mobile {
    text-align: center;
    height: 70vh;
    background-image: url("<c:url value="/resources/images/Outils.jpg" />");
    background-size: cover;
    background-repeat: no-repeat;
    background-position: 50% 50%;
    display: flex;
    justify-content: space-around;
    align-items: center;
}
    
    

.flexbox {
    width: 100%;
    display: flex;
    background-color: #fff;
}

.img-item-bloc1 {
    flex: 1;
    background-image: url("<c:url value="/resources/images/Outils.jpg" />");
    background-size: cover;
    background-position: 50% 50%;
    
}

.special {
    padding-right: 50px;
    padding-left: 50px;
}

.flexbox {
    width: 100%;
    display: flex;
    background-color: #fff;
}

.text-itemhome {
    flex: 1;
    margin-top: 50px;
    margin-bottom: 50px;
}

.text-itemhome p{
    flex: 1;
    margin-top: 50px;
    margin-bottom: 50px;
}

.home-bottom-banner {
    min-height: 200px;
    background-color: #fff;
}

.flexbox {
    width: 100%;
    display: flex;
    background-color: #fff;
}

.text-itemhome {
    flex: 1;
    margin-top: 50px;
    margin-bottom: 50px;
}

.img-item-bloc2 {
    flex: 1;
    background-image: url("<c:url value="/resources/images/foodtruck4.jpg" />");
    background-size: cover;
    background-position: 50% 50%;
}

.home-banner-content h1 {
    margin-top: 120px;
    margin-bottom: 8px;
    font-size: 38px;
    font-weight: bold;
    color: #000;
    text-align: bottom;
}

.home-banner-content p {
    font-size: 22px;
    color: black;
    margin-bottom: 16px;
}

.home-black {
    color: #000;
}
.home-bottom-banner h2 {
    color: #E6BF26;
    font-size: 30px;
    font-weight: bold;
    margin-top: 70px;
}
.testimonial {
    background-color: #E6BF26;
    color: #fff;
    padding-top: 30px;
    padding-bottom: 30px;
}

.home-btn {
    color: #fff;
    background-color: #E6BF26;
    border: 2px solid #E6BF26;
    border-radius: 3px;
    padding: 6px 16px;
    transition: all 0.3s ease;
    font-weight: bold;
    font-size: 22px;
    text-decoration: none;
}

.btn-nous-contacter-reverse {
    transition: all 0.3s ease;
    color: #E6BF26;
    border: 2px solid #fff;
    border-radius: 3px;
    padding: 10px 30px;
    background-color: #fff;
}

#footer {
    background: #333;
    padding: 30px 0;
    color: #cccccc;
    width: 100%;
}

.icono-home img {
    margin-bottom: 20px;
    width: 100px;
}

.item h3{
color: black;
}

.carousel-item{

}

.carousel-item h3{
color: black;
}

.carousel-inner{
width: 100px;
height: 100%;
margin: auto;
}

.carousel{
height:350px;
background-image: url("<c:url value="/resources/images/gray_color.jpg" />");
background-size: cover;
background-repeat: no-repeat;
margin-bottom: 30px;



}
.col-xs-12 {
    width: 100%;
}

#footer {
    background: #333;
    padding: 30px 0;
    color: #cccccc;
    width: 100%;
}

#footer a {
    color: #cccccc;
    font-size: 50px;
    letter-spacing: 2px;
    transition: color 0.5s ease;
    text-decoration: none;
}

.fa {
    display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    font-style: normal;
    font-variant-ligatures: normal;
    font-variant-caps: normal;
    font-variant-numeric: normal;
    font-variant-east-asian: normal;
    font-weight: normal;
    font-stretch: normal;
    font-size: inherit;
    line-height: 1;
    font-family: FontAwesome;
    font-size: inherit;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}

.fa-zoom:before {
    background-image: url("<c:url value="/resources/images/gray_color.jpg" />");
    background-repeat: no-repeat;
    width: 100px;
  	height: 103px;
  	padding: 0;
}

.fa-facebook-f:before, .fa-facebook:before {
    background-image: url("<c:url value="/resources/images/gray_color.jpg" />");
    
}

.fa-instagram:before {
    background-image: url("<c:url value="/resources/images/gray_color.jpg" />");
}

.fa-youtube:before {
    background-image: url("<c:url value="/resources/images/gray_color.jpg" />");
}

*:before, *:after {
    box-sizing: border-box;
}
*:before, *:after {
    box-sizing: border-box;
}

.margin-bottom-50 {
    margin-bottom: 50px;
}

.container {
    margin-right: auto;
    margin-left: auto;
    padding-left: 15px;
    padding-right: 15px;
}

div {
    display: block;
}

.text-center {
    text-align: center;
}

* {
    box-sizing: border-box;
}

.row {
    margin-left: -15px;
    margin-right: -15px;
}

ul, ol {
    margin-top: 0;
    margin-bottom: 12.5px;
}

ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}

.col-xs-12 {
    width: 100%;
}
.col-xs-1, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9, .col-xs-10, .col-xs-11, .col-xs-12 {
    float: left;
}
.col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
    position: relative;
    min-height: 1px;
    padding-left: 15px;
    padding-right: 15px;
}

footer p {
    margin-top: 17px;
    font-size: 16px;
}

p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

#sitemap a {
    color: #cccccc;
    font-size: 16px;
    letter-spacing: 1px;
    transition: color 0.5s ease;
    text-decoration: none;
}

h4 {
    color: #E6BF26;
}

#footer .email {
    font-size: 16px;
}


@media screen and (max-width: 768px){
#footer .email {
    font-size: 14px !important;
}
}

@media (min-width: 768px){
.col-sm-offset-2 {
    margin-left: 16.6666666667%;
}
}


@media (min-width: 1200px){
.container {
    width: 1170px;
}
}


</style>
<body>

<header class="header">

	<!-- navbar -->
	
	<!-- navbar end -->
	<c:if test="${ not empty sessionScope.user }">
		<jsp:include page='../includes/navbar-logged.jsp' />
	</c:if>
	<c:if test="${ empty sessionScope.user }">
		<jsp:include page='../includes/navbar.jsp' />
	</c:if>
	
</header>	
	
	<!--  content -->
    <div class="site-content">
<div id="home-banner" class="home-banner">
  <div  class="home-banner-content">
    <h1>
    <br><br><br><br><br><br><br><br><br><br><br>
      BIENVENUE
    </h1>
    
    <br><br>
    <div class="col-xs-12 text-center list-inline hidden-xs">
      <li><a class="home-btn" href="<c:url value='/inscription/pre'/>">Inscrivez-vous</a></li>
    </div>
  <br><br><br><br>
  </div>
</div>
<div class="home-bottom-banner">
  <div class="container">
    <div class="row text-center">
      <div class="col-xs-12 h1-orange text-center">
        <br>
        <br>
        <h2>GAGNEZ DU TEMPS POUR CE QUI COMPTE <br> <b> <span class="home-black">AVEC NOTRE OUTILS DE GESTION DU RESEAUX</span></b></h2>
        <p>

          Vous vous démenez chaque jour et pourtant rien ne change, <br> Vous savez que vous méritez mieux vous n’avez qu’une seule envie c’est d’être enfin libre ! <br>
          
          Nous travaillons chaque jour pour vous offrir à vous et vos partenaires le meilleur système de gestion de réseau
          
        </p>
      </div>
    </div>
  </div>
</div>

<br>
<br>
<br>
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner" style=" width: 500px;">
    <div class="carousel-item active" style=" margin-top: 0px; margin-left: px">
<A href="<c:url value='/static/conseil'/>"><img class="mx-auto" width="100%" src="<c:url value="/resources/images/sam1.png" />" alt="First slide"></A>
    <h3>Samuel</h3>
	</div>
    <div class="carousel-item" style=" margin-top: 0px; ">
<A href="#"><img class="mx-auto" width="100%" src="<c:url value="/resources/images/sam1.png" />" alt="Second slide"></A>
    <h3 style="">Erwan</h3>
    </div>
    <div class="carousel-item" style=" margin-top: 0px;">
<A href="<c:url value='/static/conseil'/>"><img class="mx-auto" width="100%" src="<c:url value="/resources/images/sam1.png" />" alt="First slide"></A>
    <h3>Stella</h3>
    </div>
    <div class="carousel-item" style=" margin-top: 0px;">
<A href="<c:url value='/static/bestOf'/>"><img class="mx-auto" width="100%" src="<c:url value="/resources/images/sam1.png" />" alt="First slide"></A>
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


<!-- <div class="home-banner-mobile"> -->

<!-- </div> -->

<div class="home-bottom-banner">
  <div class="container">
    <div class="row">
      <div class="col-xs-12 h1-orange text-center">

        <h2>NOTRE ENGAGEMENT <br> <b> <span class="home-black">POUR VOUS</span></b></h2>
        <p>Vous aider à atteindre vos objectifs financiers à travers le marketing relationnel qui est nous vous l’assurons la meilleure industrie au monde</p>
        <br>
        <br>
      </div>
    </div>
  </div>
</div>


  <div class="home-banner-mobile">  
  </div>
  
<div class="home-bottom-banner">
  <div class="container">
    <div class="row">
      <div class="col-xs-12 h1-orange text-center">
        <br>
        <br>
        <h2>UNE MEILLEURE ALTERNATIVE <br><span class="home-black">POUR VOTRE BUSINESS</span><br></h2> <!-- <span class="home-black">POUR VOTRE ENTREPRISE</span></b></h2> -->
			<p>Vous êtes volontaire, <br> Vous désirez apprendre, <br> Vous avez soif de succès</p>
        <h2><span class="home-black">BIENVENUE DANS LE GROUPE </span> <br> GOLD&NATION <br></h2>
      </div>
    </div>
  </div>
</div>
<div class="flexbox">
  <div class="text-itemhome h2-bold">
    <div class="special icono-home text-center">
      <div class="flip-image">
        <img src="<c:url value="/resources/images/logo4.PNG" />" alt="Clean">
      </div>
      <c>Nos sociétés sont régulés <br><br></c>
      <img src="<c:url value="/resources/images/logo5.png" />" alt="Calendar">
      <br>
      <c>Chaque jour une formation différente.<br>Faites votre planning et apprenez depuis chez vous<br><br></c>
      <img src="<c:url value="/resources/images/logo6.png" />" alt="Quality">
      <br>
      <c>Atteignez les grades et obtenez les récompenses</p>
 

    </div>
  </div>
  <div class="text-itemhome">
    <div class="special icono-home text-center">
      <img src="<c:url value="/resources/images/logo1.png" />" alt="Plate"> <br>
      <c>Développez votre réseau, selon vos besoins<br><br></c>
      <img src="<c:url value="/resources/images/logo2.png" />" alt="Euro"><br>
      <c>Un service gratuit, sans coût de structure ni coût de gestion<br><br></c>
      <img src="<c:url value="/resources/images/logo3.png" />" alt="Time"><br>
      <c>Un fonctionnement simple et rapide</c>

    </div>
  </div>
</div>




<%-- 

<div class="testimonial">
  <div class="container text-center">
    <div class="row">
      <div class="col-xs-12">
        <h2>Ils en parlent mieux que nous.</h2><br>
      </div>
    </div>
    <div class="row">
      <div class="col-xs-1PRESSEPRESSE2 col-sm-4 padded-top-bottom">
        <img class="img-circle" src="<c:url value="/resources/images/prf3.jpg" />" alt="Id 1"><br><br>
        <b>Pascal - Safran - Paris</b><br><br>
        <p>"Depuis que mon entreprise accueille Paris Truck différents tous les jours, nous profitons d’une solution de restauration en phase avec nos attentes."</p>
      
      </div>
      <div class="col-xs-12 col-sm-4 padded-top-bottom">
        <img class="img-circle" src="<c:url value="/resources/images/prf1.jpg" />" alt="Id 2"><br><br>
        	<b>Monica - Ecole Nationale Supérieur D'architecture - Paris</b><br><br>
        <p>"Grâce à Paris Truck Trucks je ne perds plus de temps à aller chercher quelque chose à manger le midi. Je peux passer plus de temps en compagnie des élèves et j’ai même 10 minutes pour me détendre avant d’attaquer l’après-midi"</p>
      </div>
      <div class="col-xs-12 col-sm-4 padded-top-bottom">
        <img class="img-circle" src="<c:url value="/resources/images/prf2.jpg" />" alt="Id 3"><br><br>
        <b>Roger - Paris</b><br><br>
        <p>" Paris Truck me permet d'avoir un repas livré rapidement et bon !"</p>
      </div>
    </div>
    <br>
    <br>
  </div>
</div> 

--%>
    </div>
    
    <div id="footer" class="text-center">
  <div class="container margin-bottom-50">
    <div class="row">
      <div class="col-xs-12">
        <ul class="list-inline">
          <li>
            <a class="fa fa-facebook"  href="https://www.facebook.com/GoldNation-103605701672783/"  ><img src="<c:url value="/resources/images/logo-zoom.jpg" />" > </a>
          </li>
          <li>
            <a class="fa fa-instagram"  href="https://www.instagram.com/gold_and_nation/?hl=fr"></a>
          </li>
          <li>
            <a class="fa fa-zoom"  href="https://us02web.zoom.us/j/81890004821?pwd=THRwRlJjcm5hL3FldTBQZVlxMjRuQT09"></a>
          </li>
          <li>
            <a class="fa fa-youtube"  href=""></a>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <div class="container margin-bottom-50">
    <div class="row">
      <div class="col-xs-12 col-sm-8 col-sm-offset-2">
        <a href="mailto:goldandnation@gmail.com?subject=contact" class="email">goldandnation@gmail.com</a>
      </div>
    </div>
  </div>
  <div class="container">
    <div class="row">
      <div id="sitemap">
        <div class="col-xs-12 col-sm-4">
          <h4>Plan du site</h4>
          <p>
            <a href="<c:url value='/'/>">Accueil</a>
            <br><a href="<c:url value='/partenaire/partenaires'/>">Partenaire</a>
            <br><a href="/blogs">Blog</a>
            <br><a href="/">Temoignages</a>
            <br><a href="/food-truck">Inscription</a>
            <br><a href="/team">Connexion</a>
            <br><a href="/cgu">CGU</a>
            <br><a href="/mentionslegales">Mentions Légales</a>
          </p>
        </div>
        <div class="col-xs-12 col-sm-4">
          <h4>Société Partenaire</h4>
            <p>
              <a href="https://omegapro.world/">OmegaPro</a>
            </p>
        </div>
        <div class="col-xs-12 col-sm-4">
          <p>
            Gold&Nation propose des solutions de gestion de réseau pour les particuliers et les associations.
            <br><br>
            Notre mission ? Vous faire gagner du temps avec un système performant !
          </p>
        </div>
      </div>
    </div>
  </div>
</div>

	<!-- footer -->
	<jsp:include page='../includes/footer.jsp' />
	<!-- footer end -->

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>