package com.Airline_Tickets.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PersonInfoController {
	
	@GetMapping("/PersonalInfo")
	public String info () {
		return "personalinfo.jsp";
	}

}
