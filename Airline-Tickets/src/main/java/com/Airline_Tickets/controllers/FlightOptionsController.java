package com.Airline_Tickets.controllers;

import org.springframework.ui.Model;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.annotation.PostConstruct;

import com.Airline_Tickets.models.Flight;

@Controller
public class FlightOptionsController {
	
	private List<Flight> flights;

	@PostConstruct
	public void init() throws IOException {
	    ObjectMapper mapper = new ObjectMapper();

	    InputStream is = getClass().getResourceAsStream("/static/json/destinations.json");
	    if (is == null) {
	        throw new IOException("❌ destinations.json not found at /static/json/");
	    }

	    // ✅ Read the root object as a Map
	    Map<String, List<Flight>> data = mapper.readValue(is, new TypeReference<Map<String, List<Flight>>>() {});
	    flights = data.get("destinations"); // 👈 Extract the list inside the "destinations" key

	    if (flights == null) {
	        throw new IOException("❌ 'destinations' key not found in destinations.json");
	    }

	    System.out.println("✅ Loaded " + flights.size() + " flight destinations");
	}


    
	@GetMapping("/Flight/Options")
	public String flightOptions(
	    @RequestParam(value = "from", required = false) String from,
	    @RequestParam(value = "to", required = false) String to,
	    @RequestParam(value = "departureDate", required = false) String departureDate,
	    @RequestParam(value = "returnDate", required = false) String returnDate,
	    Model mv) {

	    List<Flight> filtered = flights;

	    if (to != null && !to.isEmpty()) {
	        filtered = filtered.stream()
	            .filter(f -> f.getCountry().toLowerCase().contains(to.toLowerCase())
	                      || f.getName().toLowerCase().contains(to.toLowerCase()))
	            .collect(Collectors.toList());
	    }

	    if (departureDate != null && !departureDate.isEmpty()) {
	        filtered = filtered.stream()
	            .filter(f -> f.getDepartureDate().equalsIgnoreCase(departureDate))
	            .collect(Collectors.toList());
	    }

	    if (returnDate != null && !returnDate.isEmpty()) {
	        filtered = filtered.stream()
	            .filter(f -> f.getReturnDate().equalsIgnoreCase(returnDate))
	            .collect(Collectors.toList());
	    }

	    mv.addAttribute("flights", filtered);
	    mv.addAttribute("from", from);
	    mv.addAttribute("to", to);
	    mv.addAttribute("departureDate", departureDate);
	    mv.addAttribute("returnDate", returnDate);
	    
	 // Add for browser console
	    mv.addAttribute("log_from", from);
	    mv.addAttribute("log_to", to);
	    mv.addAttribute("log_departure", departureDate);
	    mv.addAttribute("log_return", returnDate);
	    mv.addAttribute("log_count", filtered.size());


	    return "FlightOptions.jsp";
	}

}
