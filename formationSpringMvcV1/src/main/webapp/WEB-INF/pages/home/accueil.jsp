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
    
    @media (min-width: 1400px) {
    
    .home-banner  {
    border-image: url("<c:url value="/resources/images/gold_color.jpg" />") 2480;
    border-right: 260px solid ;
    border-left: 260px solid;
    }
    
    }
    
    .home-banner  {
    text-align: center;
    height: 100vh;
    background-image: url("<c:url value="/resources/images/logo18.jpg" />");
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
    background-image: url("<c:url value="/resources/images/foodtruck2.jpg" />");
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
    background-image: url("<c:url value="/resources/images/foodtruck3.jpg" />");
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
background-image: url("<c:url value="/resources/images/gold_color3.jpg" />");
background-size: cover;
background-repeat: no-repeat;
margin-bottom: 30px;



}
.col-xs-12 {
    width: 100%;
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
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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
          Nous travaillons chaque jour pour offrir le meilleur système pour votre réseaux. <br>
          Comblez leurs attentes grâce à la performance de notre service de restauration par l'intermédiaire de notre food trucks .
        </p>
        <br>
        <br>
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
        <br>
        <br>
        <h2>NOS ENGAGEMENTS <br> <b> <span class="home-black">POUR VOUS</span></b></h2>
        <p>
          Proposer un mode de restauration rapide, qualitative, variée <br>
          pour les particuliers et les entreprises.
        </p>
        <br>
        <br>
      </div>
    </div>
  </div>
</div>

<div class="flexbox">
  <div class="img-item-bloc1">  
  </div>
  <div class="text-itemhome">
    <div class="special icono-home text-center">
      <img src="<c:url value="/resources/images/logo1.png" />" alt="Plate"> <br>
      <c>De 50 à 500+ repas par jour sur site, selon vos besoins<br><br></c>
      <img src="<c:url value="/resources/images/logo2.png" />" alt="Euro"><br>
      <c>Un service gratuit pour les entreprises, sans coût de structure ni coût de gestion<br><br></c>
      <img src="<c:url value="/resources/images/logo3.png" />" alt="Time"><br>
      <c>Une mise en place simple et rapide</c>
      <br>
      <br>
      <br>
      <a class="btn-nous-contacter" href="<c:url value='/article/articles'/>">Catalogue</a>
      <br><br>
    </div>
  </div>
</div>
<div class="home-bottom-banner">
  <div class="container">
    <div class="row">
      <div class="col-xs-12 h1-orange text-center">
        <br>
        <br>
        <h2>UNE MEILLEURE MANIERE DE CHANGER DES VIE<br> <b> <!-- <span class="home-black">POUR VOTRE ENTREPRISE</span></b></h2> -->
        <p>
          Parce que votre satisfaction est notre priorité, nous mettons <br>
          un point d'honneur à ce que notre service corresponde à vos critères de sélection.
        </p>
        <br>
        <br>
      </div>
    </div>
  </div>
</div>
<div class="flexbox">
  <div class="text-itemhome h2-bold">
    <div class="special icono-home text-center">
      <div class="flip-image">
        <img src="<c:url value="/resources/images/logo4.png" />" alt="Clean">
      </div>
      <c>Nos restaurateurs partenaires respectent les normes sanitaires en vigueur (HACCP ou équivalents)<br><br></c>
      <img src="<c:url value="/resources/images/logo5.png" />" alt="Calendar">
      <br>
      <c>Chaque jour une cuisine différente, faite maison.<br>Mangez équilibré au bureau. <br><br></c>
      <img src="<c:url value="/resources/images/logo6.png" />" alt="Quality">
      <br>
      <c>Retrouvez les saveurs et les goûts de produits frais, issus de circuits courts.</p>
      <br>
      <br>
      <br>
      <a class="btn-nous-contacter" href="<c:url value='/article/articles'/>">Catalogue</a>
      <br><br>
    </div>
  </div>
  <div class="img-item-bloc2">
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
    

	<!-- footer -->
	<jsp:include page='../includes/footer.jsp' />
	<!-- footer end -->

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>