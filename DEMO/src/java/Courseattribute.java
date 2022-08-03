/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Deependra
 */
public class Courseattribute {
                private String coursecode;
                private String coursename;
                private String coursesp;
                private String coursetype;
                private int courseyear;
                
                public String getcoursecode() {
			return coursecode;
		}
		public void setcoursecode(String coursecode) {
			this.coursecode = coursecode;
		}
                public String getcoursename() {
			return coursename;
		}
		public void setcoursename(String coursename) {
			this.coursename = coursename;
		}
                 public String getcoursesp() {
			return coursesp;
		}
		public void setcoursesp(String coursesp) {
			this.coursesp = coursesp;
		}
                public String getcoursetype() {
			return coursetype;
		}
		public void setcoursetype(String coursetype) {
			this.coursetype = coursetype;
		}
                public int getcourseyear() {
			return courseyear;
		}
		public void setcourseyear(int courseyear) {
			this.courseyear = courseyear;
		}
                @Override
		public String toString() {
			return "Courseattribute [coursecode="+ coursecode +",coursename=" + coursename + ",coursesp="+ coursesp +",coursetype=" + coursetype + ",courseyear="+ courseyear +"]";
		}
}
