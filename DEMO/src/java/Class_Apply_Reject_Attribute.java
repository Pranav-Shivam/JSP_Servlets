/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Deependra
 */
public class Class_Apply_Reject_Attribute {
    
                private String refno;
                private String compname; 
                private String loc;
                private String desi;
                private String dod;
                private String venue;
                private String salary; 
                private String process;
                private String eli_branch;
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
                public String getdod() {
			return dod;
		}
		public void setdod(String dod) {
			this.dod = dod;
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
                                                
                
                
                public String getvenue() {
			return venue;
		}
		public void setvenue(String venue) {
			this.venue = venue;
		}
                public String getsalary() {
			return salary;
		}
		public void setsalary(String salary) {
			this.salary = salary;
		}
                public String getprocess() {
			return process;
		}
		public void setprocess(String dod) {
			this.process = process;
		}                                
                public String geteli_branch() {
			return eli_branch;
		}
		public void seteli_branch(String eli_branch) {
			this.eli_branch = eli_branch;
		}
               
                public String getstatus() {
			return status;
		}
		public void setstatus(String status) {
			this.status = status;
		}
      
                @Override
		public String toString() {
			return "Class_Apply_Reject_Attribute [refno="+ refno +",compname=" + compname + ",loc="+ loc +",desi="+ desi +",dod="+ dod +",venue="+ venue +",salary=" + salary + ",process="+ process +",eli_branch="+ eli_branch +",status="+ status +"]";
		}
    
}
