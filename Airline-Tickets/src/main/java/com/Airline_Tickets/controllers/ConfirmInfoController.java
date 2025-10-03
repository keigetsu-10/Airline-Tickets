package com.Airline_Tickets.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.Airline_Tickets.models.Confirm;


@Controller
public class ConfirmInfoController {
	
	@GetMapping("/ConfirmInfo")
	public String info () {
		return "ConfirmInfo.jsp";
	}
	@PostMapping("/Payment")
    public String showConfirmationInfo(@ModelAttribute("confirm") Confirm confirm, Model model) {
        
        model.addAttribute("confirm", confirm);
        return "Payment.jsp"; 
    }
}
