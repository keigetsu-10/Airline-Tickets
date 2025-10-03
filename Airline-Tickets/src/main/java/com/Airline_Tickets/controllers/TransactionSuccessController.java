package com.Airline_Tickets.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class TransactionSuccessController {

	@GetMapping("/TransactionSuccesful")
	public String transac () {
		return "Transaction.jsp";
	}
	
	@PostMapping("/Home")
		public String goHome() {
			return "Home.jsp";
		}
	}
	

