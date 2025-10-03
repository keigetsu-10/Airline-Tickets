package com.Airline_Tickets.models;

public class register {
	private String firstname;
	private String lastname;
	private String middlename;
	private String bday;
	private String phonenum;
	private String email;
	private String pass;
	
	
	public register(String firstname, String lastname, 
			String middlename, String bday, String phonenum,String email, String pass) {
			super();
			this.firstname=firstname;
			this.lastname=lastname;
			this.middlename=middlename;
			this.bday=bday;
			this.phonenum=phonenum;
			this.email=email;
			this.pass=pass;
			
		
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getMiddlename() {
		return middlename;
	}

	public void setMiddlename(String middlename) {
		this.middlename = middlename;
	}

	public String getBday() {
		return bday;
	}

	public void setBday(String bday) {
		this.bday = bday;
	}

	public String getPhonenum() {
		return phonenum;
	}

	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

}
