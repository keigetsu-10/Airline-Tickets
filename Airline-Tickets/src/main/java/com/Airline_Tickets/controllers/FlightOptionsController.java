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
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.annotation.PostConstruct;
<<<<<<< HEAD
=======
import jakarta.servlet.http.HttpSession;

>>>>>>> branch 'main' of https://github.com/keigetsu-10/Airline-Tickets.git
import com.Airline_Tickets.models.Flight;
import com.Airline_Tickets.models.register;

@Controller
public class FlightOptionsController {
<<<<<<< HEAD

    private List<Flight> flights;
=======
	
	private List<Flight> flights;
	
	@PostConstruct
	public void init() throws IOException {
	    ObjectMapper mapper = new ObjectMapper();
>>>>>>> branch 'main' of https://github.com/keigetsu-10/Airline-Tickets.git

    @PostConstruct
    public void init() throws IOException {
        ObjectMapper mapper = new ObjectMapper();
        InputStream is = getClass().getResourceAsStream("/static/json/destinations.json");

        if (is == null) {
            throw new IOException("❌ destinations.json not found in /static/json/");
        }

        Map<String, List<Flight>> data = mapper.readValue(is, new TypeReference<Map<String, List<Flight>>>() {});
        flights = data.get("destinations");

        if (flights == null) {
            is = getClass().getResourceAsStream("/static/json/destination.json");
            flights = mapper.readValue(is, new TypeReference<List<Flight>>() {});
        }

        System.out.println("✅ Loaded " + flights.size() + " total flights from JSON");
    }

    @GetMapping("/Flight/Options")
    public String flightOptions(
            @RequestParam(value = "from", required = false) String from,
            @RequestParam(value = "to", required = false) String to,
            @RequestParam(value = "departureDate", required = false) String departureDate,
            @RequestParam(value = "returnDate", required = false) String returnDate,
            @RequestParam(value = "tripType", required = false) String tripType,
            Model model) {

        System.out.println("\n🔍 Search Request Received:");
        System.out.println("   From: " + from);
        System.out.println("   To: " + to);
        System.out.println("   Departure: " + departureDate);
        System.out.println("   Return: " + returnDate);
        System.out.println("   Trip Type: " + tripType);

        // ✅ Filter by destination
        List<Flight> filtered = flights.stream()
                .filter(f -> to == null || to.isEmpty()
                        || f.getName().toLowerCase().contains(to.toLowerCase())
                        || f.getCountry().toLowerCase().contains(to.toLowerCase()))
                .collect(Collectors.toList());

        // ✅ Inject user inputs into displayed flight info
        for (Flight f : filtered) {
            if (departureDate != null && !departureDate.isEmpty()) {
                f.setDepartureDate(departureDate);
            }
            if ("One Way".equalsIgnoreCase(tripType)) {
                // One-way flight, no return date
                f.setReturnDate(null);
                f.setReturnTime(null);
            } else if (returnDate != null && !returnDate.isEmpty()) {
                // Round-trip flight, show user’s chosen return date
                f.setReturnDate(returnDate);
            }

            if (tripType != null && !tripType.isEmpty()) {
                f.setTripType(tripType);
            }
        }

        System.out.println("✅ Filtered flights: " + filtered.size());
        filtered.forEach(f -> System.out.println(
                "   ✈ " + f.getName() + " - " + f.getCountry()
                        + " | " + f.getDepartureDate() + " → " + f.getReturnDate()
                        + " (" + f.getTripType() + ")"
        ));

        model.addAttribute("from", from);
        model.addAttribute("to", to);
        model.addAttribute("departureDate", departureDate);
        model.addAttribute("returnDate", returnDate);
        model.addAttribute("tripType", tripType);
        model.addAttribute("flights", filtered);

        return "FlightOptions.jsp";
    }
}
