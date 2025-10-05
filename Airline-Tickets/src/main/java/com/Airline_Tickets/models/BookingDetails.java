package com.Airline_Tickets.models;

public class BookingDetails {
    private String from;
    private String to;
    private String fromTerminal;
    private String toTerminal;
    private String destination;
    private String destinationTerminal;
    private String departureDate;
    private String returnDate;
    private String departureTime;
    private String returnTime;
    private String flightClass;
    private String airlines;
    private String baggageAllowance;
    private String travelFare;
    private String vat;
    private String totalPrice;

    // getters and setters

    public String getFrom() { return from; }
    public void setFrom(String from) { this.from = from; }

    public String getTo() { return to; }
    public void setTo(String to) { this.to = to; }

    public String getFromTerminal() { return fromTerminal; }
    public void setFromTerminal(String fromTerminal) { this.fromTerminal = fromTerminal; }

    public String getToTerminal() { return toTerminal; }
    public void setToTerminal(String toTerminal) { this.toTerminal = toTerminal; }

    public String getDestination() { return destination; }
    public void setDestination(String destination) { this.destination = destination; }

    public String getDestinationTerminal() { return destinationTerminal; }
    public void setDestinationTerminal(String destinationTerminal) { this.destinationTerminal = destinationTerminal; }

    public String getDepartureDate() { return departureDate; }
    public void setDepartureDate(String departureDate) { this.departureDate = departureDate; }

    public String getReturnDate() { return returnDate; }
    public void setReturnDate(String returnDate) { this.returnDate = returnDate; }

    public String getDepartureTime() { return departureTime; }
    public void setDepartureTime(String departureTime) { this.departureTime = departureTime; }

    public String getReturnTime() { return returnTime; }
    public void setReturnTime(String returnTime) { this.returnTime = returnTime; }

    public String getFlightClass() { return flightClass; }
    public void setFlightClass(String flightClass) { this.flightClass = flightClass; }

    public String getAirlines() { return airlines; }
    public void setAirlines(String airlines) { this.airlines = airlines; }

    public String getBaggageAllowance() { return baggageAllowance; }
    public void setBaggageAllowance(String baggageAllowance) { this.baggageAllowance = baggageAllowance; }

    public String getTravelFare() { return travelFare; }
    public void setTravelFare(String travelFare) { this.travelFare = travelFare; }

    public String getVat() { return vat; }
    public void setVat(String vat) { this.vat = vat; }

    public String getTotalPrice() { return totalPrice; }
    public void setTotalPrice(String totalPrice) { this.totalPrice = totalPrice; }
}