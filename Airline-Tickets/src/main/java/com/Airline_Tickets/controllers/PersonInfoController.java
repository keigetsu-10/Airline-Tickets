package com.Airline_Tickets.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.Airline_Tickets.models.Passenger;

import jakarta.servlet.http.HttpSession;
import java.util.List;

@Controller
public class PersonInfoController {

    @GetMapping("/PersonalInformation")
    public String showForm(Model model, HttpSession session) {
        // If session already has user, pre-fill form for editing
        Passenger user = (Passenger) session.getAttribute("user");
        if (user == null) {
            user = new Passenger();
        }
        model.addAttribute("user", user);
        
        // Get seats list from session for dropdown
        List<String> seats = (List<String>) session.getAttribute("seats");
        if (seats != null) {
            model.addAttribute("seats", seats);
        }
        
        return "PersonalInfo.jsp";
    }

    @PostMapping("/confirmationInfo")
    public String showConfirmationInfo(@ModelAttribute("user") Passenger user, Model model, HttpSession session) {
        // Save/update latest user info in session for summary and payment
        session.setAttribute("user", user);
        model.addAttribute("user", user);
        return "ConfirmInfo.jsp";
    }

    @PostMapping("/PersonalInformation")
    public String editPersonalInfo(@ModelAttribute("user") Passenger user, Model model, HttpSession session) {
        // For edit, update session and return to personal info form with fields pre-filled
        session.setAttribute("user", user);
        model.addAttribute("user", user);
        
        // Re-add seats list for dropdown
        List<String> seats = (List<String>) session.getAttribute("seats");
        if (seats != null) {
            model.addAttribute("seats", seats);
        }
        
        return "PersonalInfo.jsp";
    }
}