package com.Airline_Tickets.controllers;


import org.springframework.boot.autoconfigure.security.SecurityProperties.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
public class PersonInfoController {

    // Show Personal Info form
    @GetMapping("/PersonalInformation")
    public String showForm() {
        
        return "personalinfo.jsp";
    }
    
    @PostMapping("/confirmationInfo")
    public String showConfirmationInfo(@ModelAttribute("user") User user, Model model) {
        // add user data to model for confirmation page
        model.addAttribute("user", user);
        return "confirmationinfo.jsp"; // maps to confirmationinfo.jsp
    }

    
}

