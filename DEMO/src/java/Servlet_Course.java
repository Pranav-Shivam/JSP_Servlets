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

/**
 *
 * @author Deependra
 */
public class Servlet_Course extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private ClassCourseDao dao;
    private HashMap<String, Object> JSONROOT = new HashMap<String, Object>();
    
    public Servlet_Course() {
        dao=new ClassCourseDao();
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
                        System.out.print(request.getParameter("action"));
			List<Courseattribute> lstUser=new ArrayList<Courseattribute>();
                        
			String action=(String)request.getParameter("action");
			Gson gson = new GsonBuilder().setPrettyPrinting().create();
			response.setContentType("application/json");
                        
                        if(action.equals("list"))
                        {
				try{						
				
                                    int startPageIndex = Integer.parseInt(request.getParameter("jtStartIndex"));
                                    int recordsPerPage = Integer.parseInt(request.getParameter("jtPageSize"));


                                    lstUser = dao.getAllCourse(startPageIndex, recordsPerPage);

                                    int userCount = dao.getCourseCount();


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
                        else if (action.equals("update")) {
						Courseattribute cor = new Courseattribute();
						if(request.getParameter("coursecode")!=null){				   
                                                    String coursecode=(String)request.getParameter("coursecode");
                                                    cor.setcoursecode(coursecode);
                                                }
                                                if(request.getParameter("coursename")!=null){
                                                         String coursename=(String)request.getParameter("coursename");
                                                    cor.setcoursename(coursename);
                                                }
                                                if(request.getParameter("coursesp")!=null){				   
                                                    String coursesp=(String)request.getParameter("coursesp");
                                                    cor.setcoursesp(coursesp);
                                                }
                                                if(request.getParameter("coursetype")!=null){
                                                         String coursetype=(String)request.getParameter("coursetype");
                                                    cor.setcoursetype(coursetype);
                                                }
                                                if(request.getParameter("courseyear")!=null){
                                                         int courseyear=Integer.parseInt((String)request.getParameter("courseyear"));
                                                    cor.setcourseyear(courseyear);
                                                }
						
							
                                                dao.updateCourse(cor);
						

						// Return in the format required by jTable plugin
						JSONROOT.put("Result", "OK");
						JSONROOT.put("Record", cor);

						// Convert Java Object to Json
						String jsonArray = gson.toJson(JSONROOT);
						response.getWriter().print(jsonArray);
					} else if (action.equals("delete")) {
						// Delete record
						if (request.getParameter("coursecode") != null) {
							String coursecode=(String)request.getParameter("coursecode");
							dao.deleteCourse(coursecode);

							
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
