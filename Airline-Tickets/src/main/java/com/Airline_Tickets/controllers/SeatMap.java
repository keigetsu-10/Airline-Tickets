package com.Airline_Tickets.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SeatMap {
	
	@GetMapping("/SeatMap")
	public  String seat() {
		return "SeatMap.jsp";
	}

}
