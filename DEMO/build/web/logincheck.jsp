<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
<%
   try{
       
        String li=(String)request.getParameter("login");
        String psd=(String)request.getParameter("password");
   
        Statement s;
        Connection con;
        PreparedStatement ps=null; 
        String url = "jdbc:mysql://localhost:3306/tnpproject";
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        con = DriverManager.getConnection(url, "root", "123");
        s=con.createStatement();

        ps=con.prepareStatement("select * from userlogin where uid=? and password=?");
        ps.setString(1,li);
        ps.setString(2,psd);
        ResultSet rs=ps.executeQuery();
        if(rs.next())
        {
            String str=rs.getString(3);
            ps.close();
            rs.close();
            con.close();
            session.setAttribute("id", li);
            if(str.equals("Admin")){
                response.sendRedirect("Admin/Home.jsp");
            }else if(str=="Principal")
            {
                response.sendRedirect("");
            }else if(str.equals("Student"))
            {
                response.sendRedirect("Student/dashboard.jsp");
            }
        }else
        {
%>
     <jsp:forward page="login.jsp">
         <jsp:param name="errorMessage" value="Sorry You Entered Incorrect Login ID OR Pasword"/>
     </jsp:forward>
<%
           }
    }
    catch(Exception e)
    {
        out.println("SORRY! Something Getting Wrong\n\n The Error IS  :-"+e);
    }
    

%>
