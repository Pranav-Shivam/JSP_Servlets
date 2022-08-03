<%-- 
    Document   : newreg
    Created on : 5 Mar, 2017, 6:56:35 PM
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
        <link rel="stylesheet" type="text/css" href="css/reg.css"/>
         
	
        <script src="js/jquery-1.8.2.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/flexslider.js"></script>
        <script src="js/carousel.js"></script>
        <script src="js/jquery.cslider.js"></script>
        <script src="js/slider.js"></script>
        <script defer="defer" src="js/custom.js"></script>
         <script src="js/jobrole.js"></script>


        
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
        
        
        
          <div>
        
<form name="form1" action="registrationcheck.jsp" method="post"   class="register">
            <h1>Registration</h1>
            <fieldset class="row1">
                <legend>ACCOUNT DETAIL
              </legend>
                <p>
                   <label>Email *
                  </label>
                    <input name="email" type="text"/>
                    <label>Repeat email *
                    </label>
                    <input name="repeatemail" type="text"/>
                </p>
                <p>
                    <label>Password*
                    </label>
                    <input name="password"type="text"/>
                    <label>Repeat Password*
                    </label>
                    <input name="repeatpassword"type="text"/>
                    <label class="obinfo">* obligatory fields
                    </label>
                </p>
                
      </fieldset>
            
      <fieldset class="row1">
          <legend>PERSONAL INFORMATION
          </legend>
                <p>
                   <label>Enrollment no. *
                  </label>
                    <input name="ernumber" type="text"/>
                    <label>Name *
                    </label>
                  <input name="name" type="text"/>
                </p>
                
  <p>
                   <label>Father's Name *
    </label>
                    <input name="fathername" type="text"/>
                    <label>Mother's Name*
                    </label>
                    <input name="mothername" type="text"/>
                </p>
                
                 <p>
                   <label>Contact No. *
                    </label>
               <input name="contactno" type="text"/>
                    <label>Address *
                    </label>
                    <textarea name="address"></textarea>
                </p>
                 <p>
                   <label for="date">Birthday*</label>
                   <input name="date" type="date" id="date">
                   
                   
                   <label>Gender*
                    </label>
                 	<table width="100">
                   <tr>
                     <td><label>Female
                       <input type="radio" name="gender" value="F" id="RadioGroup1_0">
                     </label></td>
                   </tr>
                   <tr>
                     <td><label>Male
                       <input type="radio" name="gender" value="M" id="RadioGroup1_1">
                     </label></td>
                   </tr>
                 </table>
                 </p>
                 </fieldset>
                 
                 
                  <fieldset class="row1">
          <legend>EDUCATION
          </legend>
               <fieldset class="row2">
                  <legend>Highest Qualification
          </legend>
                   <p>
                     <label>Degree * </label>
                     <input type="text" name="degreeP"/>
				   </p>
                  <p>
                     <label>Institution * </label>
                     <input type="text" name="instituteP"/>
				   </p>
                   <p>
                    <label>Year of Passing *
                    </label>
                    <input type="text" name="yearP"/>
				   </p>
                   <p>
                    <label>Percentage *
                    </label>
                    <input type="text" name="percentageP"/>
                </p>
                </fieldset>
               
                <fieldset class="row2">
                  <legend>Graduation
          </legend>
                   <p>
                     <label>Degree * </label>
                     <input type="text" name="degreeU"/>
				   </p>
                  <p>
                     <label>Institution * </label>
                     <input type="text" name="instituteU"/>
				   </p>
                   <p>
                    <label>Year of Passing *
                    </label>
                    <input type="text" name="yearU"/>
				   </p>
                   <p>
                    <label>Percentage *
                    </label>
                    <input type="text" name="percentageU"/>
                </p>
                </fieldset>
                    
                <fieldset class="row2">
                  <legend>10th Standard
          </legend>
                  <p>
                     <label>Institution * </label>
                     <input type="text" name="instituteT"/>
				   </p>
                   <p>
                    <label>Year of Passing *
                    </label>
                    <input type="text" name="yearT"/>
				   </p>
                   <p>
                    <label>Percentage *
                    </label>
                    <input type="text" name="percentageT"/>
                </p>
               </fieldset>
               
               <fieldset class="row2">
                  <legend>Intermediate
          </legend>
                  <p>
                     <label>Institution * </label>
                     <input type="text" name="instituteTW"/>
				   </p>
                   <p>
                    <label>Year of Passing *
                    </label>
                    <input type="text" name="yearTW"/>
				   </p>
                   <p>
                    <label>Percentage *
                    </label>
                    <input type="text" name="percentageTW"/>
                </p>
                
                 </fieldset> 
             </fieldset>                                              			                   	   
  <fieldset class="row1">
		     <legend>IT SKILLS  </legend>  
                <p>
                	<label>Langauge *
                  </label>
                    <input type="text" name="language"/>
                    <label>Database *
                    </label>
                    <input type="text" name="database"/>
                </p>
                <p>
                    <label>FrontEnd*
                    </label>
                    <input type="text" name="frontend"/>
                    <label>BackEnd*
                    </label>
                    <input type="text" name="backend"/>
                </p>
               
                </fieldset>
						
	
	
	<div><button class="button">Register &raquo;</button></div>
	
	</fieldset>					
																
																								
</form>

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



