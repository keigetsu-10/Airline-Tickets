package com.Airline_Tickets.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.Airline_Tickets.models.Payment;
import com.Airline_Tickets.models.Passenger;
import com.Airline_Tickets.models.BookingDetails;

import jakarta.servlet.http.HttpSession;

@Controller
public class PaymentController {

    @GetMapping("/Payment")
    public String showPaymentForm(Model model, HttpSession session) {
        // Fetch personal info and booking details from session (they must be set in previous steps!)
        Passenger user = (Passenger) session.getAttribute("user");
        BookingDetails bookingDetails = (BookingDetails) session.getAttribute("bookingDetails");

        // Pass them to the JSP for summary
        model.addAttribute("user", user);
        model.addAttribute("bookingDetails", bookingDetails);

        // Pass fresh payment model
        model.addAttribute("payment", new Payment());
        return "Payment.jsp";
    }

    @PostMapping("/PaymentConfirmation")
    public String showConfirmationInfo(@ModelAttribute("payment") Payment payment, Model model, HttpSession session) {
        // Fetch again in case you need to display summary on confirmation page
        Passenger user = (Passenger) session.getAttribute("user");
        BookingDetails bookingDetails = (BookingDetails) session.getAttribute("bookingDetails");
        
        
        model.addAttribute("user", user);
        model.addAttribute("bookingDetails", bookingDetails);
        model.addAttribute("payment", payment);
        session.setAttribute("payment", payment);
        return "PaymentConfirm.jsp";
    }
}
