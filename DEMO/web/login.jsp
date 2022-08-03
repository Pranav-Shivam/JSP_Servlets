<%-- 
    Document   : login
    Created on : 28 Feb, 2017, 11:56:18 AM
    Author     : DOLPHIN
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
	
        <script src="js/jquery-1.8.2.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/flexslider.js"></script>
        <script src="js/carousel.js"></script>
        <script src="js/jquery.cslider.js"></script>
        <script src="js/slider.js"></script>
        <script defer="defer" src="js/custom.js"></script>
        <script src="js/validation/jquery.validate.min.js" type="text/javascript"></script>
     
        <script src="js/validation/loginValidation.js" type="text/javascript"></script>
        <link href="css/myCSS_login.css" rel="stylesheet">
 
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
                                                        <li><a href="login.jsp" >Login</a></li>
			              			
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
        
      <link rel="stylesheet" href="css/style_1.css">

        <div id="wrap">
           <div id="upperbar">            
           </div>       
               <div id="navthing">
                   </br>
                   </br>
                     <!--<h2><a href="#" id="loginform">Login</a> | <a href="#">Register</a></h2>-->
                     <center>
                     
                      <div class="formholder">
                            <div class="randompad">
                                <form id="form1" action="logincheck.jsp" method="post">
                                    <%
                                            String error=request.getParameter("errorMessage");
                                            if(error!=null){
                                    %>
                                        <label name="errormessage" style="font-size: 18px;font-style: italic;font-family: Monotype Corsiva"><%=error%></label>
                                    <%
                                       
                                        }
                                    %>
                                 <fieldset>
                                     <textalign:left> <label name="email" style="font-size: 18px;font-style: italic;font-family: Monotype Corsiva">  USER </label>
                                        <input name="login" id="login" type="text" style="font-size: 18px;width:300px;height: 28px"/>
                                        <label name="pass"  style="font-size: 18px;font-style: italic;font-family: Monotype Corsiva">PASSWORD</label>
                                        <input name="password" id="password" type="password" />
                                        <input type="submit" value="Login" />
                                        <p class="login__signup" style="font-size: 18px;font-style: italic;font-family: Monotype Corsiva">Don't have an account? &nbsp;<a href="newreg.jsp">Sign up</a></p>
                                  </fieldset>
                                  </form>
                                </center>
                            </div>
                        </div>
                    </div>
                           
        </div>
           <script src="js/index.js"></script>
            </link>

            </br>
            </br>
            </br>
            </br>            
        
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



	
        
        
        
        
        
        
			
	
      		
			
		
			