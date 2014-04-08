<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<head>

	<!-- start: Meta -->
	<meta charset="utf-8">
	<meta name="robots" content="index,all" />
	<meta name="revisit-after" content="1 days" />
	<meta name="lang" content="en" />
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	<c:choose>
	<c:when test="${!empty publicacion && publicacion.tipo eq 'EB'}">
		<title>${publicacion.titulo} - Feel Tighter</title> 
		<meta name="description" content="${publicacion.descripcion} - Feel Tighter"/>
		<meta name="author" content="Feel Tighter" />
		<meta name="copyright" content="Feel Tighter" />
		<meta name="application-name" content="${publicacion.titulo} - Feel Tighter" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="${publicacion.titulo} - Feel Tighter"/>
		<meta property="og:description" content="${publicacion.descripcion} - Feel Tighter"/>
		<meta property="og:type" content="post"/>
		<meta property="og:url" content="http://www.feeltighter.com/${publicacion.url}"/>
		<meta property="og:image" content="${publicacion.lImages[0]}"/>
		<meta property="og:email" content="hello@feeltighter.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@FeelTighter">
		<meta name="twitter:creator" content="@FeelTighter">
		<meta name="twitter:title" content="${publicacion.titulo}">
		<meta name="twitter:description" content="${publicacion.descripcion}">
		<meta name="twitter:image" content="${publicacion.lImages[0]}">
		<meta name="twitter:domain" content="feeltighter.com">
		<!-- end: Twitter tags -->
		<link rel="canonical" href="http://www.feeltighter.com/${publicacion.url}"/>
	</c:when>	
	<c:when test="${fn:contains(pageContext.request.requestURI, 'extras')}">
		<title>Special Offers - Feel Tighter</title> 
		<meta name="description" content="Get access to special offers for the products we review and detail at Feel Tighter"/>
		<meta name="author" content="Feel Tighter" />
		<meta name="copyright" content="Feel Tighter" />
		<meta name="application-name" content="Special Offers - Feel Tighter" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Get access to special offers for the products we review and detail at Feel Tighter"/>
		<meta property="og:description" content="Get access to special offers for the products we review and detail at Feel Tighter"/>
		<meta property="og:type" content="offers"/>
		<meta property="og:url" content="http://www.feeltighter.com/specialoffers"/>
		<c:if test="${!empty publicaciones}">
			<meta property="og:image" content="${publicaciones[0].lImages[0]}"/>
		</c:if>
		<meta property="og:email" content="hello@feeltighter.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@FeelTighter">
		<meta name="twitter:creator" content="@FeelTighter">
		<meta name="twitter:title" content="Special Offers - Feel Tighter">
		<meta name="twitter:description" content="Get access to special offers for the products we review and detail at Feel Tighter">
		<c:if test="${!empty publicaciones}">
			<meta name="twitter:image" content="${publicaciones[0].lImages[0]}">
		</c:if>
		<meta name="twitter:domain" content="feeltighter.com">
		<!-- end: Twitter tags -->		
		<link rel="canonical" href="http://www.feeltighter.com/specialoffers"/>
	</c:when>
		<c:when test="${fn:contains(pageContext.request.requestURI, 'sobre')}">
		<title>About us - Feel Tighter</title> 
		<meta name="description" content="Information about us and our professional values - Feel Tighter"/>
		<meta name="author" content="Feel Tighter" />
		<meta name="copyright" content="Feel Tighter" />
		<meta name="application-name" content="About us Feel Tighter" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="About us - Feel Tighter"/>
		<meta property="og:description" content="Get access to special offers for the products we review and detail at Feel Tighter"/>
		<meta property="og:type" content="about"/>
		<meta property="og:url" content="http://www.feeltighter.com/about"/>
		<meta property="og:image" content="/img/img-meta/logoGrande.jpg"/>
		<meta property="og:email" content="hello@feeltighter.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy2">
		<meta name="twitter:creator" content="@Jorge_Amat1">
		<meta name="twitter:title" content="About us - Feel Tighter">
		<meta name="twitter:description" content="Get access to special offers for the products we review and detail at Feel Tighter">
		<meta name="twitter:image" content="/img/img-meta/logoGrande.jpg">
		<meta name="twitter:domain" content="feeltighter.com">
		<!-- end: Twitter tags -->
		<link rel="canonical" href="http://www.feeltighter.com/about"/>	
	</c:when>
	<c:when test="${fn:contains(pageContext.request.requestURI, 'contacta')}">
		<title>Contact - Feel Tighter</title> 
		<meta name="description" content="Contact with the Feel Tighter Team"/>
		<meta name="author" content="Feel Tighter" />
		<meta name="copyright" content="Feel Tighter" />
		<meta name="application-name" content="Contact" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Contact - Feel Tighter"/>
		<meta property="og:description" content="Contact with the Feel Tighter Team"/>
		<meta property="og:type" content="contact"/>
		<meta property="og:url" content="http://www.feeltighter.com/contact"/>
		<meta property="og:image" content="/img/img-meta/logoGrande.jpg"/>
		<meta property="og:email" content="hello@feeltighter.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@FeelTighter">
		<meta name="twitter:creator" content="@FeelTighter">
		<meta name="twitter:title" content="Contact - Feel Tighter Team">
		<meta name="twitter:description" content="Contact with the Feel Tighter Team">
		<meta name="twitter:image" content="/img/img-meta/logoGrande.jpg">
		<meta name="twitter:domain" content="feeltighter.com">
		<!-- end: Twitter tags -->
		<link rel="canonical" href="http://www.feeltighter.com/contact"/>
	</c:when>
	
	<c:when test="${fn:contains(pageContext.request.requestURI, 'ebooks')}">
		<title>Blog - Feel Tighter</title> 
		<meta name="description" content="Post and reviews about heatlh and beauty in our blog - Feel Tighter"/>
		<meta name="author" content="Feel Tighter" />
		<meta name="copyright" content="Feel Tighter" />
		<meta name="application-name" content="posts" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Blog - Feel Tighter"/>
		<meta property="og:description" content="Post and reviews about heatlh and beauty in our blog - Feel Tighter"/>
		<meta property="og:type" content="post"/>
		<meta property="og:url" content="http://www.feeltighter.com/blog"/>
		<c:if test="${!empty publicaciones}">
			<c:if test="${!empty publicaciones[0].lImages}">
				<meta property="og:image" content="${publicaciones[0].lImages[0]}"/>
			</c:if>
		</c:if>
		<meta property="og:email" content="hello@feeltighter.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@FeelTighter">
		<meta name="twitter:creator" content="@FeelTighter">
		<meta name="twitter:title" content="Blog - Feel Tighter">
		<meta name="twitter:description" content="Post and reviews about heatlh and beauty in our blog - Feel Tighter">
		<c:if test="${!empty publicaciones}">
			<c:if test="${!empty publicaciones[0].lImages}">
				<meta name="twitter:image" content="${publicaciones[0].lImages[0]}">
			</c:if>
		</c:if>
		<meta name="twitter:domain" content="feeltighter.com">
		<link rel="canonical" href="http://www.feeltighter.com/blog"/>
		<!-- end: Twitter tags -->		
	</c:when>
	
	<c:when test="${fn:contains(pageContext.request.requestURI, 'privacidad')}">
		<title>Privacy - Feel Tighter</title> 
		<meta name="description" content="Privacy conditions at Feel Tighter"/>
		<meta name="author" content="Feel Tighter" />
		<meta name="copyright" content="Feel Tighter" />
		<meta name="application-name" content="Privacy" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Privacy - Feel Tighter"/>
		<meta property="og:description" content="Privacy at Feel Tighter"/>
		<meta property="og:url" content="http://www.feeltighter.com/privacy"/>
		<meta property="og:email" content="hello@feeltighter.com/"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@FeelTighter">
		<meta name="twitter:creator" content="@FeelTighter">
		<meta name="twitter:title" content="Privacy - Feel Tighter">
		<meta name="twitter:description" content="Privacy conditions at Feel Tighter">
		<meta name="twitter:domain" content="feeltighter.com/">
		<link rel="canonical" href="http://www.feeltighter.com/privacy"/>
		<!-- end: Twitter tags -->		
	</c:when>
	
	<c:when test="${fn:contains(pageContext.request.requestURI, 'terms')}">
		<title>Terms - Feel Tighter</title> 
		<meta name="description" content="Terms conditions at Feel Tighter"/>
		<meta name="author" content="Feel Tighter" />
		<meta name="copyright" content="Feel Tighter" />
		<meta name="application-name" content="Terms" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Terms - Feel Tighter"/>
		<meta property="og:description" content="Terms at Feel Tighter"/>
		<meta property="og:url" content="http://www.feeltighter.com/terms"/>
		<meta property="og:email" content="hello@feeltighter.com/"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@FeelTighter">
		<meta name="twitter:creator" content="@FeelTighter">
		<meta name="twitter:title" content="Terms - Feel Tighter">
		<meta name="twitter:description" content="Terms conditions at Feel Tighter">
		<meta name="twitter:domain" content="feeltighter.com/">
		<link rel="canonical" href="http://www.feeltighter.com/terms"/>
		<!-- end: Twitter tags -->		
	</c:when>
	
	<c:otherwise>
		<title>Welcome to Feel Tighter - Reviews and advice about health and beauty</title> 
		<meta name="description" content="Reviews and advice about health and beauty to get your goals and feel tighter and better in your daily life, we show your new path and it’s time to realize it"/>
		<meta name="author" content="Feel Tighter" />
		<meta name="copyright" content="Feel Tighter" />
		<meta name="application-name" content="Posts" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Welcome to Feel Tighter - Reviews and advice about health and beauty"/>
		<meta property="og:description" content="Reviews and advice about health and beauty to get your goals and feel tighter and better in your daily life, we show your new path and it’s time to realize it"/>
		<meta property="og:type" content="principal"/>
		<meta property="og:url" content="http://www.feeltighter.com"/>
		<meta property="og:image" content="/img/img-meta/logoGrande.jpg"/>
		<meta property="og:email" content="hello@feeltighter.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@FeelTighter">
		<meta name="twitter:creator" content="@FeelTighter">
		<meta name="twitter:title" content="Welcome to Feel Tighter - Reviews and advice about health and beauty">
		<meta name="twitter:description" content="Reviews and advice about health and beauty to get your goals and feel tighter and better in your daily life, we show your new path and it’s time to realize it.">
		<meta name="twitter:image" content="/img/img-meta/logoGrande.jpg">
		<meta name="twitter:domain" content="feeltighter.com">
		<!-- end: Twitter tags -->				
		<link rel="canonical" href="http://www.feeltighter.com"/>
	</c:otherwise>		
	</c:choose>
	<link rel="alternate" type="application/rss+xml" title="Feel Tighter RSS Feed" href="http://www.feeltighter.com/rssfeed" />
	<link rel="author" href="https://plus.google.com/" />
	<link rel="publisher" href="https://www.google.com/" />
	<style>
	@font-face {
	  font-family: 'Droid Sans';
	  font-style: normal;
	  font-weight: 400;
	  src: local('Droid Sans'), local('DroidSans'), url(http://themes.googleusercontent.com/static/fonts/droidsans/v3/s-BiyweUPV0v-yRb-cjciBsxEYwM7FgeyaSgU71cLG0.woff) format('woff');
	}
	@font-face {
	  font-family: 'Droid Sans';
	  font-style: normal;
	  font-weight: 700;
	  src: local('Droid Sans Bold'), local('DroidSans-Bold'), url(http://themes.googleusercontent.com/static/fonts/droidsans/v3/EFpQQyG9GqCrobXxL-KRMQFhaRv2pGgT5Kf0An0s4MM.woff) format('woff');
	}
	</style>
    <!-- start: CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="/css/parallax-sliderv1.css" rel="stylesheet">   
	<%@ include file="/WEB-INF/jsp/includes/styles.jsp"%>
	<!-- end: CSS -->

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-49804814-1', 'feeltighter.com');
ga('send', 'pageview');

</script>

</head>
<body>
	
	<!--start: Header -->
	<header>
		
		<!--start: Container -->
		<div class="container">
			<%-- <div>
				<script async src="http://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<!-- includes ch -->
				<ins class="adsbygoogle"
				     style="display:inline-block;width:970px;height:90px"
				     data-ad-client="ca-pub-3168560600423825"
				     data-ad-slot="2942822544"></ins>
				<script>
				(adsbygoogle = window.adsbygoogle || []).push({});
				</script>
			</div>--%>
			<!--start: Navbar -->
			<div class="navbar navbar-inverse">
	    		<div class="navbar-inner">
	          		<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
	            		<span class="icon-bar"></span>
	            		<span class="icon-bar"></span>
	            		<span class="icon-bar"></span>
	          		</a>
					<a class="brand" href="/"><i class="ico-thumbs-up circle"></i>Feel <span>Tighter</span>.</a>
	          		<div class="nav-collapse collapse">
	            		<ul id="menuSuperior" class="nav" style="margin-right:-30px;">
							<li id="menuInicio">
	                			<a onClick="ga('send', 'event', 'Menu Superior', 'Menu Home', 'Home');" href="/">Home</a>
	              			</li>
	              			<li id="menuBlog"><a onClick="ga('send', 'event', 'Menu Superior', 'Menu Blog', 'Blog');" title="Blog" href="/blog">Blog</a></li>
							<li class="dropdown">
	                			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Popular<b class="caret"></b></a>
	                			<ul class="dropdown-menu">
	                				<c:forEach var="publicacion" items="${publicacionesDestacadas}" varStatus="status" end="5">
										<li><a onClick="ga('send', 'event', 'Menu Superior', '${publicacion.titulo}', 'Popular');" title="${publicacion.titulo}" href="/${publicacion.url}">${publicacion.titulo}</a></li>									
	                  				</c:forEach>	                					                  				
								</ul>
	              			</li>
	              			<li id="menuSpecialOffer"><a onClick="ga('send', 'event', 'Menu Superior', 'Menu Extras', 'SpecialOffer');" title="Special Offer" href="/specialoffer">Special Offer</a></li>
	              			<li id="menuAbout"><a onClick="ga('send', 'event', 'Menu Superior', 'Menu About', 'About');" title="About" href="/about">About</a></li>
	              			<li id="menuContact"><a onClick="ga('send', 'event', 'Menu Superior', 'Menu Contact', 'Contact');" title="Contacto" href="/contact">Contact</a></li>
	              			<li style="margin-top: -8px;"><a onClick="ga('send', 'event', 'Menu Superior', 'Menu RSS', 'RSS');" href="#newsletter" accesskey="r"><img src="/img/rssmenu.png" alt="RSS"></a></li>
	            		</ul>
	          		</div>
	        	</div>
	      	</div>
			<!--end: Navbar -->
						
		</div>
		<!--end: Container-->			
	<div id="banGooHeader" class="iframe_wrap" style="width: 74%; margin:0 auto;">
		<%--
		<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
		<!-- superior 1 skyscraper cafetera -->
		<ins class="adsbygoogle"
		     style="display:inline-block;width:728px;height:90px"
		     data-ad-client="ca-pub-3168560600423825"
		     data-ad-slot="8273478147"></ins>
		<script>
		(adsbygoogle = window.adsbygoogle || []).push({});
		</script>
		--%>
	</div>			
	</header>
	<!--end: Header-->