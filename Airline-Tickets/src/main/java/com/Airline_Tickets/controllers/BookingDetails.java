package com.Airline_Tickets.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class BookingDetails {
	
	
	@GetMapping("/BookingDetails")
	public String home() {
	        return "BookingDetails.jsp";
	}
}
