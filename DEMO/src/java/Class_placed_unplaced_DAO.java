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

public class Class_placed_unplaced_DAO {
    Statement s;
    Connection c;
    
    public Class_placed_unplaced_DAO()
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
                   
                   ResultSet rs = s.executeQuery("SELECT COUNT(*) AS COUNT FROM notice_upload r,stu_personal s,comp_apply_reject c WHERE r.refno=c.refno AND s.Enrollno=c.enrollno and (r.refno,s.Enrollno) NOT IN (SELECT refno,enrollno FROM placed_notplaced)");
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
    public List<Class_placed_unplaced_Attribute> getAllAppoint(int startPageIndex, int recordsPerPage) 
    {
        	List<Class_placed_unplaced_Attribute> col = new ArrayList<Class_placed_unplaced_Attribute>();
		try {
			Statement statement = c.createStatement();                       
			ResultSet rs = statement.executeQuery("SELECT r.refno,s.Enrollno,s.name,r.companyname,r.dod FROM notice_upload r,stu_personal s,comp_apply_reject c WHERE r.refno=c.refno AND s.Enrollno=c.enrollno and (r.refno,s.Enrollno) NOT IN (SELECT refno,enrollno FROM placed_notplaced)");
			while (rs.next()) {
				Class_placed_unplaced_Attribute cor = new Class_placed_unplaced_Attribute();
                                
				cor.setrefno(rs.getString("refno"));
				cor.setenroll(rs.getString("Enrollno")); 
                                cor.setstudname(rs.getString("name"));
                                cor.setcompname(rs.getString("companyname")); 
                                cor.setdod(rs.getString("dod"));
                                
                               
                                
				col.add(cor);
			}
                        
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return col;
	}
}
