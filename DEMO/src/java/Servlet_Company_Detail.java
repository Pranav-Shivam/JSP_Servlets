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


public class Servlet_Company_Detail extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ClassCompanyDetaildao dao;
    private HashMap<String, Object> JSONROOT = new HashMap<String, Object>();
    
    
    public Servlet_Company_Detail() {
        dao=new ClassCompanyDetaildao();
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
                        System.out.print(request.getParameter("action"));
			List<ClassCompanyDetailAttribute> lstUser=new ArrayList<ClassCompanyDetailAttribute>();
                        
			String action=(String)request.getParameter("action");
			Gson gson = new GsonBuilder().setPrettyPrinting().create();
			response.setContentType("application/json");
                        
                        if(action.equals("list"))
                        {
				try{						
				
                                    int startPageIndex = Integer.parseInt(request.getParameter("jtStartIndex"));
                                    int recordsPerPage = Integer.parseInt(request.getParameter("jtPageSize"));


                                    lstUser = dao.getAllCompany(startPageIndex, recordsPerPage);

                                    int userCount = dao.getCompanyCount();


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
                        else if (action.equals("update")) 
                        {
						ClassCompanyDetailAttribute cor = new ClassCompanyDetailAttribute();
						if(request.getParameter("companyid")!=null){				   
                                                    int companyid=Integer.parseInt(request.getParameter("companyid"));
                                                    cor.setcompanyid(companyid);
                                                }
                                                if(request.getParameter("compname")!=null){
                                                         String compname=(String)request.getParameter("compname");
                                                    cor.setcompname(compname);
                                                }
                                                if(request.getParameter("compdes")!=null){				   
                                                    String compdes=(String)request.getParameter("compdes");
                                                    cor.setcompdes(compdes);
                                                }
                                                if(request.getParameter("comphr")!=null){
                                                         String comphr=(String)request.getParameter("comphr");
                                                    cor.setcomphr(comphr);
                                                }
                                                if(request.getParameter("address")!=null){
                                                        String address=(String)request.getParameter("address");
                                                    cor.setaddress(address);
                                                }
						if(request.getParameter("city")!=null){
                                                         String city=(String)request.getParameter("city");
                                                    cor.setcity(city);
                                                }
                                                if(request.getParameter("state")!=null){
                                                        String state=(String)request.getParameter("state");
                                                    cor.setstate(state);
                                                }
							
                                                dao.updateCompany(cor);
						

						// Return in the format required by jTable plugin
						JSONROOT.put("Result", "OK");
						JSONROOT.put("Record", cor);

						// Convert Java Object to Json
						String jsonArray = gson.toJson(JSONROOT);
						response.getWriter().print(jsonArray);
			} else if (action.equals("delete")) {
						
						if(request.getParameter("companyid")!=null){ 
							int companyid=Integer.parseInt(request.getParameter("companyid"));
							dao.deleteCompany(companyid);

							
							JSONROOT.put("Result", "OK");

						
							String jsonArray = gson.toJson(JSONROOT);
							response.getWriter().print(jsonArray);
						}
                                               
                        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
