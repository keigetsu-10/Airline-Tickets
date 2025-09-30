package com.Airline_Tickets.controllers;

import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;


import kong.unirest.HttpResponse;
import kong.unirest.Unirest;

@Controller
public class HomePage {

	private static final String API_KEY = "8410d46b24mshaec891a7957f124p1b726ejsnc73329ed89fc";
	
	@GetMapping("/Home")
	public String home() {
	        return "Home.jsp";
	}
}
