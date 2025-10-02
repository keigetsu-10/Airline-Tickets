package com.Airline_Tickets.models;

public class Payment {
    private String paymentMethod;

    // credit card fields
    private String cardName;
    private String cardNum;
    private String expiDate;
    private String cvvNum;

    // bank transfer fields
    private String bankName;
    private String swiftBic;

    // 👉 Getter & Setter for paymentMethod
    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    // getters & setters for other fields
    public String getCardName() { return cardName; }
    public void setCardName(String cardName) { this.cardName = cardName; }

    public String getCardNum() { return cardNum; }
    public void setCardNum(String cardNum) { this.cardNum = cardNum; }

    public String getExpiDate() { return expiDate; }
    public void setExpiDate(String expiDate) { this.expiDate = expiDate; }

    public String getCvvNum() { return cvvNum; }
    public void setCvvNum(String cvvNum) { this.cvvNum = cvvNum; }

    public String getBankName() { return bankName; }
    public void setBankName(String bankName) { this.bankName = bankName; }

    public String getSwiftBic() { return swiftBic; }
    public void setSwiftBic(String swiftBic) { this.swiftBic = swiftBic; }
}
