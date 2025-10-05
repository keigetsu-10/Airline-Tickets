package com.Airline_Tickets.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import jakarta.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.List;

@Controller
public class SeatMap {

    @GetMapping("/SeatMap")
    public String seat(HttpSession session, Model model) {
        // Retrieve previously selected seats if any
        String selectedSeats = (String) session.getAttribute("selectedSeats");
        if (selectedSeats != null) {
            model.addAttribute("selectedSeats", selectedSeats);
        }
        return "SeatMap.jsp";
    }

    @PostMapping("/SeatMap")
    public String saveSeatSelection(
            @RequestParam("seatsSelected") String seatsSelected,
            @RequestParam("passenger") String passengerCount,
            HttpSession session) {
        
        // Store selected seats in session
        session.setAttribute("selectedSeats", seatsSelected);
        session.setAttribute("passengerCount", passengerCount);
        
        // Create list of seats for dropdown in PersonalInformation
        List<String> seatsList = Arrays.asList(seatsSelected.split(",\\s*"));
        session.setAttribute("seats", seatsList);
        
        return "redirect:/PersonalInformation";
    }
}