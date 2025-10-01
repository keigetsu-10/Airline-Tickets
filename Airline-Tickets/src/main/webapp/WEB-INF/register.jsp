<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
</head>
<body>
 <style>
body {
    margin: 0;
    font-family: 'Poppins', sans-serif;
    background: url('/images/bg.jpg') no-repeat center center fixed;
    background-size: cover;
}

.signup-container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}
.signup-box {
    background: #0c2340; /* Dark navy */
    color: white;
    padding: 30px;
    border-radius: 10px;
    width: 400px;
    box-shadow: 0px 4px 15px rgba(0,0,0,0.4);
}

.signup-box h2 {
    margin-bottom: 20px;
    text-align: center;
}
    </style>
</head>
<body>
   <div class="signup-container">
    <div class="signup-box">
        <h2>Create an account</h2>

        <form method="post" modelAttribute="register" class="signup-form">

            <div class="form-group">
                <input type="text" name="firstname" placeholder="First name" value="${register.firstname}" class="input-field"/>
            </div>

            <div class="form-group">
            <input type="text" name="lastname" placeholder="Last name" value="${register.lastname}" class="input-field"/>
            </div>

            <div class="form-group">
            <input type="text" name="middlename" placeholder="Middle name" value="${register.middlename}" class="input-field"/>
            </div>
			<div class="form-group">
			<input type="text" name="bday" placeholder="Birthday (DD/MM/YYYY)" value="${register.bday}" class="input-field"/>
            </div>
            
            <div class="form-group">
            <input type="text" name="phonenum" placeholder="Phone Number" value="${register.phonenum}" class="input-field"/>
            </div>
            <div class="form-group">
            <input type="email" name="email" placeholder="Email" value="${register.email}" class="input-field"/>
            </div>
            <div class="form-group">
            <input type="password" name="pass" placeholder="Password" class="input-field"/>
            </div>
            <div class="form-group">
            <input type="password" name="confirpass" placeholder="Confirm password" class="input-field"/>
            </div>
            
            <button type="submit" class="signup-btn">Sign up</button>
        </form>
    </div>
</div>
</body>
</html>