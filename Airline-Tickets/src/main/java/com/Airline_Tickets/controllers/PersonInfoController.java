package com.Airline_Tickets.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.Airline_Tickets.models.Passenger;


@Controller
public class PersonInfoController {

    
    @GetMapping("/PersonalInformation")
    public String showForm() {
        
        return "PersonalInfo.jsp";
    }
    
    @PostMapping("/confirmationInfo")
    public String showConfirmationInfo(@ModelAttribute("user") Passenger user, Model model) {
        
        model.addAttribute("user", user);
        return "ConfirmInfo.jsp"; 
    }
    @PostMapping("/SeatMap")
    public String showSeatMap() {
        return "SeatMap.jsp"; 
    }

    
}

