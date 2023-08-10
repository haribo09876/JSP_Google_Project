package member.dto;

import java.util.Date;

// Bean spec
public class MemberDto {

		private int mno;
		private String mname;
		private Date birthDate;
		private String gender;
		private String email;
		private String recoveryEmail;
		private int phoneNo;
		private String pwd;
		
		public MemberDto() {
			super();
		}

		public MemberDto(int mno, String mname, Date birthDate, String gender, String email, String recoveryEmail,
				int phoneNo, String pwd) {
			super();
			this.mno = mno;
			this.mname = mname;
			this.birthDate = birthDate;
			this.gender = gender;
			this.email = email;
			this.recoveryEmail = recoveryEmail;
			this.phoneNo = phoneNo;
			this.pwd = pwd;
		}

		public int getMno() {
			return mno;
		}

		public void setMno(int mno) {
			this.mno = mno;
		}

		public String getMname() {
			return mname;
		}

		public void setMname(String mname) {
			this.mname = mname;
		}

		public Date getBirthDate() {
			return birthDate;
		}

		public void setBirthDate(Date birthDate) {
			this.birthDate = birthDate;
		}

		public String getGender() {
			return gender;
		}

		public void setGender(String gender) {
			this.gender = gender;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getRecoveryEmail() {
			return recoveryEmail;
		}

		public void setRecoveryEmail(String recoveryEmail) {
			this.recoveryEmail = recoveryEmail;
		}

		public int getPhoneNo() {
			return phoneNo;
		}

		public void setPhoneNo(int phoneNo) {
			this.phoneNo = phoneNo;
		}

		public String getPwd() {
			return pwd;
		}

		public void setPwd(String pwd) {
			this.pwd = pwd;
		}

		@Override
		public String toString() {
			return "MemberDto [mno=" + mno + ", mname=" + mname + ", birthDate=" + birthDate + ", gender=" + gender
					+ ", email=" + email + ", recoveryEmail=" + recoveryEmail + ", phoneNo=" + phoneNo + ", pwd=" + pwd
					+ "]";
		} 
		
}
