<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Alt+F4Life Flight Booking | Register</title>
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
            backdrop-filter: blur(8px);
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
            font-weight: 400px;
        }
        .right-panel {
            flex: 1;
            padding: 60px;
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
	    margin-right: 20px;
	    color: #fff; /* idagdag yung semicolon */
		}
        /* .form-group {
            margin-bottom: 6px;
            position: center;
        }
        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: #bbb;
        } */
        /* .form-group input {
            width: 95%;
            margin:2px;
            padding: 12px 10px;
            border: none;
            border-radius: 11px;
            background-color: #2c3e5e;
            color: #fff;
            font-size: 15px;
            justify-content: center;
        } */
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
	    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); 
	    gap: 10px;
	    margin-bottom: 8px;
		}
	
		.form-group input {
	    width: 100%;        
	    padding: 15px 12px;
	    border: none;
	    border-radius: 4px;
	    background-color: #2c3e5e;
	    color: #fff;
	    font-size: 11px;
	    box-sizing: border-box;
		}
		
		.form-row.three-cols {
		    grid-template-columns: repeat(3, 1fr);
		}
		
		.form-row.two-cols {
		    grid-template-columns: repeat(2, 1fr);
		}
		
		.form-row.one-col {
		    grid-template-columns: 1fr;
		}
        .form-group {
            display: flex;
            flex-direction: column;
        }
        .checkbox-group {
            display: flex;
            align-items: center;
            margin-bottom: 5px;
        }
        .checkbox-group input[type="checkbox"] {
            margin-right: 10px;
        }
        .checkbox-group label {
            color: #bbb;
            font-size: 12px;
            cursor: pointer;
        }
        .checkbox-group a {
            color: #88aaff;
            text-decoration: none;
        }
        button {
        margin-bottom: 10px;
            width: 100%;
            padding: 12px;
            background-color: #5170ff;
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
            margin-top: 35px;
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
                <a href="/Home#explore">Explore</a>
                <a href="/Flight/Options">Book</a>
                <a href="#">Contact Us</a>
            </div>
        </div>
        <div class="right-panel">
            <h2>Create an account</h2>
            <form action="/register" method="POST">
                <div class="form-row three-cols">
	    <div class="form-group">
	         <input type="text" name="firstName" value="${log.firstName}" placeholder="First Name">
	    </div>
	    <div class="form-group">
	        <input type="text" name="lastName" value="${log.lastName}" placeholder=" Last Name">
	    </div>
	    <div class="form-group">
	        <input type="text" name="middleName" value="${log.middleName}" placeholder=" Middle Name">
	    </div>
	</div>
	
	<div class="form-row two-cols">
	    <div class="form-group">
	         <input type="date" name="birthDate" value="${log.bday}" placeholder=" Birthdate">
	    </div>
	    <div class="form-group">
	        <input type="tel"  name="phoneNumber" value="${log.phonenum}" placeholder="Phone Number">
	    </div>
	</div>
	
	<div class="form-row one-col">
	    <div class="form-group">
	        <input type="email"  name="email" value="${log.email}" placeholder="Email">
	    </div>
	</div>
                <div class="form-row">
                    <div class="form-group full-width">
                        <input type="password" name="password" placeholder="Password" autocomplete="new-password">
                        <i class="input-icon fas fa-eye" onclick="togglePasswordVisibility('password')"></i>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group full-width">
                        <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm password">
                        <i class="input-icon fas fa-eye" onclick="togglePasswordVisibility('confirmPassword')"></i>
                    </div>
                </div>

                <button type="submit">Sign up</button>

                <div class="checkbox-group">
				    <input type="checkbox" id="agreeTerms" name="agreeTerms" value="yes">
				    <label for="agreeTerms">
				        I agree to the <a href="terms.jsp">Terms & Conditions</a>
				    </label>
				</div>
				
				<div class="checkbox-group">
				    <input type="checkbox" id="keepMeInformed" name="keepMeInformed" value="yes">
				    <label for="keepMeInformed">
				        Keep me informed about the latest promotions and travel updates.
				    </label>
				</div>
					<p class="success">${error}</p>

                <div class="login-link">
                Already have an account? <a href="/login">Log in</a>
            </div>
            </form>
        </div>
        
    </div>
    
</body>
</html>