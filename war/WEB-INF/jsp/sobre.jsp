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
							We are a team made up of people passionate about healht, beauty and body care who want to provide you with honest and serious reviews about products and topics related to these topics which are so important for us and our customers.
						</p>
						<p>
							Plus, we managed to maintain a competitive and consumer-friendly website where we can share our experiences and opinions on those subjects we love, looking for helping our readers and passing on to them our knowledge gathered to date throughout the last more than 10 years working very closely on these fields.
						</p>
						<p>
							We consistently work on researching the best products and technology applied on health and beauty, so we can clarify all your queries and hope you can get the results you are looking for. We are here to help and give you the best information you may find on the Internet.
						</p>
						<p>
							Please don´t hesitate to <a href="/contact">contact us</a> to let us know your opinion about our work or any query you would like to ask, we want to help you and we look forward to make your ideas clearer. In this sense, you can also use our comments section for each article in order to rate them or provide more details about the product or topic analyzed.
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
				            	<h5>Brand Products ( 90% )</h5>
				            	<div class="meter"><span style="width: 90%"></span></div><!-- Edite width here -->
				          	</li>
				          	<li>
				            	<h5>Health & Beauty ( 100% )</h5>
				            	<div class="meter"><span style="width: 100%"></span></div><!-- Edite width here -->
				          	</li>
				          	<li>
				            	<h5>Content Management( 90% )</h5>
				            	<div class="meter"><span style="width: 100%"></span></div><!-- Edite width here -->
				          	</li>
				          	<li>
				            	<h5>Body Care ( 100% )</h5>
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