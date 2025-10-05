package com.Airline_Tickets.models;

public class PersonalInfoSummary {
    private String fullName;
    private String formattedBirthDate;
    private String nationality;
    private String passportId;
    private String seatNumber;

    public PersonalInfoSummary(Passenger user) {
        this.fullName = (user.getFirstName() + " " +
                         (user.getMiddleName() != null ? user.getMiddleName() + " " : "") +
                         user.getLastName()).trim();
        this.formattedBirthDate = user.getBirthDate();
        this.nationality = user.getNationality();
        this.passportId = user.getPassportId();
        this.seatNumber = (user.getSeat() != null && !user.getSeat().isEmpty()) ? user.getSeat() : "N/A";
    }

    public String getFullName() { return fullName; }
    public String getFormattedBirthDate() { return formattedBirthDate; }
    public String getNationality() { return nationality; }
    public String getPassportId() { return passportId; }
    public String getSeatNumber() { return seatNumber; }
}