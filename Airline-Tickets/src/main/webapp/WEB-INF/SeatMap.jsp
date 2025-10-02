<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>A4Lifers Flight Booking |Seat Map</title>
<style>
 body {
            font-family: Arial, sans-serif;
            background: #f5f5f5;
            margin: 0;
        }
        .navbar {
            background-color: #405975;
            padding: 15px;
            color: white;
            display: flex;
            justify-content: center;
            gap: 30px;
        }
        .navbar a {
            color: white;
            text-decoration: none;
            font-weight: bold;
       }
       
       .progress-bar {
            background-color: #e8e8e8;
            padding: 30px 50px;
            display: flex;
            align-items: center;
            gap: 15px;
            justify-content: center;
        }

        .step {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .step-number {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
            color: white;
        }

        .step-number.completed {
            background-color: #10b981;
        }

        .step-number.active {
            background-color: #1e3a5f;
        }

        .step-number.inactive {
            background-color: #9ca3af;
        }

        .step-label {
            font-size: 14px;
            color: #1e3a5f;
        }

        .step-label.inactive {
            color: #9ca3af;
        }

        .step-connector {
            width: 50px;
            height: 3px;
            background-color: #10b981;
        }

        .step-connector.inactive {
            background-color: #9ca3af;
            border-top: 2px dashed #6b7280;
		}


</style>
</head>
<body>
  <nav class="navbar">
      <div class="nav-center">
        <ul class="nav-links">
          <li><a href="#header">Home</a></li>
          <li><a href="#explore">Explore</a></li>
          <li><a href="/Flight/Options">Bookings</a></li>
          <li><a href="#">Manage</a></li>


        </ul>
      </div>
      <div class="nav-right">
        <ul class="nav-links">
          <li><a href="/login">Login / Sign-up</a></li>
        </ul>
        </div>
    </nav>
<div class="progress-bar">
        <div class="step">
            <div class="step-number completed">1</div>
            <span class="step-label">Destination & Date</span>
        </div>
        <div class="step-connector"></div>
        
        <div class="step">
            <div class="step-number active">2</div>
            <span class="step-label active">Seat Map</span>
        </div>
        <div class="step-connector inactive"></div>
        
        <div class="step">
            <div class="step-number inactive">3</div>
            <span class="step-label inactive">Personal Information</span>
        </div>
        <div class="step-connector inactive"></div>
        
        <div class="step">
            <div class="step-number inactive">4</div>
            <span class="step-label inactive">Confirmation</span>
        </div>
        <div class="step-connector inactive"></div>
        
        <div class="step">
            <div class="step-number inactive">5</div>
            <span class="step-label inactive">Payment</span>
        </div>
    </div>
<form>
<button type="submit" class="btn"><a href="/PersonalInfo">Next</a></button>
</form>
</body>
</html>