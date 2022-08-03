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

public class Class_Notice_Event_DAO {
    
    Statement s;
    Connection c;
    
    public Class_Notice_Event_DAO()
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
                   
                   ResultSet rs = s.executeQuery("SELECT COUNT(*) AS COUNT FROM notice_upload WHERE refno NOT IN (SELECT refid FROM event_generate)");
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
    public List<Class_Notice_Event_Attribute> getAllAppoint(int startPageIndex, int recordsPerPage) 
    {
        	List<Class_Notice_Event_Attribute> col = new ArrayList<Class_Notice_Event_Attribute>();
		try {
			Statement statement = c.createStatement();                       
			ResultSet rs = statement.executeQuery("SELECT refno,companyname,dod,eligible_br FROM notice_upload WHERE refno NOT IN (SELECT refid FROM event_generate)");
			while (rs.next()) {
				Class_Notice_Event_Attribute cor = new Class_Notice_Event_Attribute();
                                
				cor.setrefno(rs.getString("refno"));
				cor.setcompname(rs.getString("companyname")); 
                                cor.setdod(rs.getString("dod"));
                                cor.seteli_branch(rs.getString("eligible_br"));
                               
                                
				col.add(cor);
			}
                        
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return col;
	}
    
}
