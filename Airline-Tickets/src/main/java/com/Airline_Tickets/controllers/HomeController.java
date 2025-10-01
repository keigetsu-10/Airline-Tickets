package com.Airline_Tickets.controllers;


import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Airline_Tickets.models.register;

@Controller
public class HomeController {
	ArrayList <register> log = new ArrayList <register>();
	
	@GetMapping("/login")
	public String index() {
		return "index.jsp";
		
	}
	  @GetMapping("/register")
	    public String register( Model model) {
	        return "register.jsp";
	    }
	}



