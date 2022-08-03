package com.student;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class RegisterServelet extends HttpServlet 
{
    public void doPost(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
    {
        resp.setContentType("text/html ");
        PrintWriter pw=resp.getWriter();
        pw.println("<h2>Welcome to register servelet </h2>");
        String name=req.getParameter("user_name");
        String pass=req.getParameter("user_pass");
        String email=req.getParameter("user_email");
        String gender=req.getParameter("user_gender");
        String course=req.getParameter("user_course");
        String cond=req.getParameter("condition");
        try
        {
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/newDb","root","root");  
            String sql="insert into secondS values(?,?,?,?,?)";
            PreparedStatement ps=con.prepareStatement(sql);
            if(cond!=null&&cond.equals("checked"))
            {
                pw.println("<h2>Name : "+name+" </h2>");
                ps.setString(1, name);
                ps.setString(2, pass);
                ps.setString(3, email);
                ps.setString(4, gender);
                ps.setString(5, course);
                int rows = ps.executeUpdate();
                pw.println("<h2>Password : "+pass+" </h2>");
                pw.println("<h2>Email : "+email+" </h2>");
                pw.println("<h2>Gender : "+gender+" </h2>");
                pw.println("<h2>Course : "+course+" </h2>");
                pw.println("Rows impacted : " + rows );
            }
            else
            {
                pw.println("<h2>You have not accepted the terms and condition </h2>");
            }
            con.close();
        }
        catch(Exception ex)
        {
            pw.println(ex);
        }
        
    }
}
