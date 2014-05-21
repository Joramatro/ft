<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>

    <!-- start: Footer Menu -->
	<div id="footer-menu" class="hidden-tablet hidden-phone">

		<!-- start: Container -->
		<div class="container">
			
			<!-- start: Row -->
			<div class="row">

				<!-- start: Footer Menu Logo -->
				<div class="span2">
					<div id="footer-menu-logo">
						<div id="logo-chart"></div><a class="brand" href="http://www.feeltighter.com/">F<span>Tighter</span>.</a>
					</div>
				</div>
				<!-- end: Footer Menu Logo -->

				<!-- start: Footer Menu Links-->
				<div class="span9">
					
					<div id="footer-menu-links">

						<ul id="footer-nav">

							<li><a href="http://www.feeltighter.com/">Home</a></li>

							<li><a href="/blog">Blog</a></li>
							
							<li><a href="/about">About</a></li>
							
							<li><a href="/contact">Contact</a></li>

						</ul>

					</div>
					
				</div>
				<!-- end: Footer Menu Links-->

				<!-- start: Footer Menu Back To Top -->
				<div class="span1">
						
					<div id="footer-menu-back-to-top">
						<a href="http://www.feeltighter.com/"></a>
					</div>
				
				</div>
				<!-- end: Footer Menu Back To Top -->
			
			</div>
			<!-- end: Row -->
			
		</div>
		<!-- end: Container  -->	

	</div>	
	<!-- end: Footer Menu -->

	<!-- start: Footer -->
	<div id="footer">
		
		<!-- start: Container -->
		<div class="container">			
			<!-- start: Row -->
			<div class="row" style="margin-top: 20px;">

				<!-- start: About -->
				<div class="span3">
					
					<h3>About us</h3>
					<p>
						We are a professional team passionate about healthy and beauty who want to provide you the best information and advice for getting your life goals.
					</p>
						
				</div>
				<!-- end: About -->

				<!-- start: Photo Stream -->
				<div class="span3">
					
					<h3></h3>
					<div class="flickr-widget">
							
						<div class="clear"></div>
					</div>
					
				</div>
				<!-- end: Photo Stream -->

				<div class="span6">
				
					<!-- start: Follow Us -->
					<h3>Follow us!</h3>
					<ul class="social-grid">
						<li>
							<div class="social-item">				
								<div class="social-info-wrap">
									<div class="social-info">
										<div class="social-info-front social-twitter">
											<a target="_blank" href="https://twitter.com/FeelTighter"></a>
										</div>
										<div class="social-info-back social-twitter-hover">
											<a target="_blank" href="https://twitter.com/FeelTighter"></a>
										</div>	
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="social-item">				
								<div class="social-info-wrap">
									<div class="social-info">
										<div class="social-info-front social-facebook">
											<a target="_blank" href="https://www.facebook.com/feeltighter"></a>
										</div>
										<div class="social-info-back social-facebook-hover">
											<a target="_blank" href="https://www.facebook.com/feeltighter"></a>
										</div>
									</div>
								</div>
							</div>
						</li>
					</ul>
					<!-- end: Follow Us -->
				
					<!-- start: Newsletter -->
					<form id="newsletter" action="http://feedburner.google.com/fb/a/mailverify" method="post" target="popupwindow" onsubmit="window.open('http://feedburner.google.com/fb/a/mailverify?uri=FeelTighter', 'popupwindow', 'scrollbars=yes,width=550,height=520');">
						<h3>VIP EMAIL &nbsp; <a href="http://www.feeltighter.com/rssfeed" accesskey="r"><img src="/img/rssmenu.png" alt="RSS"></a></h3>
						<p>Let us your mail and don´t miss our latest news!</p>
						<label for="newsletter_input">@:</label>
						<input style="border: 1px solid #29a9df;" type="text" name="email" id="newsletter_input">
						<input type="submit" id="btnSuscripcion" value="Send">			
						<input type="hidden" value="FeelTighter" name="uri"/>
						<input type="hidden" name="loc" value="en_US"/>						
					</form>
					<!-- end: Newsletter -->
				
				</div>
				
			</div>
			<!-- end: Row -->	
			
		</div>
		<!-- end: Container  -->

	</div>
	<!-- end: Footer -->

	<!-- start: Copyright -->
	<div id="copyright">
	
		<!-- start: Container -->
		<div class="container">
		
			<div class="span12">
			
				<p>
				<a style="margin-right: 35px;" href="http://www.feeltighter.com/rssfeed" accesskey="r"><img src="/img/rss.gif" alt="RSS"/>RSS</a>
				&copy; 2014, <a target="_blank" href="https://plus.google.com/100177613171892573036/"><span id="_publisher8" itemscope itemtype="http://schema.org/Organization">
<span itemprop="name">Feel Tighter</span></span></a><i style="margin-top: -18px;" class="ico-color ico-sun"></i>
				<a style="margin-left: 19px;" href="/terms">Terms</a> | <a href="/privacy">Privacy</a>					
				</p>
			</div>
	
		</div>
		<!-- end: Container  -->
		
	</div>	
	<!-- end: Copyright -->
<!-- start: Java Script -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/js/jquery-1.8.2.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/isotope.min.js"></script>
<script src="/js/jquery.imagesloaded.min.js"></script>
<script src="/js/flexslider.min.js"></script>
<script src="/js/carousel.min.js"></script>
<script src="/js/jquery.cslider.min.js"></script>
<script src="/js/slider.min.js"></script>
<script src="/js/fancybox.min.js"></script>
<script src="/js/jquery.iframetracker.js"></script>
<script defer="defer" src="/js/custom.min.js"></script>
<script async src="/js/apprise-v2.min.js"></script>
<script async src="/js/jquery.rateit.min.js"></script>
<!-- Please call pinit.js only once per page -->
<script type="text/javascript" async  data-pin-height="28" data-pin-hover="true" src="//assets.pinterest.com/js/pinit.js"></script>

<%@ include file="/WEB-INF/jsp/includes/scripts.jsp"%>


<script>
$("head").append("<link rel='stylesheet' type='text/css' href='/css/apprise-v2.css' />");
$("head").append("<link rel='stylesheet' type='text/css' href='/css/icons.css' />");
$("head").append("<link rel='stylesheet' type='text/css' href='/css/icons-color.css' />");
$("head").append("<link rel='stylesheet' type='text/css' href='/css/social-icons.min.css' />");
$("head").append("<link rel='stylesheet' type='text/css' href='/css/hover.css' />");
$("head").append("<link rel='stylesheet' type='text/css' href='/css/fancybox.css' />");
$("head").append("<link rel='stylesheet' type='text/css' href='/css/rateit.css' />");
</script>
<script>
	var pathname = window.location.pathname;
	var parts = pathname.split('/');
	$("#menuSuperior > li").removeClass('active');
	if(parts[1] == 'contact'){		
		$("#menuContact").addClass('active');
	}else if(parts[1] == 'about'){	
		$("#menuAbout").addClass('active');
	}else if('${publicacion.tipo}' == 'AR'){	
		$("#menuBlog").addClass('active');
	}else if(parts[1] == 'specialoffer'){	
		$("#menuSpecialOffer").addClass('active');
	}else if(parts[1] == 'blog'){	
		$("#menuBlog").addClass('active');
	}else{
		$("#menuHome").addClass('active');
	}
</script>

<!-- end: Java Script -->
