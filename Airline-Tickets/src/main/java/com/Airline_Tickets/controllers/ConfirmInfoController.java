package com.Airline_Tickets.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ConfirmInfoController {
	
	@GetMapping("/ConfirmInfo")
	public String info () {
		return "confirmationinfo.jsp";
	}
}
