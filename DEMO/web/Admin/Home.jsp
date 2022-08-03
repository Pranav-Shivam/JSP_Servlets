<%-- 
    Document   : Home
    Created on : Mar 8, 2017, 9:03:54 PM
    Author     : Deependra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TNP Admin</title>
        <link href=".../cssadmin/bootstrap.css" rel="stylesheet" />        
        <link href=".../cssadmin/font-awesome.css" rel="stylesheet" />        
        <link href=".../cssadmin/custom.css" rel="stylesheet" />
        
        <script src=".../jsadmin/jquery-1.10.2.js"></script>
        <script src=".../jsadmin/bootstrap.min.js"></script>
        <script src=".../jsadmin/jquery.metisMenu.js"></script>
        <script src=".../jsadmin/custom.js"></script>
        
      
        
    </head>
    <body>
        <%
            String id=(String)session.getAttribute("id");
        %>
        <div id="wrapper">
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><img src=".../img/logo.png" width="300px" height="50px" alt="Logo"></a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a>Welcome</a></li>
                        <li><a><%=id%></a></li>
                        <li><a href=".../login.jsp">Logout</a></li>
                    </ul>
                </div>

            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li class="text-center user-image-back">
                        <img src=".../imgadmin/find_user.png" class="img-responsive" />                     
                    </li>
                    <li>
                        <a href="Home.jsp"><i class="fa fa-desktop "></i>Dashboard</a>
                    </li>
                    <li>
                        <a href="Course/add_course.jsp"><i class="fa fa-desktop "></i>Course Creation</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-edit "></i>Recruiters Card<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="recruiter/recruiter_detail.jsp">Recruiters Entry</a>
                            </li>
                                                       
                        </ul>
                    </li>
                    <li>
                        <a href="Notice/Notice_Upload.jsp"><i class="fa fa-table "></i>Notice Uploading</a>
                    </li>
                    
                    <li>
                        <a href="Event/Event_Generate.jsp"><i class="fa fa-sitemap "></i>Event Generation</a>                                                                           
                    </li>
                    <li>
                        <a href="Event/placed_student_mark.jsp"><i class="fa fa-sitemap "></i>Placed Student Mark</a>                        
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-sitemap "></i>Training Record</a>                        
                    </li>                      
                    <li>
                        <a href="#"><i class="fa fa-qrcode "></i>Login Detail</a>
                    </li>                    
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2><font style="color: #149bdf">Training and Placement Cell</font></h2>
                    </div>
                </div>
                <!-- /. ROW  -->
                <hr />
                <div class="row">                    
                    <div class="col-md-4 col-sm-3 col-xs-6">
                        <h5><font style="color: #149bdf">Admin Dashboard</font></h5>                        
                    </div>                    
                </div>
                <!-- /. ROW  -->
                              

                <div style="text-align: left ">
                    
                      
                       
                </div>                
                <hr />

                <div class="row">
                    <div class="col-md-3 col-sm-3 col-xs-6">                      
                        <div class="alert alert-info text-center">
                           <img src=".../img/logos/wipro.jpg" width="200px" height="200px"/>
                        </div>                                                    
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-6">                      
                        <div class="alert alert-info text-center">
                            <img src=".../img/logos/tcs.jpg" width="200px" height="200px"/>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-6">                       
                        <div class="alert alert-info text-center">
                            <img src=".../img/logos/ibm.png" width="200px" height="200px"/>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-6">                        
                        <div class="alert alert-info text-center">  
                            <img src=".../img/logos/infosys.png" width="200px" height="200px"/>
                        </div>
                    </div>
                </div>
                  <div class="row">
                    <div class="col-md-12">
                        <h5 style="color: #002a80">Placement at Teerthanker Mahaveer University</h5>
                        <p style="text-align: justify;color: #002a80">To ignite career dreams of younger generation being groomed in the university through a structured intervention in the form of a scientifically develop “PERSONALITY DEVELOPMENT PROGRAM” incorporating career guidance,social sensitivity issues & latest corporate practices by an appropriate mix of different pedagogues.</p>

                    </div>
                </div>
                <!-- /. ROW  -->

            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    </body>
</html>
