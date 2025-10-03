<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<footer class="site-footer">
  <div class="footer-container">

    <!-- Brand & About -->
    <div class="footer-section footer-about">
      <h2 class="footer-logo">✈︎ A4Lifers Airline Ticket</h2>
      <p>Travel smarter, cheaper, and with style. Let's take you places ✈︎જ⁀➴</p>
      <div class="trust-badges">
        <span class="badge"><i class="fas fa-shield-alt"></i> Secure Booking</span>
        <span class="badge"><i class="fas fa-check-circle"></i> Verified</span>
        <span class="badge"><i class="fas fa-clock"></i> 24/7 Support</span>
      </div>
    </div>

    <!-- Quick Links -->
    <div class="footer-section footer-links">
      <h3>Quick Links</h3>
      <ul>
        <li><a href="<c:url value='/Home'/>">Home</a></li>
        <li><a href="<c:url value='/Explore'/>">Explore Destinations</a></li>
        <li><a href="<c:url value='/Book'/>">Book Flight</a></li>
        <li><a href="<c:url value='/Manage'/>">Manage Booking</a></li>
      </ul>
    </div>

    <!-- Company Info -->
    <div class="footer-section footer-links">
      <h3>Company</h3>
      <ul>
        <li><a href="<c:url value='/About'/>">About Us</a></li>
        <li><a href="<c:url value='/Contact'/>">Contact</a></li>
      </ul>
    </div>

    <!-- Support & Resources -->
    <div class="footer-section footer-links">
      <h3>Support</h3>
      <ul>
        <li><a href="<c:url value='/Help'/>">Help Center</a></li>
        <li><a href="<c:url value='/FAQ'/>">FAQs</a></li>
        <li><a href="<c:url value='/TravelGuide'/>">Travel Guide</a></li>
        <li><a href="<c:url value='/Baggage'/>">Baggage Policy</a></li>
        <li><a href="<c:url value='/Cancellation'/>">Cancellation Policy</a></li>
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

  <!-- Bottom Bar -->
  <div class="footer-bottom">
    <div class="footer-bottom-content">
      <p>&copy; 2025 A4Lifers Airline. All rights reserved.</p>
      
      <div class="footer-legal-links">
        <a href="<c:url value='/Privacy'/>">Privacy Policy</a>
        <a href="<c:url value='/Terms'/>">Terms of Service</a>
        <a href="<c:url value='/Cookies'/>">Cookie Policy</a>
      </div>
      
      
    </div>
  </div>
</footer>