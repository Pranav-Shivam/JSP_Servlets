/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Deependra
 */
import java.util.Date;
public class ClassPhoneAttribute {
                private int PhoneId;
                private int companyid;
                private String PhoneType;
                private String Number;
                private Date RecordDate;
                              
                
                public int getcompanyid() {
			return companyid;
		}
		public void setcompanyid(int companyid) {
			this.companyid = companyid;
		}
                public int getPhoneId() {
			return PhoneId;
		}
		public void setPhoneId(int PhoneId) {
			this.PhoneId = PhoneId;
		}
                public String getPhoneType() {
			return PhoneType;
		}
		public void setPhoneType(String PhoneType) {
			this.PhoneType = PhoneType;
		}
                public Date getRecordDate() {
			return RecordDate;
		}
		public void setRecordDate(Date RecordDate) {
			this.RecordDate = RecordDate;
		}
                public String getNumber() {
			return Number;
		}
		public void setNumber(String Number) {
			this.Number = Number;
		}
                
               
                @Override
		public String toString() {
			return "ClassPhoneAttribute [companyid="+ companyid +",PhoneId=" + PhoneId + ",PhoneType="+ PhoneType +",Number=" + Number + ",RecordDate="+ RecordDate +"]";
		}
}
