package com.Airline_Tickets.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.servlet.http.HttpSession;

@Controller
public class TransactionSuccessController {

	@GetMapping("/TransactionSuccesful")
	public String transac () {
		return "Transaction.jsp";
	}
	
	@PostMapping("/Home")
	public String goHome(HttpSession session) {
	    // Remove all session attributes for sensitive data
	    session.removeAttribute("personalInfo");
	    session.removeAttribute("payment");
	    session.removeAttribute("bookingDetails");
	    session.removeAttribute("user");
	    session.removeAttribute("summary-value");

	    return "Home.jsp";
	}
	}
	

