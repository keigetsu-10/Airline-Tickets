<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<footer class="site-footer">
<div class="footer-container">

    <!-- Brand & About -->
    <div class="footer-section footer-about">
        <h2 class="footer-logo">✈︎ A4Lifers Flight Booking</h2>
        <p>Travel smarter, cheaper, and with style. Let's take you places ✈︎જ⁀➴</p>
        <div class="trust-badges">
            <span class="badge"><i class="fas fa-shield-alt"></i> Secure Booking</span>
            <span class="badge"><i class="fas fa-check-circle"></i> Verified</span>
            <span class="badge"><i class="fas fa-clock"></i> 24/7 Support</span>
        </div>
    </div>

    <!-- Quick Links (KEEP DYNAMIC LINKS) -->
    <div class="footer-section footer-links">
        <h3>Quick Links</h3>
        <ul>
            <li><a href="<c:url value='/Home'/>">Home</a></li>
            <li><a href="<c:url value='/Explore'/>">Explore Destinations</a></li>
            <li><a href="<c:url value='/Book'/>">Book Flight</a></li>
            <li><a href="<c:url value='/Manage'/>">Manage Booking</a></li>
        </ul>
    </div>

    <!-- Company Info (PLAIN TEXT, POINTER) -->
    <div class="footer-section footer-links">
        <h3>Company</h3>
        <ul>
            <li><span style="cursor:pointer;">About Us</span></li>
            <li><span style="cursor:pointer;">Contact</span></li>
        </ul>
    </div>

    <!-- Support & Resources (PLAIN TEXT, POINTER) -->
    <div class="footer-section footer-links">
        <h3>Support</h3>
        <ul>
            <li><span style="cursor:pointer;">Help Center</span></li>
            <li><span style="cursor:pointer;">FAQs</span></li>
            <li><span style="cursor:pointer;">Travel Guide</span></li>
            <li><span style="cursor:pointer;">Baggage Policy</span></li>
            <li><span style="cursor:pointer;">Cancellation Policy</span></li>
        </ul>
    </div>

    <!-- Contact & Newsletter -->
    <div class="footer-section footer-contact">
        <h3>Get in Touch</h3>
        <p><i class="fas fa-envelope"></i> support@a4lifersbooking.com</p>
        <p><i class="fas fa-phone"></i> +63 912 345 6789</p>
        <p><i class="fas fa-map-marker-alt"></i> Manila, Philippines</p>

        <h3 style="margin-top: 25px;">Stay Updated</h3>
        <form class="newsletter-form">
            <input type="email" placeholder="Enter your email" required>
            <button type="submit">Send</button>
        </form>
    </div>
</div>

<!-- Bottom Bar (PLAIN TEXT, POINTER) -->
<div class="footer-bottom">
    <div class="footer-bottom-content">
        <p>&copy; 2025 A4Lifers Flight Booking. All rights reserved.</p>

        <div class="footer-legal-links">
            <span style="cursor:pointer;">Privacy Policy</span>
            <span style="cursor:pointer;">Terms of Service</span>
            <span style="cursor:pointer;">Cookie Policy</span>
        </div>
    </div>
</div>
</footer>

