<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<<<<<<< HEAD
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/design.css">
=======
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<<<<<<< HEAD
<title>Insert title here</title>

=======
<title>Login Page</title>
<link rel="stylesheet" src="@{/css/design.css}">
>>>>>>> branch 'main' of https://github.com/keigetsu-10/Airline-Tickets.git
>>>>>>> branch 'main' of https://github.com/keigetsu-10/Airline-Tickets.git
</head>
<body>
	<div class="background">
        <div class="login-container">
        
        <div class="left-side">
                <img src="/images/Japan.jpeg" alt="Japan" class="img" />
            </div>
            <div class="right-side">
                <nav>
                    <a href="#">Home</a>
                    <a href="#">Explore</a>
                    <a href="#">Book</a>
                    <a href="#">Contact Us</a>
                </nav>
                <form class="login-form" method="post" th:action="@{/login}">
                    <h2>Login</h2>
                    <input type="email" name="email" placeholder="Email" required>
                    <input type="password" name="password" placeholder="Password" required>
                    <div class="options">
						  <label class="option-item">
						    <input type="checkbox" required>
						    <span>I agree to the <a href="#">Terms & Conditions</a></span>
						  </label>
						  <label class="option-item">
						    <input type="checkbox">
						    <span>Remember password</span>
						  </label>
					</div>
                    <button type="submit">Log in</button>
                    <p>Don’t have an account? <a href="#">Create an account</a></p>
                </form>
                <p></p>>
            </div>
        </div>
    </div>
</body>
</html>