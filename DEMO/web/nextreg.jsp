<%-- 
    Document   : nextreg
    Created on : 5 Mar, 2017, 7:07:27 PM
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
          <legend><span class="number">3</span>Education:</legend>
          <table style="width:100%">
                               <tr>
                                <th>Degree</th>
                                <th> passing year</th> 
                                <th>institution</th>
                                <th>percentage</th>
                              </tr>
                              <tr>
                                <td><input type="text" id="name" name="user_name" value="PG"></td>
                                <td><input type="year" id="name" name="user_name" ></td> 
                                <td><input type="text" id="name" name="user_name"></td>
                                <td><input type="text" id="name" name="user_name"></td>
                              </tr>
                                 <tr>
                                <td><input type="text" id="name" name="user_name" value="UG"></td>
                                <td><input type="year" id="name" name="user_name"></td> 
                                <td><input type="text" id="name" name="user_name"></td>
                                <td><input type="text" id="name" name="user_name"></td>
                              </tr>
                                 <tr>
                                <td><input type="text" id="name" name="user_name"value="12th"></td>
                                <td><input type="year" id="name" name="user_name"></td> 
                                <td><input type="text" id="name" name="user_name"></td>
                                <td><input type="text" id="name" name="user_name"></td>
                              </tr>
                               <tr>
                                <td><input type="text" id="name" name="user_name"value="10th"></td>
                                <td><input type="year" id="name" name="user_name"></td> 
                                <td><input type="text" id="name" name="user_name"></td>
                                <td><input type="text" id="name" name="user_name"></td>
                              </tr>
          </table> 
          
          
          
          
          <label for="name">Any other Qualification :</label>
          <input type="radio" id="YES" value="YES" name="user_qualification"><label for="yes" class="light">YES</label>
          <input type="radio" id="NO" value="NO" name="user_qualification"><label for="NO" class="light">NO</label><br>
            <input type="text" id="name" name="user_name" value="if yes ..." >
          
           <label for="mail">Work Experiance:</label>
          <input type="number" id="work" name="user_experiance">
          
          
 
          
        </fieldset>
        
        <fieldset>
          <legend><span class="number">4</span>Declaration </legend>
          
          <label for="name"> Do you have any break in studies:</label>
          <input type="radio" id="YES" value="YES" name="user_qualification"><label for="yes" class="light">YES</label>
          <input type="radio" id="NO" value="NO" name="user_qualification"><label for="NO" class="light">NO</label><br>
          </fieldset>
              
          <fieldset>
          <label for="name"> Do you have any pending  back log currently:</label>
          <input type="radio" id="YES" value="YES" name="user_qualification"><label for="yes" class="light">YES</label>
          <input type="radio" id="NO" value="NO" name="user_qualification"><label for="NO" class="light">NO</label><br>
           </fieldset>
        
         <fieldset>
         <label for="bio">Please mention details of Academic Project(s) undertaken:</label>
          <textarea id="project" name="user_project"></textarea>
        
         
        </fieldset>
         <a span class="button" href="nextreg2.jsp"> NEXT  </a>
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




