<%-- 
    Document   : add_course
    Created on : Mar 15, 2017, 7:53:48 PM
    Author     : Deependra
--%>
<%@ page  import ="java.sql.*" %>
<%@ page import ="java.util.Date" %>  
<%@ page  import ="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">         
        <title>TNP Admin</title>
        <link href=".../.../cssadmin/bootstrap.css" rel="stylesheet" />        
        <link href=".../.../cssadmin/font-awesome.css" rel="stylesheet" />        
        <link href=".../.../cssadmin/custom.css" rel="stylesheet" />
         <link href=".../.../css/jtable.css" rel="stylesheet" type="text/css" />
        <link href=".../.../css/jquery-ui-1.10.3.custom.css" rel="stylesheet" type="text/css" />
        
        <link href=".../.../cssadmin/jquery-ui.css" rel="stylesheet" type="text/css" />
        <link href=".../.../cssadmin/listbox.css" rel="stylesheet" type="text/css" />
        
        <script src=".../.../jsadmin/jquery-1.10.2.js"></script>
        <script src=".../.../jsadmin/bootstrap.min.js"></script>
        <script src=".../.../jsadmin/jquery.metisMenu.js"></script>
        <script src=".../.../jsadmin/custom.js"></script>
        <script src=".../.../js/jquery-1.8.2.js" type="text/javascript"></script>
        <script src=".../.../js/jquery-ui-1.10.3.custom.js" type="text/javascript"></script>
        <script src=".../.../js/jquery.jtable.js" type="text/javascript"></script>
        <script src=".../.../jsadmin/jquery-ui.js"></script>
        <script src=".../.../jsadmin/listbox.js"></script>
        
        <script type="text/javascript">
         $(function () {
            $('select#eligiblebranch').listbox();           
          });
          $(document).ready(function() 
            {
                $('#noticeperiod').change(function(event) 
                {
                    
                    var $noticeperiod = $("#noticeperiod option:selected").text();
                    var $session= $("#sessioncode").val();
                    var $refno="TMU/CCSIT/T&P Cell/" + $session + "/" + $noticeperiod;
                    
                    $.get('.../.../ServletNoticePeriod', {referenceno : $refno}, function(response) 
                    {
                        $('#refno').val(response);                        
                    });
                    
                });
            });
          $(document).ready(function () 
          {
                $('#CourseTableContainer').jtable({
                title: 'Table of Notice Upload Detail',
                paging: true,
                toolbar:{
                     items: [{
                            
                            text: 'Export to Excel',
                            click: function () {
                                window.open('data:application/vnd.ms-excel,' + encodeURIComponent($('#CourseTableContainer').HTML()));
                                e.preventDefault();                                
                            }
                        },{
                            
                            text: 'Export to Pdf',
                            click: function () {
                                //perform your custom job...
                            }
                        }]
                },
                actions: {
                    listAction: '.../.../Servlet_Course?action=list',
                    updateAction: '.../.../Servlet_Course?action=update',
                    deleteAction: '.../.../Servlet_Course?action=delete'                
                },
                fields: {
                    coursecode: {
                            title:'Course Code',
                            width: '10%',
                            key: true,
                            list: true,
                            edit: false,
                            create:true
                    },
                    coursename: {
                            title:'Course Name',
                            width: '25%',
                            edit:true                 
                    },
                    coursesp:{
                            title:'Course Specialization',
                            width:'25%',
                            edit:true
                            
                    },
                    coursetype:{
                            title:'Course Type',
                            width:'25%',                            
                            options:{'Under Graduate':'Under Graduate','Post Graduate':'Post Graduate'}
                    },
                    courseyear:{
                            title:'Year',
                            width:'5%',
                            edit:true,
                            type:'int',
                    }
                    

                }
            });
        $('#CourseTableContainer').jtable('load');
        $('#save').click(function(event) {
                    event.preventDefault();
                    var currentForm = $(this).closest('form');
                    var $eli=$("#refno").val();
                    alert($eli);
                    /** Create div element for delete confirmation dialog*/
                    var dynamicDialog = $('<div id="conformBox">'+
                    '<span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 20px 0;">'+
                    '</span>Are you sure to save the record?</div>');
                    var dynamicDialog1 = $('<div id="conformBox">'+
                    '<span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 20px 0;">'+
                    '</span>Your record has been successfully saved.</div>');

                    dynamicDialog.dialog({
                            title : "Are you sure?",
                            closeOnEscape: true,
                            modal : true,

                            buttons : 
                                    [{
                                            text : "Yes",
                                            click : function() {
                                                    $(this).dialog("close");                                                    
                                                    dynamicDialog1.dialog({
                                                            title: "Record Saved",
                                                            closeOnEscape: true,
                                                            modal : true,
                                                            buttons:
                                                                    [{
                                                                            text : "Ok",
                                                                            click : function() 
                                                                            {
                                                                                    $(this).dialog("close");  
                                                                                    currentForm.submit();
                                                                            }                                                                    
                                                                    }]                                                                    
                                                    });
                                                    
                                            }
                                    },
                                    {
                                            text : "No",
                                            click : function() {
                                                    $(this).dialog("close");
                                            }
                                    }]
                    });
                    return false;
                });
        });
        
     </script>     
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
                    <a class="navbar-brand" href="#"><img src=".../.../img/logo.png" width="300px" height="50px" alt="Logo"></a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a>Welcome</a></li>
                        <li><a><%=id%></a></li>
                        <li><a href=".../.../login.jsp">Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li class="text-center user-image-back">
                        <img src=".../.../imgadmin/find_user.png" class="img-responsive" />                     
                    </li>
                    <li>
                        <a href="../Home.jsp"><i class="fa fa-desktop "></i>Dashboard</a>
                    </li>
                    <li>
                        <a href="../Course/add_course.jsp"><i class="fa fa-desktop "></i>Course Creation</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-edit "></i>Recruiters Card<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="../recruiter/recruiter_detail.jsp">Recruiters Entry</a>
                            </li>
                                                       
                        </ul>
                    </li>
                    <li>
                        <a href="../Notice/Notice_Upload.jsp"><i class="fa fa-table "></i>Notice Uploading</a>
                    </li>
                    
                    <li>
                        <a href="../Event/Event_Generate.jsp"><i class="fa fa-sitemap "></i>Event Generation</a>                                                                           
                    </li>
                    <li>
                        <a href="../Event/placed_student_mark.jsp"><i class="fa fa-sitemap "></i>Placed Student Mark</a>                        
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
        <form name="form1" action="${pageContext.request.contextPath}/NoticeUpload" method="post" enctype="multipart/form-data">
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
                        <h5><font style="color: #149bdf">Notice Entry and Uploading</font></h5>                        
                    </div>                    
                </div>
                <!-- /. ROW  -->
                <hr />
                <div class="row">
                    
                    <center>
                        <%
                            String str=(String)request.getParameter("refno");
                        %>
                        <input type="hidden" name="refno" id="refno" value="<%=str%>">
                    <table width="98%">
                                                                                                           
                            <tr>                               
                                <td style="vertical-align: top;text-align: right" >
                                    <b><font size="2px" style="color: #149bdf">Select Notice</b>
                                </td>
                                <td style="vertical-align: top;">
                                    <input type="file" name="file" id="file" style="color: #149bdf;"/> 
                                </td>
                            </tr>
                        </table>                        
                    </center>
                </div>
                <hr />                

                <div style="text-align: left ">
                    
                        <table width="100%">
                            <tr>                                                     
                                <td style="vertical-align: middle;text-align: left;">
                                    <input style="color: #149bdf" type="Button" id="save" name="save" value="Notice Upload" >                                    
                                </td>
                                
                            </tr>  
                        </table>
                       
                </div>                
                <hr />

                <div class="row">
                    <div class="col-md-3 col-sm-3 col-xs-6">                      
                        <div class="alert alert-info text-center">
                           <img src=".../.../img/logos/wipro.jpg" width="200px" height="200px"/>
                        </div>                                                    
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-6">                      
                        <div class="alert alert-info text-center">
                            <img src=".../.../img/logos/tcs.jpg" width="200px" height="200px"/>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-6">                       
                        <div class="alert alert-info text-center">
                            <img src=".../.../img/logos/ibm.png" width="200px" height="200px"/>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-6">                        
                        <div class="alert alert-info text-center">  
                            <img src=".../.../img/logos/infosys.png" width="200px" height="200px"/>
                        </div>
                    </div>
                </div>
                  <div class="row">
                    <div class="col-md-12">
                        <h5 style="color: #002a80">Placement at Teerthanker Mahaveer University</h5>
                        <p style="text-align: justify;color: #002a80">To ignite career dreams of younger generation being groomed in the university through a structured intervention in the form of a scientifically develop ???PERSONALITY DEVELOPMENT PROGRAM??? incorporating career guidance,social sensitivity issues & latest corporate practices by an appropriate mix of different pedagogues.</p>

                    </div>
                </div>
                <!-- /. ROW  -->

            </div>
            <!-- /. PAGE INNER  -->
        </div>
        </form>
        <!-- /. PAGE WRAPPER  -->
    </div>
    </body>
</html>