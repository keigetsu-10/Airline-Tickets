<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>A4Lifers Flight Booking |Register Page</title>
</head>
<body>
<style>
body, html {
    margin: 0;
    padding: 0;
    height: 100%;
    font-family: Poppins, sans-serif;
}
        body {
            font-family: Arial, sans-serif;
            background: url('/images/seoul.jpeg') no-repeat center center/cover;
            background-color: #f4f7f6;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 1px;
        }
        .container {
            border-radius: 5px;
		    overflow: hidden;
		    box-shadow: 0 4px 20px rgba(0,0,0,0.3);
		    color: #fff;
            overflow: hidden;
           	width: 900px;
   			height: 500px;
            display: flex;
        }
        .left-panel {
            flex: 1;
            background-image: url('/images/korea.jpeg');
            background-image:opacity: 0.6;
            background-size: cover;
            background-position: center;
            position: relative;
            color: white;
            padding: 20px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .left-panel .nav {
            display: flex;
            gap: 20px;
        }
        .left-panel .nav a {
            color: white;
            text-decoration: none;
            font-weight: bold;
        }
        .right-panel {
            flex: 1;
            padding: 30px;
            background-color: #1a2b4d;
            flex-direction: column;
            color: #fff;
            justify-content: center;
            display: flex;
            flex-direction: column;
        }
        h2 {
			margin-top: 0px;
            margin-bottom: 15px;
            margin-right: 20px
            color: #fff;
        }
        .form-group {
            margin-bottom: 6px;
            position: center;
        }
        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: #bbb;
        }
        .form-group input {
            width: 95%;
            margin:2px;
            padding: 12px 10px;
            border: none;
            border-radius: 11px;
            background-color: #2c3e5e;
            color: #fff;
            font-size: 15px;
            justify-content: center;
        }
        .form-group input::placeholder {
            color: #889bbd;
        }
        .error-message {
            color: #ffcccc;
            font-size: 14px;
            margin-top: 5px;
            display: block;
        }
        .form-row {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            margin-bottom: 0px;
        }
        
        .form-group {
            display: flex;
            flex-direction: column;
        }
        .checkbox-group {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }
        .checkbox-group input[type="checkbox"] {
            margin-right: 10px;
        }
        .checkbox-group label {
            color: #bbb;
            font-size: 13px;
            cursor: pointer;
        }
        .checkbox-group a {
            color: #88aaff;
            text-decoration: none;
        }
        button {
            width: 90%;
            padding: 15px;
            background-color: #6a5acd;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            justify-content: center;
        }
        button:hover {
            background-color: #7b68ee;
        }
        .login-link {
            text-align: center;
            margin-top: 25px;
            color: #bbb;
            font-size: 14px;
        }
        .login-link a {
            color: #88aaff;
            text-decoration: none;
        }
        input[type="date"] {
          text-transform: uppercase; 
          letter-spacing: 1px;
          color: #889bbd;
        }
        
    </style>
</head>
<body>
    <div class="container">
        <div class="left-panel" style="background-image: url('/images/korea.jpeg');">
            <div class="nav">
                <a href="/Home">Home</a>
                <a href="#">Explore</a>
                <a href="/Book">Book</a>
                <a href="#">Contact Us</a>
            </div>
        </div>
        <div class="right-panel">
            <h2>Create an account</h2>
            <form:form action="/register" method="post" modelAttribute="register">
                <div class="form-row">
                    <div class="form-group">
                        <input type="text" id="firstName" name="firstname" placeholder="First name" value="${register.firstname}">
                        <c:if test="${not empty errors.firstname}"><span class="error-message">${errors.firstname}</span></c:if>
                    </div>
                    <div class="form-group">
                        <input type="text" id="lastName" name="lastname" placeholder="Last name" value="${register.lastname}">
                        <c:if test="${not empty errors.lastname}"><span class="error-message">${errors.lastname}</span></c:if>
                    </div>
                    <div class="form-group">
                        <input type="text" id="middleName" name="middlename" placeholder="Middle name" value="${register.middlename}">
                        <c:if test="${not empty errors.middlename}"><span class="error-message">${errors.middlename}</span></c:if>
                    </div>
                </div>
                
            <div class="form-row">
                <div class="form-group">
                    <input type="date" id="bday" name="bday" value="${register.bday}">
                    <c:if test="${not empty errors.bday}"><span class="error-message">${errors.bday}</span></c:if>
                </div>
                <div class="form-group">
                    <input type="text" id="phoneNumber" name="phonenum" placeholder="Phone Number" value="${register.phonenum}">
                    <c:if test="${not empty errors.phonenum}"><span class="error-message">${errors.phonenum}</span></c:if>
                </div>
            </div>
           
           <div class="form-group" style="position: center;" >
                <input type="email" id="email" name="email" placeholder="Email" value="${register.email}">
                <c:if test="${not empty errors.email}"><span class="error-message">${errors.email}</span></c:if>
            </div>
             
             <div class="form-group" style="position: center;">
                <input type="password" id="password" name="pass" placeholder="Password">
                <c:if test="${not empty errors.pass}"><span class="error-message">${errors.pass}</span></c:if>
            </div>
             
             <div class="form-group" style="position: center;">
                <input type="password" id="confirmPassword" name="confirpass" placeholder="Confirm password">
                <c:if test="${not empty errors.confirpass}"><span class="error-message">${errors.confirpass}</span></c:if>
            </div>
             
            <div class="checkbox-group">
                <input type="checkbox" id="agreeTerms" name="agreeTerms" required>
                <label for="agreeTerms">I agree to the <a href="#">Terms & Conditions</a></label>
            </div>

            <div class="checkbox-group">
                <input type="checkbox" id="keepMeInformed">
                <label for="keepMeInformed">Keep me informed about the latest promotions and travel updates.</label>
            </div>

            <button type="submit">Sign up</button>

            <div class="login-link">
                Already have an account? <a href="/login">Log in</a>
            </div>
        </form:form>
    </div>
</div>
</body>
</html>