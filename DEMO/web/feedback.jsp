<%-- 
    Document   : contact
    Created on : 12 May, 2017, 10:48:23 PM
    Author     : Win10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Training and placement cell of CCSIT</title> 
	

    
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/bootstrap-responsive.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
         <link rel="stylesheet" href="css/style_1.css">
	
        <script src="js/jquery-1.8.2.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/flexslider.js"></script>
        <script src="js/carousel.js"></script>
        <script src="js/jquery.cslider.js"></script>
        <script src="js/slider.js"></script>
        <script defer="defer" src="js/custom.js"></script>
        
        <link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>


<script type="text/JavaScript" src="js/slimbox2.js"></script> 
<link rel="stylesheet" href="css/slimbox2.css" type="text/css" media="screen" />


        
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
                                                        <li><a href="login.jsp">Login</a></li>
                                                        
			              			
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
        
         <div id="templatemo_wrapper">
       <div id="templatemo_main">
    
	<div class="col_w900 col_w900_last">
    
          <div class="col_w420 float_l">
          
           	  <h3>FeedBack Form</h3>
              
              <div id="cp_contact_form">
              
                    <form method="post" name="contact" action="#">
                    
                            <label for="author">Name:</label> <input name="author" type="text" class="input_field" id="author" maxlength="60" />
                          	<div class="cleaner_h10"></div>
                            
                            <label for="email">Email:</label> <input name="email" type="text" class="input_field" id="email" maxlength="60" />
                          	<div class="cleaner_h10"></div>
                            
                            <label for="subject">Query:</label> <textarea id="text" name="text" rows="0" cols="0" class="required"></textarea>
                            <div class="cleaner_h10"></div>

                            <label for="text">Feedback:</label> <textarea id="text" name="text" rows="0" cols="0" class="required"></textarea>
                            <div class="cleaner_h10"></div>
                            
                            <input type="submit" class="submit_btn float_l" name="submit" id="submit" value="Send" />
                            <input type="reset" class="submit_btn float_r" name="reset" id="reset" value="Reset" />
                        
                   </form>
    
            </div>
               
      </div>
            
            <div class="col_w420 float_r" id="map">
            	<h3>Map</h3>
                <a rel="lightbox" href="img/map_big.jpg" title="Our Location">
                    <img src="img/map_thumb.jpg" alt="Map" />
                </a>

				<div class="cleaner h30"></div>
                                
                <h3>Our Location</h3>
                
                		<h6>Mailing Address</h6>
                   	  	380-260 Vitae urna blandit est egestas, <br />
                        Pulvinar sit amet convallis eget, 12880<br />
						Lorem ipsum dolor<br />
                		<br />
                     	Tel: 010-030-6600<br />
                        Fax: 010-030-7700
            </div>
            
            <div class="cleaner"></div>
	  </div>
        
        <div class="cleaner"></div>
        
        <span class="bottom"></span>    </div> 
    <!-- end of main -->

</div> <!-- end of templatemo_wrapper --> 
        
        
        
        
        
        
        
        
        
        
        
        
        
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

							<li><a href="about.jsp">About</a></li>

						
							
							<li><a href="contact.jsp">Contact</a></li>

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
