<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>A4Lifers Flight Booking |Login</title>
<link rel="stylesheet" href="/css/design.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<title>Login Page</title>
<link rel="stylesheet" src="@{/css/design.css}">
</head>
<body>
	<div class="container">
        <div class="left-panel" style="background-image: url('/images/Pinterest.jpeg');">
            <div class="nav">
                <a href="/Home">Home</a>
                <a href="#">Explore</a>
                <a href="/Book">Book</a>
                <a href="#">Contact Us</a>
            </div>
        </div>
        <div class="right-panel">
            <h2>Log in</h2>
            <!-- Using Spring's form taglib is helpful for pre-populating values -->
            <form:form action="/register" method="post" modelAttribute="register">
            <div class="form-group" style="position: center;" >
                <input type="email" id="email" name="email" placeholder="Email" value="${register.email}">
                <c:if test="${not empty errors.email}"><span class="error-message">${errors.email}</span></c:if>
            </div>

            <div class="form-group" style="position: center;">
                <input type="password" id="password" name="pass" placeholder="Password">
                <c:if test="${not empty errors.pass}"><span class="error-message">${errors.pass}</span></c:if>
            </div>
            
            <div class="checkbox-group">
                <input type="checkbox" id="agreeTerms" name="agreeTerms" required>
                <label for="agreeTerms">I agree to the <a href="#">Terms & Conditions</a></label>
            </div>

            <div class="checkbox-group">
                <input type="checkbox" >
                <label>Remember password</label>
            </div>

            <button type="submit">Log in</button>

            <div class="login-link">
                Don’t have an account?<a href="/register">Create an account</a>
            </div>
        </form:form>
    </div>
</div>
</body>
</html>