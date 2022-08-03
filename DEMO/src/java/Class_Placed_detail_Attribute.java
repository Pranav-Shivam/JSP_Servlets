/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Deependra
 */
public class Class_Placed_detail_Attribute {
                private String refno;
                private String compname; 
                private String loc;
                private String desi;                
                private String salary;                 
                private String status;
                
                
                
                public String getrefno() {
			return refno;
		}
		public void setrefno(String refno) {
			this.refno = refno;
		}
                public String getcompname() {
			return compname;
		}
		public void setcompname(String compname) {
			this.compname = compname;
		}
                                             
                public String getloc() {
			return loc;
		}
		public void setloc(String loc) {
		}
               
                public String getdesi() {
			return desi;
		}
		public void setdesi(String desi) {
			this.desi = desi;
		}
                                                
                
                
                
                public String getsalary() {
			return salary;
		}
		public void setsalary(String salary) {
			this.salary = salary;
		}                                                                
               
                public String getstatus() {
			return status;
		}
		public void setstatus(String status) {
			this.status = status;
		}
      
                @Override
		public String toString() {
			return "Class_Placed_detail_Attribute [refno="+ refno +",compname=" + compname + ",loc="+ loc +",desi="+ desi +",salary=" + salary + ",status="+ status +"]";
		}
}
