<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


			<div class="row">	
				<div class="span9">					
					<div class="title"><h3>Most Viewed...</h3></div>
					
					<!-- start: Row -->
		      		<div class="row">
						<c:forEach var="publicacionMVE" items="${publicacionesMVE}" varStatus="status" end="2">	
						<div class="span3">	
							<div class="picture">
								<a href="/${publicacionMVE.url}" title="${publicacionMVE.titulo}">
									<c:if test="${!empty publicacionMVE.lImages }">
									<img style="width: 270px;height: 240px;" src="${publicacionMVE.lImages[1]}" alt="${publicacionMVE.titulo}"/>
									</c:if>
									<div class="image-overlay-link"></div>
								</a>
							</div>
							<div class="item-description">
								<h4><a title="${publicacionMVE.titulo}" href="/${publicacionMVE.url}">${publicacionMVE.titulo}</a></h4>
								<c:if test="${publicacionMVE.sumaPuntos gt 0 }">
								<div class="rateit" data-rateit-value="${publicacionMVE.sumaPuntos div publicacionMVE.votantes}" data-rateit-ispreset="true" data-rateit-readonly="true" title="<fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits="2" value="${publicacionMVE.sumaPuntos div publicacionMVE.votantes}" /> / 5"></div>
								</c:if>								
								<p>
									${fn:replace(publicacionMVE.descripcion, newLineChar, "<p/><p>")}
								</p>
								<p><i title="Visto" style="margin-top: -17px;" class="ico-eye-open"></i>  ${publicacionMVE.numVisitas} veces</p>
							</div>					
        				</div>
        				</c:forEach>					
					</div>
				</div>
				<c:if test="${empty publicacion}">
				<div class="span3">
					
					<!-- start: Testimonials-->

					<div class="testimonial-container">

						<div class="title"><h3>Last Comments</h3></div>

							<div class="testimonials-carousel" data-autorotate="3000">

								<ul class="carousel">
									<c:forEach var="comentario" items="${comentarios}" varStatus="status" >	
									<li class="testimonial">
										<div class="testimonials">${fn:substring(comentario.comentario, 0, 400)}
										<c:if test="${fn:length(comentario.comentario)>400}">
										...
										</c:if>
										</div>
										<div class="testimonials-bg"></div>										
										<div class="testimonials-author">${comentario.nombre}, at <a title="${comentario.publicacion.titulo}" href="/${comentario.publicacion.url }">${comentario.publicacion.titulo}</a></div>
									</li>
									</c:forEach>
								</ul>

							</div>

						</div>

					<!-- end: Testimonials-->
					
        		</div>
        		</c:if>
			</div>
			
			<hr>
					
			