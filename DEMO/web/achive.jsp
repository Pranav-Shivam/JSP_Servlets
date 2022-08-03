<%-- 
    Document   : gallery
    Created on : 28 Feb, 2017, 11:44:14 AM
    Author     : DOLPHIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Training and placement cell of CCSIT</title> 
	<meta name="description" content="GotYa Free Bootstrap Theme"/>
	<meta name="keywords" content="Template, Theme, web, html5, css3, Bootstrap" />
	<meta name="author" content="Åukasz Holeczek from creativeLabs"/>
	
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	
	<meta property="og:title" content=""/>
	<meta property="og:description" content=""/>
	<meta property="og:type" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:image" content=""/>
	

    
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/bootstrap-responsive.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
	
        <script src="js/jquery-1.8.2.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/flexslider.js"></script>
        <script src="js/carousel.js"></script>
        <script src="js/jquery.cslider.js"></script>
        <script src="js/slider.js"></script>
        <script defer="defer" src="js/custom.js"></script>


        
    </head>
    <body>
        <header>
		
		<!--start: Container -->
		<div class="container">
			
			<!--start: Row -->
			<div class="row">
					
				<!--start: Logo -->
				<div class="logo span3">
						
					<a class="brand" href="#"><img src="img/logo.png" alt="Logo"></a>
						
				</div>
				<!--end: Logo -->
					
				<!--start: Navigation -->
				<div class="span9">
					
					<div class="navbar navbar-inverse">
			    		<div class="navbar-inner">
			          		<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
			            		<span class="icon-bar"></span>
			            		<span class="icon-bar"></span>
			            		<span class="icon-bar"></span>
			          		</a>
			          		<div class="nav-collapse collapse">
			            		<ul class="nav">
			              			<li class="active"><a href="Home.jsp">Home</a></li>
			              			<li><a href="advboard.jsp">Advisory Board</a></li>
							<li><a href="industry.jsp">Industry Interaction</a></li>
                                                        <li><a href="Login.jsp">Login</a></li>
			              			
			            		</ul>
			          		</div>
			        	</div>
			      	</div>
					
				</div>	
				<!--end: Navigation -->
					
			</div>
			<!--end: Row -->
			
		</div>
		<!--end: Container-->			
			
	</header>
	<!--end: Header-->
	
	<!-- start: Slider -->
	<div class="slider-wrapper">

		<div id="da-slider" class="da-slider">
                    
                            <div class="da-slide">
				<h2>INFOSYS</h2>
				<p>Infosys International Inc. is dedicated to providing the people, services and solutions our clients need to meet their information technology challenges and business goals.</p>
				
				<div class="da-img"><img src="img/parallax-slider/Infosys.png" alt="image01" /></div>
			</div>
			<div class="da-slide">
				<h2>TCS</h2>
				<p>Our mission reflects the Tata Group's longstanding commitment to providing excellence:To help customers achieve their business objectives by providing innovative, best-in-class consulting, IT solutions and service. To make it a joy for all stakeholders to work with us.</p>
				
				<div class="da-img"><img src="img/parallax-slider/TCS.jpg" alt="image02" /></div>
			</div>
			<div class="da-slide">
				<h2>WIPRO</h2>
				<p>Wipro wants to create a professional services firm that works with both business and information technology executives to deliver end-to-end solutions for clients, and it plans to do that by carrying out its so-called think, build and operate vision.</p>
				
				<div class="da-img"><img src="img/parallax-slider/Wipro.jpg" alt="image03" /></div>
			</div>
			<div class="da-slide">
				<h2>KEANE INDIA</h2>
				<p>The work we do at Keane Group is driven by deep customer partnerships and defined by a relentless focus on safety, operational performance, and responsible growth. Our mission is to deliver nothing less than excellence in every aspect of our business and to build value for our customers and employees.</p>
				
				<div class="da-img"><img src="img/parallax-slider/Keane.jpg" alt="image04" /></div>
			</div>
			<nav class="da-arrows">
				<span class="da-arrows-prev"></span>
				<span class="da-arrows-next"></span>
			</nav>
		</div>
		
	</div>
	<!-- end: Slider -->
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">    
  <style>
.mySlides {display:none}
.w3-left, .w3-right, .w3-badge {cursor:pointer}
.w3-badge {height:13px;width:13px;padding:0}
</style>

<div class="w3-container">
  
</div>

<div class="w3-content w3-display-container" style="max-width:800px">
  <img class="mySlides" src="img/img_nature_wide.jpg" style="width:100%">
  <img class="mySlides" src="img/img_fjords_wide.jpg" style="width:100%">
  <img class="mySlides" src="img/img_mountains_wide.jpg" style="width:100%">
  <img class="mySlides" src="img/ach1.jpg" style="width:100%">
  <img class="mySlides" src="img/ach2.jpg" style="width:100%">
  <img class="mySlides" src="img/ach3.jpg" style="width:100%">
  <div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle" style="width:100%">
    <div class="w3-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
    <div class="w3-right w3-hover-text-khaki" onclick="plusDivs(1)">&#10095;</div>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
  </div>
</div>

