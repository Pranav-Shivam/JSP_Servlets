<%-- 
    Document   : registrationcheck
    Created on : 17 Apr, 2017, 10:50:02 PM
    Author     : DOLPHIN
--%>

<%@ page import ="java.sql.*" %>
<%
   try{
        
        String erno=(String)request.getParameter("user_ID");
        String stname=(String)request.getParameter("user_name");
        String email=(String)request.getParameter("user_email");
        String password=(String)request.getParameter("password");
        String gender=(String)request.getParameter("user_gender");
        String DOB=(String)request.getParameter("user_birthday");
        String address=(String)request.getParameter("user_address");
        String fname=(String)request.getParameter("father_name");
        String mname=(String)request.getParameter("mother_name");
        String contactno=(String)request.getParameter("contact_number");
       
        
        
        
       
        String deg1=(String)request.getParameter("degreeP");
        String inst1=(String)request.getParameter("instituteP");
        Integer YOP1=(Integer.parseInt(request.getParameter("yearP")));
        String perc1=(String)request.getParameter("percentageP");
    
        
        
        String deg2=(String)request.getParameter("degreeU");
        String inst2=(String)request.getParameter("instituteU");
        Integer YOP2=(Integer.parseInt(request.getParameter("yearU")));
        String perc2=(String)request.getParameter("percentageU");
   
        
        
        String inst3=(String)request.getParameter("instituteT");
        Integer YOP3=(Integer.parseInt(request.getParameter("yearT")));
        String perc3=(String)request.getParameter("percentageT");
                
        
        String inst4=(String)request.getParameter("instituteTW");
        Integer YOP4=(Integer.parseInt(request.getParameter("yearTW")));
        String perc4=(String)request.getParameter("percentageTW");
        
         
        String lan=(String)request.getParameter("language");
        String database=(String)request.getParameter("database");
        String fend=(String)request.getParameter("frontend");
        String bend=(String)request.getParameter("backend");
               
         
        Statement s;
        Connection con;
        PreparedStatement ps=null; 
        String url = "jdbc:mysql://localhost:3306/tnpproject";
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        con = DriverManager.getConnection(url, "root", "123");
        s=con.createStatement();

        ps=con.prepareStatement("insert into stu_personal values(?,?,?,?,?,?,?,?,?)");
        ps.setString(1,erno);
        ps.setString(2,stname);
        ps.setString(3,fname);
        ps.setString(4,mname);
        ps.setString(5,contactno);
        ps.setString(6,address);
        ps.setString(7,DOB);
        ps.setString(8,gender);
        ps.setString(9,email);           
                            
        ps.executeUpdate();
       
        ps=con.prepareStatement("insert into stu_academic values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        ps.setString(1,erno);
        ps.setString(2,deg1);
        ps.setString(3,inst1);
        ps.setInt(4,YOP1);
        ps.setString(5,perc1);
        ps.setString(6,deg2);
        ps.setString(7,inst2);
        ps.setInt(8,YOP2);
        ps.setString(9,perc2);        
        ps.setString(10,inst3);
        ps.setInt(11,YOP3);
        ps.setString(12,perc3);       
        ps.setString(13,inst4);
        ps.setInt(14,YOP4);
        ps.setString(15,perc4);
                              
        ps.executeUpdate();
           
        
        ps=con.prepareStatement("insert into stu_itskill values(?,?,?,?,?)");
        ps.setString(1,erno);
        ps.setString(2,lan);
        ps.setString(3,database);
        ps.setString(4,fend);
        ps.setString(5,bend);
        
        ps=con.prepareStatement("insert into userlogin values(?,?,?)");
        ps.setString(1,erno);
        ps.setString(2,password);
        ps.setString(3,"Student");
        
        ps.close();
            
        
        con.close();


            %>
                 <jsp:forward page="reg_start.jsp">
                     <jsp:param name="errorMessage" value="Your data has been saved"/>
                 </jsp:forward>
            <%
        
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    

%>
         
         
         
         
         
        
        
        
        
        
        
        