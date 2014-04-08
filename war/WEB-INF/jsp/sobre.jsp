<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="es">

	<%@ include file="/WEB-INF/jsp/includes/header.jsp"%>
	
	<!-- start: Page Title -->
	<div id="page-title">

		<div id="page-title-inner">

			<!-- start: Container -->
			<div class="container">

				<h1><i class="ico-keynote ico-white"></i>About us</h1>

			</div>
			<!-- end: Container  -->

		</div>	

	</div>
	<!-- end: Page Title -->
	
	<!--start: Wrapper-->
	<div id="wrapper">
				
		<!--start: Container -->
    	<div class="container" style=" padding-bottom: 100px; ">
	
			<!--start: Row -->
	    	<div class="row">
		
				<div class="span8">
					
					<!-- start: About Us -->
					<div id="about">
						<div class="title"><h3>About us</h3></div>
						<p>
							Somos un equipo de personas con gran formación tecnólogica que quiere ofrecerte la mejor información y los mejores análisis sobre móviles en la red.
						</p>
						<p>
							Nuestras valoraciones son honestas y con sello propio, pretendiendo aclarar tu idea para comprar un móvil en función de tus necesidades. Estamos aquí para ayudarte en todo lo posible y darte la mejor información que puedas encontrar en Internet.
						</p>
						<p>
							Por favor, no dudes en contactar con nosotros para consultarnos cualquier duda que tengas ó darnos tu opinión sobre nuestro trabajo, queremos ayudarte y conseguir que tu elección sea la idónea. Puedes usar la sección de comentarios de cada artículo para puntuar, preguntar o aportar más información sobre un producto analizado.
						</p>
					</div>	
					<!-- end: About Us -->						
					
				</div>	
				
				<div class="span4">
					
					<!-- start: Sidebar -->
					<div id="sidebar" style="padding-bottom: 50px;">

						<!-- start: Skills -->
				       	<div class="title"><h3>Our skills</h3></div>
				       	<ul class="progress-bar">
				        	<li>
				            	<h5>Brand Products ( 100% )</h5>
				            	<div class="meter"><span style="width: 90%"></span></div><!-- Edite width here -->
				          	</li>
				          	<li>
				            	<h5>Content Management( 90% )</h5>
				            	<div class="meter"><span style="width: 100%"></span></div><!-- Edite width here -->
				          	</li>
				          	<li>
				            	<h5>Health & Beauty ( 100% )</h5>
				            	<div class="meter"><span style="width: 100%"></span></div><!-- Edite width here -->
				          	</li>
				          	<li>
				            	<h5>SEO ( 90% )</h5>
				            	<div class="meter"><span style="width: 90%"></span></div><!-- Edite width here -->
				          	</li>
				      	</ul>
				      	<!-- end: Skills -->



					</div>
					<!-- end: Sidebar -->					
				</div>
				
			</div>
			<!--end: Row-->
		</div>
		<div>
			<%-- <%@ include file="/WEB-INF/jsp/includes/carrusel.jsp"%> --%>
		</div> 
		<!--end: Container-->		
	</div>
	<!-- end: Wrapper  -->		
	
	<%@ include file="/WEB-INF/jsp/includes/footer.jsp"%>

</body>
</html>	