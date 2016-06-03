package com.finals.member;

import java.sql.Date;

public class MemberDTO {

	    private String id;

	    private String pw;
	    
	    private String pw2;

		private String name;

	    private int pum1;

	    private int pum2;

	    private String address;

	    private String agency;

	    private String phone;

	    private String email;

	    private String gender;

	    private Date year;
	    
	    private Date month;

		private Date day;

	    private int point;

	    private int state;

	    private int repay;

		public String getId() {
			return id;
		}

		public void setId(String id) {
			this.id = id;
		}

		public String getPw() {
			return pw;
		}

		public void setPw(String pw) {
			this.pw = pw;
		}

		public String getPw2() {
			return pw2;
		}
		
		public void setPw2(String pw2) {
			this.pw2 = pw2;
		}
		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public int getPum1() {
			return pum1;
		}

		public void setPum1(int pum1) {
			this.pum1 = pum1;
		}

		public int getPum2() {
			return pum2;
		}

		public void setPum2(int pum2) {
			this.pum2 = pum2;
		}

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}

		public String getAgency() {
			return agency;
		}

		public void setAgency(String agency) {
			this.agency = agency;
		}

		public String getPhone() {
			return phone;
		}

		public void setPhone(String phone) {
			this.phone = phone;
		}


		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getGender() {
			return gender;
		}

		public void setGender(String gender) {
			this.gender = gender;
		}

		public Date getYear() {
			return year;
		}

		public void setYear(Date year) {
			this.year = year;
		}
		

	    public Date getMonth() {
			return month;
		}

		public void setMonth(Date month) {
			this.month = month;
		}

		public Date getDay() {
			return day;
		}

		public void setDay(Date day) {
			this.day = day;
		}

		public int getPoint() {
			return point;
		}

		public void setPoint(int point) {
			this.point = point;
		}

		public int getState() {
			return state;
		}

		public void setState(int state) {
			this.state = state;
		}

		public int getRepay() {
			return repay;
		}

		public void setRepay(int repay) {
			this.repay = repay;
		}
	    
	    

}
