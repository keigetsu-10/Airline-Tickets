package com.Airline_Tickets.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import jakarta.servlet.http.HttpSession;

import com.Airline_Tickets.models.Payment;
import com.Airline_Tickets.models.PersonalInfoSummary;
import com.Airline_Tickets.models.BookingDetails;
import com.Airline_Tickets.models.Passenger;


@Controller
public class PaymentConfirmController {

    @GetMapping("/PaymentConfirmation")
    public String showConfirm(Model model, HttpSession session) {
        
        Payment payment = (Payment) session.getAttribute("payment");
        if (payment == null) payment = new Payment();
        model.addAttribute("payment", payment);
        return "PaymentConfirm.jsp";
    }

    @PostMapping("/TransactionSuccesful")
    public String showConfirmationInfo(@ModelAttribute("payment") Payment payment, Model model, HttpSession session) {
      
        session.setAttribute("payment", payment);

        Passenger user = (Passenger) session.getAttribute("user");
        BookingDetails bookingDetails = (BookingDetails) session.getAttribute("bookingDetails");
        // 1. Make the summary object:
        PersonalInfoSummary personalInfo = new PersonalInfoSummary(user);
        // 2. Save to session and model:
        session.setAttribute("personalInfo", personalInfo);
        model.addAttribute("personalInfo", personalInfo);

        model.addAttribute("payment", payment);
        model.addAttribute("user", user);
        model.addAttribute("bookingDetails", bookingDetails);

        return "Transaction.jsp";
    }
}