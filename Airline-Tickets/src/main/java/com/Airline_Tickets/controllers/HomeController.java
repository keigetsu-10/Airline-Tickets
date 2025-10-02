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
	  
//	  @GetMapping("/")
//	    public String showRegistrationForm(Model model) {
//	        model.addAttribute("register", new register()); 
//	        return "register.jsp";
//	    }
//
//	    @PostMapping("/register")
//	    public String processRegistration(@Valid @ModelAttribute("register") register registration,
//	                                      BindingResult bindingResult,
//	                                      RedirectAttributes redirectAttributes,
//	                                      Model model) {
//
//	        
//	        if (!registration.getPass().equals(registration.getConfirpass())) {
//	            bindingResult.rejectValue("confirpass", "error.register", "Passwords do not match");
//	        }
//
//	        if (bindingResult.hasErrors()) {
//	            // If there are validation errors, return to the form with error messages
//	            return "register.jsp";
//	        }
//
//	        
//	        registeredUsers.add(registration); // Store the registered user (for demonstration)
//	        redirectAttributes.addFlashAttribute("message", "Registration successful!");
//	        System.out.println("New user registered: " + registration.getFirstname() + " " + registration.getLastname());
//	        
//	        return "redirect:/success";
//	    }
//
//	    @GetMapping("/success")
//	    public String registrationSuccess(Model model) {
//	        model.addAttribute("message", model.asMap().get("message"));
//	        return "register.jsp";
//	    }
	}



