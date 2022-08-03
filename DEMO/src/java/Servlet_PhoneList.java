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


public class Servlet_PhoneList extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ClassPhoneListDap dao;
    private HashMap<String, Object> JSONROOT = new HashMap<String, Object>();
    
    public Servlet_PhoneList() {
        dao=new ClassPhoneListDap();
    }
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {        
    }  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                       
			List<ClassPhoneAttribute> lstUser=new ArrayList<ClassPhoneAttribute>();
                        
			int comp_id=Integer.parseInt(request.getParameter("companyid"));
			Gson gson = new GsonBuilder().setPrettyPrinting().create();
			response.setContentType("application/json");
                            
                       try
                       {						
                                    //System.out.print(request.getParameter("companyid"));
                                    //int startPageIndex = Integer.parseInt(request.getParameter("1"));
                                    //int recordsPerPage = Integer.parseInt(request.getParameter("jtPageSize"));
                                   // System.out.print(startPageIndex+"");

                                    lstUser = dao.getAllPhone(comp_id);

                                    int userCount = dao.getPhoneCount(comp_id);

                                    
                                    JSONROOT.put("Result", "OK");
                                    JSONROOT.put("Records", lstUser);
                                    JSONROOT.put("TotalRecordCount", userCount);

                                                       
                                    String jsonArray = gson.toJson(JSONROOT);
                                    
                                    response.getWriter().print(jsonArray);
                        }catch(Exception ex){
					String error="{\"Result\":\"ERROR\",\"Message\":"+ex.getMessage()+"}";
					response.getWriter().print(error);
					ex.printStackTrace();
			}							                        
    }    
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
