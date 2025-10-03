package com.Airline_Tickets.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.Airline_Tickets.models.Payment;

@Controller
public class PaymentController {

    @GetMapping("/Payment")
    public String showPaymentForm(Model model) {
        model.addAttribute("payment", new Payment());
        return "Payment.jsp";  // JSP page
    }
    @PostMapping("/PaymentConfirmation")
    public String showConfirmationInfo(@ModelAttribute("payment") Payment payment, Model model) {
        
        model.addAttribute("payment", payment);
        return "PaymentConfirm.jsp"; 
    }

  
}
