<%-- 
    Document   : nextreg2
    Created on : 5 Mar, 2017, 10:49:24 PM
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
        <link rel="stylesheet" type="text/css" href="css/style_reg2.css"/>
	
        <script src="js/jquery-1.8.2.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/flexslider.js"></script>
        <script src="js/carousel.js"></script>
        <script src="js/jquery.cslider.js"></script>
        <script src="js/slider.js"></script>
        <script defer="defer" src="js/custom.js"></script>
         <script src="js/imgupload.js"></script>


        
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
                                                        <li><a href="#" id="loginform">Login</a></li>
			              			
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
        
        
        
        <form action=" " method="post">
      
        <h1>Sign Up</h1>
       
         <fieldset>
          <legend><span class="number">5</span>Your profile</legend>
          <label for="skills">IT skill:</label>
         
             <table style="width:100%">
                                 <tr>
                                   <td style="text-align: center">Language </td>
                                <td><input type="text" id="name" name="user_language"></td>
                               </tr>
                               
                               <tr>
                                <td style="text-align: center">Database </td>
                                <td><input type="text" id="name" name="user_database" ></td> 
                               </tr>
                               
                               <tr>
                                <td style="text-align: center">Web </td>
                                <td><input type="text" id="name" name="user_web"></td>
                               </tr>
             </table>        
          </fieldset>
       <fieldset>
        <label for="job">Job Role:</label>
        <select  id="job" name="user_job">
          <optgroup label="Web">
            <option value="frontend_developer">Front-End Developer</option>
            <option value="php_developor">PHP Developer</option>
            <option value="python_developer">Python Developer</option>
            <option value="VB.net_developer"> java Developer</option>
            <option value="web_designer">Web Designer</option>
            <option value="WordPress_developer">WordPress Developer</option>
          </optgroup>
          <optgroup label="Mobile">
            <option value="Android_developer">Androild Developer</option>
            <option value="iOS_developer">iOS Developer</option>
            <option value="mobile_designer">Mobile Designer</option>
          </optgroup>
          <optgroup label="BPO">
            <option value="Voice Purpose">Voice Purpose</option>
            <option value=" Non-Voice Purpose">Non-Voice Purpose</option>
          </optgroup>
          <optgroup label="Other">
            <option value="secretary">Secretary</option>
            <option value="maintenance">Maintenance</option>
          </optgroup>
        </select>
        </fieldset>
        
        <fieldset
          <label>Interests:</label>
            <br>
            
          <input type="checkbox" id="development" value="interest_development" name="user_interest"><label class="light" for="development">Development</label><br>
            <input type="checkbox" id="design" value="interest_design" name="user_interest"><label class="light" for="design">Design</label><br>
            <input type="checkbox" id="testing" value="interest_testing" name="user_interest"><label class="light" for="testing">Coding and Testing</label><br>
            <input type="checkbox" id="business" value="interest_Database" name="user_interest"><label class="light" for="Database">Database</label><br>
          <input type="checkbox" id="business" value="interest_business" name="user_interest"><label class="light" for="business">Business</label>
        
        </fieldset>
          
          
         <a span class="button" href="lastreg.jsp"> NEXT  </a>
      </form>
 
        
     
                        </br>
                        
                        
                        <!--login table -->
                        
			

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




