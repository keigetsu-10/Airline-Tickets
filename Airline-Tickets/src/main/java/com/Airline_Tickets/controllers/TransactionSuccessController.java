package com.Airline_Tickets.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TransactionSuccessController {

	@GetMapping("/TransactionSuccesful")
	public String transac () {
		return "Transaction.jsp";
	}
}
