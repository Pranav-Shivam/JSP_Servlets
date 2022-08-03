/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Deependra
 */

import java.sql.*;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
public class ClassCompanyDetaildao {
        Statement s;
        Connection c;

	public ClassCompanyDetaildao() {
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
        public int getCompanyCount()
        {
                int count=0;
                try 
                {
                   
                   ResultSet rs = s.executeQuery("SELECT COUNT(*) AS COUNT FROM company_detail");
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
	public List<ClassCompanyDetailAttribute> getAllCompany(int startPageIndex, int recordsPerPage) {
		List<ClassCompanyDetailAttribute> col = new ArrayList<ClassCompanyDetailAttribute>();
		try {
			Statement statement = c.createStatement();                       
			ResultSet rs = statement.executeQuery("SELECT * from company_detail limit "+startPageIndex+","+recordsPerPage+"");
			while (rs.next()) {
				ClassCompanyDetailAttribute cor = new ClassCompanyDetailAttribute();
                                
				cor.setcompanyid(rs.getInt("comp_id"));
				cor.setcompname(rs.getString("comp_name"));
                                cor.setcompdes(rs.getString("comp_description"));
				cor.setcomphr(rs.getString("comp_hr"));
                                cor.setaddress(rs.getString("address"));
                                cor.setcity(rs.getString("city"));
                                cor.setstate(rs.getString("state"));
                                
				col.add(cor);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return col;
	}
        public void updateCompany(ClassCompanyDetailAttribute user){
		try {
			PreparedStatement ps = c.prepareStatement("update company_detail set comp_name=?,comp_description=?,comp_hr=?,address=?, city=?,state=? where comp_id=?");
			// Parameters start with 1			
			
			ps.setString(1, user.getcompname());
			ps.setString(2, user.getcompdes());
                        ps.setString(3, user.getcomphr());
                        ps.setString(4, user.getaddress());
                        ps.setString(5, user.getcity());
                        ps.setString(6, user.getstate());
                        ps.setInt(7, user.getcompanyid());
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
        public void deleteCompany(int compid) {
		try {
			PreparedStatement preparedStatement = c.prepareStatement("delete from company_detail where comp_id=?");
			// Parameters start with 1
			preparedStatement.setInt(1, compid);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
