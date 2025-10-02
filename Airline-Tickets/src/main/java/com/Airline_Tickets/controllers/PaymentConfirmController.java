package com.Airline_Tickets.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


import com.Airline_Tickets.models.Payment;

@Controller
public class PaymentConfirmController {
	
	@GetMapping("/PaymentConfirmation")
    public String showConfirm(Model model) {
        model.addAttribute("payment", new Payment());
        return "PaymentConfirm.jsp";  // JSP page
    }


}
