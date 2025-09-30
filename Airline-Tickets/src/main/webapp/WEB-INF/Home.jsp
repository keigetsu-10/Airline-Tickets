<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jet2Holiday</title>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	
	<style>
		.header {
		  width: 100%;
		  height: 300px;
		  background: url('/images/header.jpg') no-repeat center center/cover;
		  display: flex;
		  align-items: center;
		  justify-content: center;
		  flex-direction: column;
		  text-align: center;
		  color: #fff;
		}
		
		.header h1 {
		  font-size: 36px;
		  font-weight: bold;
		  margin-bottom: 10px;
		}
		
		.header p {
		  font-size: 18px;
		  margin-bottom: 20px;
		}
		
		.banner-btn {
		  background: #0a2647;
		  color: #fff;
		  border: none;
		  border-radius: 8px;
		  padding: 12px 24px;
		  cursor: pointer;
		  font-size: 16px;
		  transition: 0.3s;
		}
		
		.banner-btn:hover {
		  background: #144272;
		}
		
		/* Shortcut Booking Bar */
		.shortcut_booking-bar {
		  font-family: 'Poppins', sans-serif;
		  display: flex;
		  justify-content: center;
		  margin-top: 55px;
		  margin-bottom: 40px;
		}
		
		.booking-container {
		  display: flex;
		  align-items: flex-end;
		  gap: 15px;
		  background: #fff;
		  padding: 20px 30px;
		  border-radius: 15px;
		  box-shadow: 0 4px 12px rgba(0,0,0,0.15);
		}
		
		.booking-container > div {
		  display: flex;
		  flex-direction: column;
		}
		
		.booking-container label {
		  font-size: 12px;
		  font-weight: 600;
		  margin-bottom: 5px;
		  color: #333;
		}
		
		.booking-container input,
		.booking-container select {
		  padding: 8px 12px;
		  border: 1px solid #ccc;
		  border-radius: 8px;
		  font-size: 14px;
		}
		
		.search-btn button {
		  background: #0a2647;
		  color: #fff;
		  border: none;
		  border-radius: 8px;
		  padding: 12px 20px;
		  cursor: pointer;
		  font-weight: bold;
		  transition: 0.3s;
		}
		
		.search-btn button:hover {
		  background: #144272;
		}

	</style>

</head>
<body>
	<header class="header">
	  <div class="header_title">
	 	 <img src="/images/header1.jpg" alt="Test Banner" width="100%">
	    <h1>WHERE COMFORT MEETS THE CLOUDS.</h1>
	    <p>Get the best prices for your trips</p>
	    <button class="banner-btn">Book Now</button>
	  </div>
	</header>
	
	<section class="shortcut_booking-bar">
	  <div class="booking-container">
	  
	    <div class="from">
	      <label>Where From?</label>
	      <input type="text" placeholder="From">
	    </div>
	    
	    <div class="to">
	      <label>Where To?</label>
	      <input type="text" placeholder="Destination">
	    </div>
	 
	    <div class="departure">
	      <label>Departure</label>
	      <input type="date">
	    </div>
	    
	    <div class="return">
	      <label>Return</label>
	      <input type="date">
	    </div>
	    
	    <div class="trip">
	      <label>Trip Type</label>
	      <select>
	        <option>Round Trip</option>
	        <option>One Way</option>
	      </select>
	    </div>
	    
	    <div class="search-btn">
	      <button>Search</button>
	    </div>
	   
	  </div>
	</section>

	
		

</body>
</html>