<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-white", "");
  }
  x[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " w3-white";
}
</script>
  
      <style>
.mySlides {display:none}
.demo {cursor:pointer}
</style>  
      <!--  <div class="w3-content" style="max-width:900px">
  <img class="mySlides" src="/img/img_nature_wide.jpg" style="width:100%">
  <img class="mySlides" src="img/img_fjords_wide.jpg" style="width:100%">
  <img class="mySlides" src="img/img_mountains_wide.jpg" style="width:100%"> !-->

  <div class="w3-row-padding w3-section">
    <div class="w3-col s4">
      <img class="demo w3-opacity" 
      src="img/img_nature_wide.jpg" onclick="currentDiv(1)">
    </div>
    <div class="w3-col s4">
      <img class="demo w3-opacity"
      src="img/img_fjords_wide.jpg" onclick="currentDiv(2)">
    </div>
    <div class="w3-col s4">
      <img class="demo w3-opacity" 
      src="img/img_mountains_wide.jpg" onclick="currentDiv(3)">
    </div>
  </div>
</div>
 
<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
  }
  x[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " w3-opacity-off";
}
</script>
        
        
			
	
      		
			
		
			<!-- start Clients List -->	
			<div class="clients-carousel">
		
				<ul class="slides clients">
					<li><a href="http://www.wipro.com/india/" target="_blank"><img src="img/logos/r1.jpg" alt=""/></li>
					<li><a href="http://www.tcs.com/Pages/default.aspx" target="_blank"><img src="img/logos/r2.jpg" alt=""/></li>	
                                        <li><a href="http://www.genpact.com/" target="_blank"><img src="img/logos/r3.jpg" alt=""/></a></li>
					<li><a href="http://www.aithent.com/" target="_blank"><img src="img/logos/r4.jpg" alt=""/></li>
					<li><a href="http://www.techmahindra.com/theme/DAVID.html" target="_blank"><img src="img/logos/r5.jpg" alt=""/></li>
					<li><a href="http://www.appintechnology.in/" target="_blank"><img src="img/logos/r6.jpg" alt=""/></li>
					<li><a href="http://www.knowledgepodium.com/aboutus.html" target="_blank"><img src="img/logos/r7.jpg" alt=""/></li>
					<li><a href="http://www.micromaxinfo.com/" target="_blank"><img src="img/logos/r8.jpg" alt=""/></li>
					<li><a href="https://www.infosys.com/" target="_blank"><img src="img/logos/r9.jpg" alt=""/></li>
					<li><a href="http://www.genpact.com/" target="_blank"><img src="img/logos/r10.jpg" alt=""/></li>	
                                        <li><a href="http://www.cetpainfotech.com/" target="_blank"><img src="img/logos/r11.jpg" alt=""/></li>	
                                        <li><a href="https://www.infosys.com/" target="_blank"><img src="img/logos/r12.jpg" alt=""/></li>	
                                        <li><a href="http://www.genpact.com/" target="_blank"><img src="img/logos/r13.jpg" alt=""/></li>	
                                        <li><a href="http://www.hcl.com/" target="_blank"><img src="img/logos/r14.jpg" alt=""/></li>
                                        <li><a href="http://www.genpact.com/" target="_blank"><img src="img/logos/r15.jpg" alt=""/></li>
                                        <li><a href="http://www.genpact.com/" target="_blank"><img src="img/logos/Keane.jpg" alt=""/></li>
				</ul>
		
			</div>
			<!-- end Clients List -->
                        </br>
			

    <!-- start: Footer Menu -->
	<div id="footer-menu" class="hidden-tablet hidden-phone">

		<!-- start: Container -->
		<div class="container">
			
			<!-- start: Row -->
			<div class="row">

				<!-- start: Footer Menu Logo -->
				<div class="span2">
					<div id="footer-menu-logo">
						<a href="#"><img src="img/crtc.jpg" alt="logo" /></a>
					</div>
				</div>
				<!-- end: Footer Menu Logo -->

				<!-- start: Footer Menu Links-->
				<div class="span9">
					
					<div id="footer-menu-links">

						<ul id="footer-nav">

							<li><a href="Home.jsp">Home</a></li>

							<li><a href="about.html">About</a></li>

						
							
							<li><a href="contact.html">Contact</a></li>

						</ul>

					</div>
					
				</div>
				<!-- end: Footer Menu Links-->

				<!-- start: Footer Menu Back To Top -->
				<div class="span1">
						
					<div id="footer-menu-back-to-top">
						<a href="#"></a>
					</div>
				
				</div>
				<!-- end: Footer Menu Back To Top -->
			
			</div>
			<!-- end: Row -->
			
		</div>
		<!-- end: Container  -->	

	</div>	
	<!-- end: Footer Menu -->

	
	
	<div id="copyright">
	
		<!-- start: Container -->
		<div class="container">
		
			<p>
				&copy; 2017, designed and created by Appoorva Bansal, Varsha Kalakoti and Akshad  
			</p>
	
		</div>
		<!-- end: Container  -->
		
	</div>	
	<!-- end: Copyright -->

    </body>
</html>