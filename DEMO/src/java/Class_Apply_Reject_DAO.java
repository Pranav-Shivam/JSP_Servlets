
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Deependra
 */
public class Class_Apply_Reject_DAO {
 
    Statement s;
    Connection c;
    
    public Class_Apply_Reject_DAO()
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
                   
                   ResultSet rs = s.executeQuery("SELECT COUNT(*) AS COUNT FROM notice_upload r, event_generate s WHERE r.refno=s.refid AND r.refno NOT IN (SELECT refno FROM comp_apply_reject)");
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
    public List<Class_Apply_Reject_Attribute> getAllAppoint(int startPageIndex, int recordsPerPage) 
    {
        	List<Class_Apply_Reject_Attribute> col = new ArrayList<Class_Apply_Reject_Attribute>();
		try {
			Statement statement = c.createStatement();                       
			ResultSet rs = statement.executeQuery("SELECT r.refno,r.companyname,r.loc,r.designation,r.dod,r.venue,r.salary,r.process,r.eligible_br, s.status FROM notice_upload r, event_generate s WHERE r.refno=s.refid AND r.refno NOT IN (SELECT refno FROM comp_apply_reject)");
			while (rs.next()) {
				Class_Apply_Reject_Attribute cor = new Class_Apply_Reject_Attribute();
                                
				cor.setrefno(rs.getString("refno"));
				cor.setcompname(rs.getString("companyname")); 
                                cor.setloc(rs.getString("loc"));
                                cor.setdesi(rs.getString("designation")); 
                                cor.setdod(rs.getString("dod"));
                                cor.setvenue(rs.getString("venue")); 
                                cor.setsalary(rs.getString("salary"));
                                cor.setprocess(rs.getString("process")); 
                                cor.seteli_branch(rs.getString("eligible_br"));
                                cor.setstatus(rs.getString("status")); 
                               
                                
				col.add(cor);
			}
                        
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return col;
	}
    
}
