/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Deependra
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class Class_Placed_detail_DAO {
    Statement s;
    Connection c;
    
    public Class_Placed_detail_DAO()
    {
            try
            {
		String url = "jdbc:mysql://localhost:3306/tnpproject";
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                c = DriverManager.getConnection(url, "root", "123");
                s=c.createStatement();
            }
            catch(Exception ex)
            {                
            }
    }
    public int getCount()
    {
                int count=0;
                try 
                {
                   
                   ResultSet rs = s.executeQuery("SELECT COUNT(*) AS COUNT FROM notice_upload r, stu_personal s, placed_notplaced p WHERE s.Enrollno=p.enrollno AND r.refno=p.refno");
                   while (rs.next()) 
                   {
                        count=rs.getInt("COUNT");
                   }
                } 
                catch (SQLException e) 
                {
                        System.err.println(e.getMessage());
                }
                return count;
    }
    public List<Class_Placed_detail_Attribute> getAllAppoint(int startPageIndex, int recordsPerPage) 
    {
        	List<Class_Placed_detail_Attribute> col = new ArrayList<Class_Placed_detail_Attribute>();
		try {
			Statement statement = c.createStatement();                       
			ResultSet rs = statement.executeQuery("SELECT r.refno,r.companyname,r.loc,r.designation,r.salary, p.status FROM notice_upload r, stu_personal s, placed_notplaced p WHERE s.Enrollno=p.enrollno AND r.refno=p.refno");
			while (rs.next()) {
				Class_Placed_detail_Attribute cor = new Class_Placed_detail_Attribute();
                                
				cor.setrefno(rs.getString("refno"));
				cor.setcompname(rs.getString("companyname")); 
                                cor.setloc(rs.getString("loc"));
                                cor.setdesi(rs.getString("designation"));                                                                 
                                cor.setsalary(rs.getString("salary"));                                
                                cor.setstatus(rs.getString("status")); 
                               
                                
				col.add(cor);
			}
                        
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return col;
	}
}
