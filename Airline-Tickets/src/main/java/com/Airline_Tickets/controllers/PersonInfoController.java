package com.Airline_Tickets.controllers;

import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

//import com.example.demo.model.BookingDetails;
import com.Airline_Tickets.models.Passenger;

@Controller
public class PersonInfoController {

    // Show Personal Info form
    @GetMapping("/PersonalInfo")
    public String showForm(Model model, HttpSession session) {
        model.addAttribute("user", new Passenger());

        // Booking details sample (normally comes from DB or session)
//        BookingDetails bookingDetails = new BookingDetails();
//        bookingDetails.setDepartureDate("2025-10-20");
//        bookingDetails.setReturnDate("2025-10-30");
//        bookingDetails.setFrom("Manila");
//        bookingDetails.setFromTerminal("Terminal 3");
//        bookingDetails.setDestination("Cebu");
//        bookingDetails.setDestinationTerminal("Terminal 2");
//        bookingDetails.setFlightClass("Economy");
//        bookingDetails.setBaggageAllowance("20kg");
//        bookingDetails.setTravelFare("12,000.00");
//        bookingDetails.setVat("500.00");
//        bookingDetails.setTotalPrice("12,500.00");

        // Example seat options (these would come from Seat Map page)
        List<String> seats = new ArrayList<>();
        seats.add("1937284");
        seats.add("1937285");
        seats.add("1937286");

//        model.addAttribute("bookingDetails", bookingDetails);
        model.addAttribute("seats", seats);

        return "personalinfo.jsp";
    }

    // Handle form submit
    @PostMapping("/PersonInfo")
    public String submitForm(
            @ModelAttribute("user") Passenger user,
            HttpSession session,
            Model model
    ) {
        List<String> errors = new ArrayList<>();

        if (user.getFirstName() == null || user.getFirstName().isEmpty()) {
            errors.add("First Name is required");
        }
        if (user.getLastName() == null || user.getLastName().isEmpty()) {
            errors.add("Last Name is required");
        }
        if (user.getBirthDate() == null || user.getBirthDate().isEmpty()) {
            errors.add("Birth Date is required");
        }
        if (user.getNationality() == null || user.getNationality().isEmpty()) {
            errors.add("Nationality is required");
        }
        if (user.getPassportId() == null || user.getPassportId().isEmpty()) {
            errors.add("Passport ID is required");
        }
        if (user.getEmail() == null || user.getEmail().isEmpty()) {
            errors.add("Email is required");
        }
        if (user.getMobileNumber() == null || user.getMobileNumber().isEmpty()) {
            errors.add("Mobile Number is required");
        }
        if (user.getSeat() == null || user.getSeat().isEmpty()) {
            errors.add("Seat selection is required");
        }

        if (!errors.isEmpty()) {
            model.addAttribute("errors", errors);
            return "personalinfo";
        }

        // ✅ Save user in session
        session.setAttribute("user", user);

        // ✅ Create ArrayList summary
        List<String> summary = new ArrayList<>();
        summary.add("First Name: " + user.getFirstName());
        summary.add("Last Name: " + user.getLastName());
        summary.add("Middle Name: " + user.getMiddleName());
        summary.add("Birth Date: " + user.getBirthDate());
        summary.add("Nationality: " + user.getNationality());
        summary.add("Passport ID: " + user.getPassportId());
        summary.add("Email: " + user.getEmail());
        summary.add("Mobile Number: " + user.getMobileNumber());
        summary.add("Seat: " + user.getSeat());

        session.setAttribute("summary", summary);

        return "redirect:/confirmation";
    }

    @GetMapping("/confirmation")
    public String confirmation(HttpSession session, Model model) {
        List<String> summary = (List<String>) session.getAttribute("summary");
        model.addAttribute("summary", summary);
        return "confirmation";
    }
}

