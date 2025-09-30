package com.Airline_Tickets.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping("/login")
	public String index() {
		return "index.jsp";
		
	}
	 @GetMapping("/register")
		public String resgister() {
			return "register.jsp";
			
		}

}
