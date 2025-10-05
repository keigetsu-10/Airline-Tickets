<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Alt+F4Life Flight Booking | Login</title>
<link rel="stylesheet" href="/css/design.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<div class="container">
        <div class="left-panel" style="background-image: url('/images/Pinterest.jpeg');">
            <div class="nav">
                <a href="/Home">Home</a>
                <a href="/Home#explore">Explore</a>
                <a href="/Flight/Options">Book</a>
                <a href="#">Contact Us</a>
            </div>
        </div>
        <div class="right-panel">
            <h2>Log in</h2>
            <form action="/login" method="post">
            <div class="form-row one-col">
			  <div class="form-group">
			        <input type="email"  name="email" placeholder="Email">
			   </div>
			</div>
                <div class="form-row">
                    <div class="form-group full-width">
                        <input type="password" id="password" name="password" placeholder="Password">
                        <i class="input-icon fas fa-eye" onclick="togglePasswordVisibility('password')"></i>
                    </div>
            
            <div class="checkbox-group">
                    <input type="checkbox" name="agreeTerms" id="agreeTerms" />
                    <label for="agreeTerms">I agree to the <a href="terms.jsp">Terms & Conditions</a></label>
                </div>
                <div class="checkbox-group">
                    <input type="checkbox" id="keepMeInformed">
                    <label for="keepMeInformed">Remember password</label>
                </div>

            <button type="submit">Log in</button>

            <div class="login-link">
                Don’t have an account?<a href="/register">Create an account</a>
            </div>
        </form>
        <p class="success">${error}</p>
    </div>
</div>
</body>
</html>