<%-- 
    Document   : noticeentryinsert
    Created on : 4 May, 2017, 10:10:51 PM
    Author     : Deependra
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.sql.Date" %>
<%@ page import ="java.sql.Time" %>
<%
try{
       
        String sess_code=(String)request.getParameter("session_code");
        String npd=(String)request.getParameter("notice_period");
        String refno=(String)request.getParameter("refno");        
        String don=(String)request.getParameter("dateofnotice");                
        String cmp=(String)request.getParameter("companyname");      
        String loc=(String)request.getParameter("location");
        String desi=(String)request.getParameter("designation");
        String dod=(String)request.getParameter("dateofdrive");        
        String venue=(String)request.getParameter("venue");                
        String sal=(String)request.getParameter("salary");
        String process=(String)request.getParameter("process");
        String elibr=(String)request.getParameter("eligiblebranch");
        
        int salary=Integer.parseInt(sal);
        
        String appid="";                        
        
        int count;
        Statement s;
        Connection con;
        ResultSet rs;
        PreparedStatement ps=null; 
        String url = "jdbc:mysql://localhost:3306/tnpproject";
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        con = DriverManager.getConnection(url, "root", "123");
        s=con.createStatement();
        
        if(sess_code != "" && npd != "" && refno !="" && don != "" && cmp != "" && loc != "" && desi !="" && dod != "" && venue != "" && sal != "" && process !="" && elibr != "" )
        {
        
                ps = con.prepareStatement("insert into notice_upload values(?,?,?,?,?,?,?,?,?,?,?,?)");
                SimpleDateFormat df=new SimpleDateFormat("dd-MM-yyyy");
                java.util.Date std=df.parse(don);
                java.sql.Date std1=new java.sql.Date(std.getTime());
                
                std=df.parse(dod);
                java.sql.Date std2=new java.sql.Date(std.getTime());
                                                
                ps.setString(1,sess_code);   
                ps.setString(2,npd);   
                ps.setString(3,refno);                                        
                ps.setDate(4,std1); 
                ps.setString(5,cmp);                                             
                ps.setString(6,loc);
                ps.setString(7,desi);   
                ps.setDate(8,std2);   
                ps.setString(9,venue);                                        
                ps.setInt(10,salary); 
                ps.setString(11,process);                                             
                ps.setString(12,elibr);

                count= ps.executeUpdate();
                if(count>0)
                {
                    %>
                        <jsp:forward page="Notice_Upload_1.jsp">
                            <jsp:param name="refno" value="<%=refno%>"/>                            
                        </jsp:forward>                                                                      
                    <%
                }
            
        }
        else
        {
                %>
                     <jsp:forward page="">
                         <jsp:param name="Message" value="Please fill all the record."/>
                     </jsp:forward>
                <%
        }
        con.close();        
        
           
    }
    catch(Exception e)
    {
        e.printStackTrace();
        %>
            <jsp:forward page="">
                <jsp:param name="Message" value="Please enter proper detail"/>
            </jsp:forward>
        <%
    }
    

%>
