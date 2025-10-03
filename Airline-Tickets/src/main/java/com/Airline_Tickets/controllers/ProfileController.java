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
public class ProfileController {

	@GetMapping("/Manage/Profile")
	public String profile() {
	        return "Profile.jsp";
	}
}