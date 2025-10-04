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
                <a href="/Home#explore">Explore</a>
                <a href="/Flight/Options">Book</a>
                <a href="#">Contact Us</a>
            </div>
        </div>
        <div class="right-panel">
            <h2>Log in</h2>
            <form:form action="/register" method="post" modelAttribute="register">
            <div class="form-row one-col">
			  <div class="form-group">
			        <input type="email" placeholder="Email">
			   </div>
			</div>
                <div class="form-row">
                    <div class="form-group full-width">
                        <input type="password" id="password" name="password" placeholder="Password">
                        <i class="input-icon fas fa-eye" onclick="togglePasswordVisibility('password')"></i>
                    </div>
            
            <div class="checkbox-group">
                    <input type="checkbox" id="agreeTerms">
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
        </form:form>
    </div>
</div>
</body>
</html>