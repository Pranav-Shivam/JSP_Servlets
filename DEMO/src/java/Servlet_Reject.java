/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Servlet_Reject extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                String refid = request.getParameter("refid");
                
                String ref_id[]=refid.split("#");
                String id = ref_id[ref_id.length-1];
                String ref="";                
                System.out.println(id);
                try
                {
                    Statement s;
                    Connection c;
                    PreparedStatement ps;
                    String url = "jdbc:mysql://localhost:3306/tnpproject";
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    c = DriverManager.getConnection(url, "root", "123");
                    s=c.createStatement();
                                           
                    for(int i=0; i< ref_id.length-1 ;i++)
                    {
                        System.out.println(ref_id[i]);
                        ps=c.prepareStatement("insert into comp_apply_reject values(?,?,?)");
                        ps.setString(1, id);
                        ps.setString(2, ref_id[i]);
                        ps.setString(3, "Reject");
                        
                        ps.executeUpdate();                                                                                                                                                                      
                    } 
                }
                catch(Exception ex)
                {         
                    ex.printStackTrace();
                }               
                //json = new Gson().toJson(ref);
                response.setContentType("text/plain");
                response.getWriter().write(ref);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
