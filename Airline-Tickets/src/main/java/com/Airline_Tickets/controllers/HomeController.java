package com.Airline_Tickets.controllers;

import java.util.ArrayList;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import jakarta.servlet.http.HttpSession;
import com.Airline_Tickets.models.register;

@Controller
public class HomeController {

    private ArrayList<register> log = new ArrayList<>();

    // HOME PAGE (before & after login)
    @GetMapping({"/", "/Home"})
    public String showHome(HttpSession session, Model model) {
        register currentUser = (register) session.getAttribute("currentUser");

        // If logged in, send user info to Home.jsp
        if (currentUser != null) {
            model.addAttribute("user", currentUser);
        }

        // Always go to Home.jsp, not redirect to /Manage/Profile
        return "Home.jsp";
    }

    // LOGIN PAGE
    @GetMapping("/login")
    public String loginPage(Model mv, @RequestParam(required = false) String error) {
        if ("blankFields".equals(error)) {
            mv.addAttribute("errorMessage", "Please fill out all fields.");
        } else if ("agreeTerms".equals(error)) {
            mv.addAttribute("errorMessage", "You must agree to the Terms & Conditions.");
        } else if ("invalid".equals(error)) {
            mv.addAttribute("errorMessage", "Invalid email or password.");
        }
        return "index.jsp";
    }

    @PostMapping("/login")
    public String processLogin(
            @RequestParam("email") String email,
            @RequestParam("password") String password,
            @RequestParam(value = "agreeTerms", required = false) String agreeTerms,
            HttpSession session) {

        if (email.isEmpty() || password.isEmpty()) {
            return "redirect:/login?error=blankFields";
        }

        if (agreeTerms == null) {
            return "redirect:/login?error=agreeTerms";
        }

        for (register user : log) {
            if (user.getEmail().equalsIgnoreCase(email) && user.getPassword().equals(password)) {
                session.setAttribute("currentUser", user);
                return "redirect:/Home"; // ✅ Now goes directly to Home page
            }
        }

        return "redirect:/login?error=invalid";
    }

    // REGISTER PAGE
    @GetMapping("/register")
    public String registerPage(Model mv, @RequestParam(required = false) String error) {
        if ("blankFields".equals(error)) {
            mv.addAttribute("errorMessage", "Please fill out all fields.");
        } else if ("emailTaken".equals(error)) {
            mv.addAttribute("errorMessage", "Email is already registered.");
        } else if ("shortPassword".equals(error)) {
            mv.addAttribute("errorMessage", "Password must be at least 8 characters.");
        } else if ("passwordMismatch".equals(error)) {
            mv.addAttribute("errorMessage", "Passwords do not match.");
        } else if ("agreeTerms".equals(error)) {
            mv.addAttribute("errorMessage", "You must agree to the Terms & Conditions.");
        }

        return "register.jsp";
    }

    @PostMapping("/register")
    public String submitRegister(
            @RequestParam("firstName") String firstName,
            @RequestParam("lastName") String lastName,
            @RequestParam("middleName") String middleName,
            @RequestParam("birthDate") String birthDate,
            @RequestParam("phoneNumber") String phoneNumber,
            @RequestParam("email") String email,
            @RequestParam("password") String password,
            @RequestParam("confirmPassword") String confirmPassword,
            @RequestParam(value = "agreeTerms", required = false) String agreeTerms,
            HttpSession session) {

        if (firstName.isEmpty() || lastName.isEmpty() || middleName.isEmpty() ||
                birthDate.isEmpty() || phoneNumber.isEmpty() || email.isEmpty() ||
                password.isEmpty() || confirmPassword.isEmpty()) {
            return "redirect:/register?error=blankFields";
        }

        if (password.length() < 8) {
            return "redirect:/register?error=shortPassword";
        }

        if (!password.equals(confirmPassword)) {
            return "redirect:/register?error=passwordMismatch";
        }

        if (agreeTerms == null) {
            return "redirect:/register?error=agreeTerms";
        }

        for (register user : log) {
            if (user.getEmail().equalsIgnoreCase(email)) {
                return "redirect:/register?error=emailTaken";
            }
        }

        register newUser = new register(firstName, lastName, middleName, birthDate, phoneNumber, email, password);
        log.add(newUser);
        session.setAttribute("currentUser", newUser);

        return "redirect:/login";
    }

    @ModelAttribute("user")
    public register addUserToModel(HttpSession session) {
        return (register) session.getAttribute("currentUser");
    }

    // PROFILE PAGE
    @GetMapping("/Manage/Profile")
    public String showProfile(HttpSession session, Model model) {
        register currentUser = (register) session.getAttribute("currentUser");
        if (currentUser == null) {
            return "redirect:/login";
        }

        model.addAttribute("user", currentUser);
        return "Profile.jsp";
    }

    // FAVORITES PAGE
    @GetMapping("/Home#explore")
    public String favoritesPage(HttpSession session) {
        if (session.getAttribute("currentUser") == null) {
            return "redirect:/login";
        }
        return "Home.jsp";
    }

    // LOGOUT
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/Home";
    }
}
