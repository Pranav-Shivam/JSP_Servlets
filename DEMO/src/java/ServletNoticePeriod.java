/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import java.sql.*;
import com.google.gson.Gson;

/**
 *
 * @author Deependra
 */
public class ServletNoticePeriod extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
        }
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
                String refno = request.getParameter("referenceno");
                String ref_no[]=refno.split("/");
                String ref="";
                //List<String> list = new ArrayList<String>();
                //String json = null;
                System.out.println(refno);
                try
                {
                    Statement s;
                    Connection c;
                    String url = "jdbc:mysql://localhost:3306/tnpproject";
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    c = DriverManager.getConnection(url, "root", "123");
                    s=c.createStatement();
                       
                    String sql="select refno from notice_upload where notice_period='"+ ref_no[4] +"' order by refno desc";
                    ResultSet rs=s.executeQuery(sql);
                    
                    rs.next();
                    {
                        ref=rs.getString(1);
                        String ref_n[]=ref.split("/");
                        int seq=Integer.parseInt(ref_n[5])+1;
                        ref=refno+"/"+seq;
                    }
                    
                }
                catch(Exception ex)
                {         
                    ref=refno+"/1";
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

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
