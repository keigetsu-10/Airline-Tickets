package com.Airline_Tickets.models;

public class Payment {
    private String paymentMethod;

    // credit card fields
    private String cardName;
    private String cardNum;
    private String expiDate;
    private String cvvNum;

    // bank transfer fields
    private String accName;
    private String accNum;
    private String bankName;
    private String swiftBic;

    // billing info fields
    private String fullName;
    private String email;
    private String phoneNum;
    private String billAdd;
    private String city;
    private String province;

    // add-on checkboxes
    private String option1; // Extra Baggage
    private String option2; // Travel Insurance

    // 👉 Getter & Setter for paymentMethod
    public String getPaymentMethod() {
        return paymentMethod;
    }
    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    // Credit card
    public String getCardName() { 
    	return cardName; 
    	}
    public void setCardName(String cardName) { 
    	this.cardName = cardName; 
    	}

    public String getCardNum() { 
    	return cardNum; 
    	}
    public void setCardNum(String cardNum) { 
    	this.cardNum = cardNum; 
    	}

    public String getExpiDate() { 
    	return expiDate; 
    	}
    public void setExpiDate(String expiDate) { 
    	this.expiDate = expiDate; 
    	}

    public String getCvvNum() { 
    	return cvvNum; 
    	}
    public void setCvvNum(String cvvNum) { 
    	this.cvvNum = cvvNum; 
    	}

    // Bank transfer
    public String getAccName() { 
    	return accName; 
    	}
    public void setAccName(String accName) { 
    	this.accName = accName; 
    	}

    public String getAccNum() { 
    	return accNum; 
    	}
    public void setAccNum(String accNum) { 
    	this.accNum = accNum;
    	}

    public String getBankName() { 
    	return bankName; 
    	}
    public void setBankName(String bankName) { 
    	this.bankName = bankName; 
    	}

    public String getSwiftBic() { 
    	return swiftBic; 
    	}
    public void setSwiftBic(String swiftBic) { 
    	this.swiftBic = swiftBic; 
    	}

    // Billing info
    public String getFullName() { 
    	return fullName; 
    	}
    public void setFullName(String fullName) { 
    	this.fullName = fullName; 
    	}

    public String getEmail() { 
    	return email; 
    	}
    public void setEmail(String email) { 
    	this.email = email; 
    	}

    public String getPhoneNum() { 
    	return phoneNum; 
    	}
    public void setPhoneNum(String phoneNum) { 
    	this.phoneNum = phoneNum; 
    	}

    public String getBillAdd() { 
    	return billAdd; 
    	}
    public void setBillAdd(String billAdd) { 
    	this.billAdd = billAdd; 
    	}

    public String getCity() { 
    	return city; 
    	}
    public void setCity(String city) { 
    	this.city = city; 
    	}

    public String getProvince() { 
    	return province; 
    	}
    public void setProvince(String province) { 
    	this.province = province; 
    	}

    // Add-ons
    public String getOption1() { 
    	return option1; 
    	}
    public void setOption1(String option1) { 
    	this.option1 = option1; 
    	}

    public String getOption2() { 
    	return option2; 
    	}
    public void setOption2(String option2) { 
    	this.option2 = option2; 
    	}
    
    public String getCardType() {
        if (cardNum == null || cardNum.isEmpty()) return "";
        char first = cardNum.charAt(0);
        if (first == '4') return "VISA";
        if (first == '5' || first == '2') return "MASTERCARD";
        if (first == '3') return "AMEX";
        return "";
    }
}