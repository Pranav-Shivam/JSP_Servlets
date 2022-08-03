/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Deependra
 */
public class Class_placed_unplaced_Attribute {
                private String refno;
                private String enroll; 
                private String studname;
                private String compname;
                private String dod;
                
                
                
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
                public String getstudname() {
			return studname;
		}
		public void setstudname(String studname) {
			this.studname = studname;
		}
               
                public String getenroll() {
			return enroll;
		}
		public void setenroll(String enroll) {
			this.enroll = enroll;
		}
                                                
                
                @Override
		public String toString() {
			return "Class_placed_unplaced_Attribute [refno="+ refno +",enroll=" + enroll + ",studname="+ studname +",compname="+ compname +",dod="+ dod +"]";
		}
}
