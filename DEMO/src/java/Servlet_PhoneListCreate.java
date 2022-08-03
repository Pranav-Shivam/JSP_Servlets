/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.*; 
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import java.text.SimpleDateFormat;
import java.text.DateFormat;


public class Servlet_PhoneListCreate extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ClassPhoneListDap dao;
    private HashMap<String, Object> JSONROOT = new HashMap<String, Object>();
    
    public Servlet_PhoneListCreate() {
        dao=new ClassPhoneListDap();
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
       
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
       			
                        
			int comp_id=Integer.parseInt(request.getParameter("companyid"));
			Gson gson = new GsonBuilder().setPrettyPrinting().create();
			response.setContentType("application/json");
                        
                        try
                        {
                            ClassPhoneAttribute cor = new ClassPhoneAttribute();
                            if(request.getParameter("companyid")!=null){				   
                                int companyid=Integer.parseInt(request.getParameter("companyid"));                                
                                cor.setcompanyid(companyid);
                            }   
                            if(request.getParameter("PhoneId")==null){				   
                                int PhoneId=dao.getphoneid(comp_id);                                
                                cor.setPhoneId(PhoneId);
                            }
                            if(request.getParameter("PhoneType")!=null){				   
                                String PhoneType=(String)request.getParameter("PhoneType");                               
                                cor.setPhoneType(PhoneType);
                            }
                            if(request.getParameter("Number")!=null){
                                String Number=(String)request.getParameter("Number");                               
                                cor.setNumber(Number);
                            }
                            if(request.getParameter("RecordDate")==null){                                                              
                               // DateFormat df = new SimpleDateFormat("dd/MM/yy");
                                //Date dateobj = new Date();
                                //SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");                              
                                //String  str = sdf.format(dateobj);
                                //long t =  Date.parse(str);
                                //Date dt=new Date(t);
                                
                                //System.out.print(java.time.LocalDate.now());
                                
                                
                                long millis=System.currentTimeMillis();  
                                java.sql.Date date=new java.sql.Date(millis);  
                                System.out.println(date);  
                                cor.setRecordDate(date);
                            }
                            					
                            
                            dao.createCompany(cor);									
                            JSONROOT.put("Result", "OK");
                            JSONROOT.put("Record", cor);

                            String jsonArray = gson.toJson(JSONROOT);
                            response.getWriter().print(jsonArray);
                            
                        }
                        catch(Exception e)
                        {
                            
                        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
