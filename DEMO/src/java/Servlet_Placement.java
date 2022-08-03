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

/**
 *
 * @author Deependra
 */
public class Servlet_Placement extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                String refid = request.getParameter("refid");
                String ref_id[]=refid.split("#");
                String ref="";                
                System.out.println(ref_id.length);
                try
                {
                    Statement s;
                    Connection c;
                    PreparedStatement ps;
                    String url = "jdbc:mysql://localhost:3306/tnpproject";
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    c = DriverManager.getConnection(url, "root", "123");
                    s=c.createStatement();
                                           
                    for(int i=0; i< ref_id.length ;i++)
                    {
                        System.out.println(ref_id[i]);
                        ps=c.prepareStatement("insert into event_generate values(?,?)");
                        ps.setString(1, ref_id[i]);
                        ps.setString(2, "Placement");
                        
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
