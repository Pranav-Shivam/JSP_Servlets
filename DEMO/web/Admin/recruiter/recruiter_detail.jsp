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
        <script src=".../.../js/validation/jquery.validate.min.js" type="text/javascript"></script>
        <script src=".../.../js/validation/userValidation.js" type="text/javascript"></script>
        <link href=".../.../css/myCSS.css" rel="stylesheet">
        
        
        <script type="text/javascript">
            
          
          $(document).ready(function () 
          {
                $('#CompanyTableContainer').jtable({
                title: 'Table of Recruiter Detail',
                paging: true,
                
                actions: {
                    listAction: '.../.../Servlet_Company_Detail?action=list',
                    updateAction: '.../.../Servlet_Company_Detail?action=update',
                    deleteAction: '.../.../Servlet_Company_Detail?action=delete'                
                },
                fields: {
                    
                    phone:{
                        title: '',
                        width: '5%',
                        sorting: false,
                        edit: false,
                        create: false,
                        display: function (companyData) {
                            //Create an image that will be used to open child table
                            var $img = $('<img src=".../.../img/phone.png" title="Edit phone numbers" />');
                            //Open child table when user clicks the image
                            $img.click(function () {
                                $('#CompanyTableContainer').jtable('openChildTable',
                                        $img.closest('tr'),
                                        {
                                            title: companyData.record.compname + ' - Phone numbers',
                                            actions: {
                                                listAction: '.../.../Servlet_PhoneList?companyid=' + companyData.record.companyid,
                                                deleteAction: '.../.../Servlet_PhoneListDelete?companyid=' + companyData.record.companyid,
                                                updateAction: '.../.../Servlet_PhoneListUpdate?companyid=' + companyData.record.companyid,
                                                createAction: '.../.../Servlet_PhoneListCreate?companyid=' + companyData.record.companyid
                                            },
                                            fields: {
                                                companyid: {
                                                    type: 'hidden',
                                                    defaultValue: companyData.record.companyid
                                                },
                                                PhoneId: {
                                                    key: true,
                                                    create: false,
                                                    edit: false,
                                                    list: false
                                                },
                                                PhoneType: {
                                                    title: 'Phone type',
                                                    width: '30%',
                                                    options: { 'Mobile Phone': 'Mobile Phone', 'Office Phone': 'Office Phone', 'Fax Number': 'Fax Number' }
                                                },
                                                Number: {
                                                    title: 'Phone Number',
                                                    width: '30%'
                                                },
                                                RecordDate: {
                                                title: 'Record date',
                                                width: '20%',                                                
                                                create: false,
                                                edit: false
                                                }
                                            }
                                        }, function (data) { //opened handler
                                            data.childTable.jtable('load');
                                        });
                                });
                                //Return image to show on the person row
                                return $img;
                        }
                    
                    },
                    companyid:{
                            title:'Company ID',
                            width: '5%',
                            key: true,
                            list: true,
                            edit: false                             
                    },                            
                    compname: {
                            title:'Company Name',
                            width: '10%',
                            edit:true,                            
                    },
                    compdes:{
                            title:'Company Description',
                            width:'25%',
                            edit:true
                            
                    },
                    comphr:{
                            title:'HR Name',
                            width:'15%',                            
                            edit:true
                    },
                    address:{
                            title:'Address',
                            width:'20%',
                            edit:true                           
                    },
                    city:{
                            title:'City',
                            width:'10%',
                            edit:true
                           
                    },
                    state:{
                            title:'State',
                            width:'25%',
                            edit:true                           
                    }
                }               
        });
        $('#CompanyTableContainer').jtable('load');
        $('#save').click(function(event) {
                    event.preventDefault();
                    var currentForm = $(this).closest('form');
                    var cname= $("#companyname").val();
                    var hname= $("#hr_name").val();
                    var add= $("#address").val();
                    var city= $("#city").val();
                    var state= $("#state").val();
                    var cdesc= $("#compdesc").val();
                       
                    /** Create div element for delete confirmation dialog*/
                    var dynamicDialog = $('<div id="conformBox">'+
                    '<span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 20px 0;">'+
                    '</span>Are you sure to save the record?</div>');
                    var dynamicDialog1 = $('<div id="conformBox">'+
                    '<span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 20px 0;">'+
                    '</span>Your record has been successfully saved.</div>');
                    
                    if(cname=='' || hname=='' || add=='' || city== '' || state=='' || cdesc=='' )
                    {
                       currentForm.submit();
                    }
                    else
                    {    
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
                    }
                });
        });
        
     </script>     
    </head>
    <body>
        <%
            String id1=(String)session.getAttribute("id");
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
                        <li><a><%=id1%></a></li>
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
        <form name="form1" id="form1" method="post">
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
                        <h5><font style="color: #149bdf">Company / Recruiters Detail</font></h5>                        
                    </div>                    
                </div>
                <!-- /. ROW  -->
                <hr />
                <div class="row">
                    <%      
                       int count=0,id=0;
                       String compid="";
                       Statement s;
                       Connection c;
                       String sess="";
                       PreparedStatement ps=null; 
                       String url = "jdbc:mysql://localhost:3306/tnpproject";
                       Class.forName("com.mysql.jdbc.Driver").newInstance();
                       c = DriverManager.getConnection(url, "root", "123");
                       s=c.createStatement();
                       try
                       {
                           
                           
                           String sql="select comp_id from company_detail order by comp_id desc";
                           ResultSet rs=s.executeQuery(sql);
                           try
                           {   
                               
                               if(rs.next())
                               {
                                   id=rs.getInt(1)+1;
                                   compid=id+"";
                                   
                               }
                               else
                                   compid="101";
                           }
                           catch(Exception e)
                           {
                               
                           }
                       
                    %>
                    <center>
                    <table width="98%">
                            <tr>
                                <td style="vertical-align: top;text-align: right; width:20%" >
                                    <b><font size="2px" style="color: #149bdf">Company ID</b> 
                                </td>
                                <td style="vertical-align: top" >
                                    <input  name="company_id" value="<%=compid%>" size="10px" id="companyid" style="color: #149bdf" type="text" readonly/>
                                </td>
                                
                                <td style="vertical-align: top;text-align: right;width:25%"  >
                                    <b><font size="2px" style="color: #149bdf">Company Name</b>
                                </td>
                                <td style="vertical-align: top;width:20%"  >                                         
                                    <input type="text" name="company_name" size="35x" id="companyname" style="color: #149bdf;text" />                                                                                          
                                </td>
                                <td style="vertical-align: top;text-align: right;width:45%"  >
                                    <b><font size="2px" style="color: #149bdf">HR Name</b>                                    
                                </td>
                                <td style="vertical-align: top;width:10%"  >
                                    <input type="text" name="hrname" size="20px" id="hr_name" style="color: #149bdf;"/>                                                                   
                                </td>
                            </tr>
                        
                            <tr>
                                <td style="vertical-align: top;text-align: right;width: 20%" >
                                    <b><font size="2px" style="color: #149bdf">Address</b> 
                                </td>
                                <td style="vertical-align: top" >
                                    <textarea rows="3" cols="15" name="address" id="address" style="color: #149bdf;"></textarea>
                                </td>
                                
                                <td style="vertical-align: top;text-align: right;width:25%"  >
                                    <b><font size="2px" style="color: #149bdf">City</b>
                                </td>
                                <td style="vertical-align: top;width:20%" >
                                    <input type="text" name="city" size="15px" id="city" style="color: #149bdf;">
                                </td>
                                <td style="vertical-align: top;text-align: right;width:40%"  >
                                    <b><font size="2px" style="color: #149bdf">State</b>
                                </td>
                                <td style="vertical-align: top; width:10%"  >
                                    <input type="text" name="state" size="14px" id="state" style="color: #149bdf;">                               
                                </td>
                            </tr>  
                            <tr>
                                <td style="vertical-align: top;text-align: right;width:40%"  >
                                    <b><font size="2px" style="color: #149bdf">Company Description</b>
                                </td>
                                <td style="vertical-align: top; width:10%"  >
                                    <textarea rows="3" cols="15" name="compdesc" id="comp_desc" style="color: #149bdf;"></textarea>                               
                                </td>
                                <td colspan="4">
                                    
                                </td>
                            </tr>
                        </table>                        
                    </center>
                </div>                
                
                <%                           
                                    String jdbc_insert_sql = "INSERT INTO company_detail values(?,?,?,?,?,?,?)";
                                    String comp_id="";
                                    String comp_name="";
                                    String comp_des="";
                                    String comp_hr="";
                                    String comp_add="";
                                    String comp_city="";
                                    String comp_state="";
                                    int ye=0;
                                    comp_id=request.getParameter("company_id");
                                    comp_name=(String)request.getParameter("company_name");  
                                    comp_des=(String)request.getParameter("compdesc");
                                    comp_hr=(String)request.getParameter("hrname");  
                                    comp_add=(String)request.getParameter("address");
                                    comp_city=(String)request.getParameter("city");
                                    comp_state=(String)request.getParameter("state");                                      
                                    
                                    ye=Integer.parseInt(comp_id);
                                    
                                    if(comp_id != "" && comp_name != "" && comp_des != "" && comp_hr != "" && comp_add!="" && comp_city != "" && comp_state != "")
                                    {
                                        ps = c.prepareStatement(jdbc_insert_sql);
                                        
                                        ps.setInt(1,ye);
                                        ps.setString(2,comp_name);
                                        ps.setString(3,comp_des);
                                        ps.setString(4,comp_hr);
                                        ps.setString(5,comp_add);                                        
                                        ps.setString(6,comp_city);
                                        ps.setString(7,comp_state);
                                        count= ps.executeUpdate();
                                    }
                                    c.close();

                            }
                            catch(Exception e)
                            {
                                    System.out.println(e);
                            }
                %>
                <hr />
                <div style="text-align: left ">
                    
                        <table width="100%">
                            <tr>                                                     
                                <td style="vertical-align: top;text-align: left;">
                                    <input style="color: #149bdf" type="Button" id="save" name="save" value="Save Detail" >                                    
                                </td>
                                
                            </tr>  
                        </table>
                       
                </div>                
                <hr />
 
                    <div class="content">
                        <div id="CompanyTableContainer"></div>
                    </div>
     
                <!-- /. ROW  -->
                <hr />
                <div class="row">
                    <div class="col-md-3 col-sm-3 col-xs-6">                      
                        <div class="alert alert-info text-center">
                           <img src=".../.../img/logos/wipro.jpg" width="180px" height="180px"/>
                        </div>                                                    
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-6">                      
                        <div class="alert alert-info text-center">
                            <img src=".../.../img/logos/tcs.jpg" width="180px" height="180px"/>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-6">                       
                        <div class="alert alert-info text-center">
                            <img src=".../.../img/logos/ibm.png" width="180px" height="180px"/>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-6">                        
                        <div class="alert alert-info text-center">  
                            <img src=".../.../img/logos/infosys.png" width="180px" height="180px"/>
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
        </form>
        <!-- /. PAGE WRAPPER  -->
    </div>
    </body>
</html>