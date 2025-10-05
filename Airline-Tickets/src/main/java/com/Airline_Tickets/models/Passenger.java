package com.Airline_Tickets.models;

public class Passenger {
    private String firstName;
    private String lastName;
    private String middleName;
    private String birthDate;
    private String nationality;
    private String passportId;
    private String email;
    private String mobileNumber;
    private String seat; // Optional field

    // Getters and Setters
    public String getFirstName() { 
    	return firstName; 
    	}
    public void setFirstName(String firstName) { 
    	this.firstName = firstName; 
    	}

    public String getLastName() { 
    	return lastName; 
    	}
    public void setLastName(String lastName) { 
    	this.lastName = lastName; 
    	}

    public String getMiddleName() { 
    	return middleName; 
    	}
    public void setMiddleName(String middleName) { 
    	this.middleName = middleName; 
    	}

    public String getBirthDate() { 
    	return birthDate; 
    	}
    public void setBirthDate(String birthDate) { 
    	this.birthDate = birthDate; 
    	}

    public String getNationality() { 
    	return nationality; 
    	}
    public void setNationality(String nationality) { 
    	this.nationality = nationality; 
    	}

    public String getPassportId() { 
    	return passportId; 
    	}
    public void setPassportId(String passportId) { 
    	this.passportId = passportId; 
    	}

    public String getEmail() { 
    	return email; 
    	}
    public void setEmail(String email) { 
    	this.email = email; 
    	}

    public String getMobileNumber() { 
    	return mobileNumber; 
    	}
    public void setMobileNumber(String mobileNumber) { 
    	this.mobileNumber = mobileNumber; 
    	}

    public String getSeat() { 
    	return seat; 
    	}
    public void setSeat(String seat) { 
    	this.seat = seat; 
    	}
}