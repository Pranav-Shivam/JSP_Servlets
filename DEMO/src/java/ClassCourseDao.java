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
public class ClassCourseDao {
        Statement s;
        Connection c;

	public ClassCourseDao() {
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
        public int getCourseCount()
        {
                int count=0;
                try 
                {
                   
                   ResultSet rs = s.executeQuery("SELECT COUNT(*) AS COUNT FROM course_detail");
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
	public List<Courseattribute> getAllCourse(int startPageIndex, int recordsPerPage) {
		List<Courseattribute> col = new ArrayList<Courseattribute>();
		try {
			Statement statement = c.createStatement();
                        int range = startPageIndex+recordsPerPage;
			ResultSet rs = statement.executeQuery("SELECT * from course_detail limit "+startPageIndex+","+recordsPerPage+"");
			while (rs.next()) {
				Courseattribute cor = new Courseattribute();
                                
				cor.setcoursecode(rs.getString("course_id"));
				cor.setcoursename(rs.getString("course_name"));
                                cor.setcoursesp(rs.getString("course_sp"));
				cor.setcoursetype(rs.getString("course_type"));
                                cor.setcourseyear(rs.getInt("year"));
                                
				col.add(cor);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return col;
	}
        public void updateCourse(Courseattribute user){
		try {
			PreparedStatement preparedStatement = c.prepareStatement("update course_detail set course_name=?,course_sp=?,course_type=?,year=? where course_id=?");
			// Parameters start with 1			
			
			preparedStatement.setString(1, user.getcoursename());
			preparedStatement.setString(2, user.getcoursesp());
                        preparedStatement.setString(3, user.getcoursetype());
                        preparedStatement.setInt(4, user.getcourseyear());
                        preparedStatement.setString(5, user.getcoursecode());
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
        public void deleteCourse(String course) {
		try {
			PreparedStatement preparedStatement = c.prepareStatement("delete from course_detail where course_id=?");
			// Parameters start with 1
			preparedStatement.setString(1, course);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
