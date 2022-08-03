/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Deependra
 */
public class ClassCompanyDetailAttribute {
                private int companyid;
                private String compname;
                private String compdes;
                private String comphr;
                private String address;
                private String city;
                private String state;                
                
                public int getcompanyid() {
			return companyid;
		}
		public void setcompanyid(int companyid) {
			this.companyid = companyid;
		}
                public String getcompname() {
			return compname;
		}
		public void setcompname(String compname) {
			this.compname = compname;
		}
                public String getcompdes() {
			return compdes;
		}
		public void setcompdes(String compdes) {
			this.compdes = compdes;
		}
                public String getcomphr() {
			return comphr;
		}
		public void setcomphr(String comphr) {
			this.comphr = comphr;
		}
                public String getaddress() {
			return address;
		}
		public void setaddress(String address) {
			this.address = address;
		}
                public String getcity() {
			return city;
		}
		public void setcity(String city) {
			this.city = city;
		}
                 public String getstate() {
			return state;
		}
		public void setstate(String state) {
			this.state = state;
		}
               
                @Override
		public String toString() {
			return "ClassCompanyDetailAttribute [companyid="+ companyid +",compname=" + compname + ",compdes="+ compdes +",comphr=" + comphr + ",address="+ address +",city=" + city + ",state="+ state +"]";
		}
}
