package com.Airline_Tickets.models;

public class register {
    private String firstname;
    private String lastname;
    private String middlename;
    private String bday;
    private String phonenum;
    private String email;
    private String password; // ✅ updated from 'pass' to 'password'

    public register(String firstname, String lastname, String middlename, 
                    String bday, String phonenum, String email, String password) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.middlename = middlename;
        this.bday = bday;
        this.phonenum = phonenum;
        this.email = email;
        this.password = password;
    }

    // ✅ getters and setters
    public String getFirstname() { return firstname; }
    public void setFirstname(String firstname) { this.firstname = firstname; }

    public String getLastname() { return lastname; }
    public void setLastname(String lastname) { this.lastname = lastname; }

    public String getMiddlename() { return middlename; }
    public void setMiddlename(String middlename) { this.middlename = middlename; }

    public String getBday() { return bday; }
    public void setBday(String bday) { this.bday = bday; }

    public String getPhonenum() { return phonenum; }
    public void setPhonenum(String phonenum) { this.phonenum = phonenum; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getPassword() { return password; } // ✅ correct getter
    public void setPassword(String password) { this.password = password; }
}
