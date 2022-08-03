/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Deependra
 */
public class Class_Notice_Event_Attribute {
                private String refno;
                private String compname; 
                private String dod;
                private String eli_branch;
                
                
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
                public String geteli_branch() {
			return eli_branch;
		}
		public void seteli_branch(String eli_branch) {
			this.eli_branch = eli_branch;
		}
               
                @Override
		public String toString() {
			return "ClassAppointmentAttribute [refno="+ refno +",compname=" + compname + ",dod="+ dod +",eli_branch="+ eli_branch +"]";
		}
    
}
