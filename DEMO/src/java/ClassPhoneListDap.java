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
import java.util.Date;
import java.util.*;
import java.text.SimpleDateFormat;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
public class ClassPhoneListDap {
        Statement s;
        Connection c;

	public ClassPhoneListDap() {
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
        public int getPhoneCount(int id)
        {
                int count=0;
                try 
                {
                   
                   ResultSet rs = s.executeQuery("SELECT COUNT(*) AS COUNT FROM company_phone_detail where comp_id="+ id +"");
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
	public List<ClassPhoneAttribute> getAllPhone(int id) {
		List<ClassPhoneAttribute> col = new ArrayList<ClassPhoneAttribute>();
                    try {
                            Statement statement = c.createStatement();                       
                            ResultSet rs = statement.executeQuery("SELECT * from company_phone_detail where comp_id=" + id + "");
                            while (rs.next()) {
                                    ClassPhoneAttribute cor = new ClassPhoneAttribute();
                                    cor.setcompanyid(rs.getInt("comp_id"));
                                    cor.setPhoneId(rs.getInt("phoneid"));				
                                    cor.setPhoneType(rs.getString("phone_type"));
                                    cor.setNumber(rs.getString("phone_number"));
                                    cor.setRecordDate(rs.getDate("record_date"));

                                    col.add(cor);
                            }
                    } catch (SQLException e) {
                            e.printStackTrace();
                    }

                    return col;
                }
        public void createCompany(ClassPhoneAttribute user) {
                    try {                        
                        
                        long millis=System.currentTimeMillis();  
                        java.sql.Date date=new java.sql.Date(millis);
                        
                        System.out.println(user.getPhoneId()+""+user.getcompanyid()+""+user.getPhoneType()+""+user.getPhoneType());
			PreparedStatement preparedStatement = c.prepareStatement("insert into company_phone_detail values (?,?,?,?,?)");
			// Parameters start with 1
                        preparedStatement.setInt(1, user.getPhoneId());
                        preparedStatement.setInt(2, user.getcompanyid());
			preparedStatement.setString(3, user.getPhoneType());
                        preparedStatement.setString(4, user.getNumber());
			preparedStatement.setDate(5,date);
			
			preparedStatement.executeUpdate();

                    } catch (SQLException e) {
			e.printStackTrace();
                    }
        
	}
        public int getphoneid(int cid)
        {
                int pid=0;
                String sql="select phoneid from company_phone_detail where comp_id = " + cid + " order by phoneid desc";
                
                try
                {   
                    
                    Statement statement = c.createStatement();
                    ResultSet rs=statement.executeQuery(sql);
                    while(rs.next())
                    {
                        pid=rs.getInt(1)+1;                          
                    }
                    
                }
                catch(Exception e)
                {        
                    pid=1;
                }
                return pid;
        }
}
