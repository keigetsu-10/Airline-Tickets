<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jet2Holiday</title>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap" rel="stylesheet">
	
	
	<style>
	
		html, body {
		  margin: 0;
		  padding: 0;
		  width: 100%;
		  height: 100%;
		  padding-bottom: 50px;
		}

		.header {
		  width: 100%;
		  height: 400px;
		  background: url('/images/header1.jpg') no-repeat center center/cover;
		  display: flex;
		  align-items: flex-start;
		  justify-content: flex-start; 
		  text-align: left;
		  color: #fff;
		  position: relative;
		  padding-left: 250px;      
		  padding-top: 60px;
		  box-sizing: border-box;
		}
		
		.header h1 {
		  font-family: 'Montserrat', sans-serif;
		  font-size: 36px;
		  font-weight: bold;
		  margin: 80px 0 -5px;
		  text-shadow: 2px 2px 8px rgba(0,0,0,0.7);
		}
		
		.header p {
		  font-size: 18px;
		  margin-bottom: 20px;
		  text-shadow: 2px 2px 8px rgba(0,0,0,0.7);
		}
		
		.header-title {
			max-width: 600px;
			margin-bottom: 0 0 0 -260px;
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
		  position: relative;
		  top: -40px;
		  margin-bottom: 20px;
		}
		
		.booking-container {
		  display: flex;
		  align-items: flex-end;
		  gap: 15px;
		  background: linear-gradient(
		    to bottom,
		      rgba(255, 255, 255, 0.7) 0%,    
			  rgba(255, 255, 255, 0.85) 10%,  
			  rgba(255, 255, 255, 0.95) 20%, 
			  rgba(255, 255, 255, 1.0) 30%,   
			  rgba(255, 255, 255, 1.0) 80%, 
			  rgba(242, 242, 242, 1.0) 100% 
		  );
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
		
<<<<<<< HEAD
		/* RECOMMENDATIONS */
		.recommendations_title {
		  font-family: 'Poppins', sans-serif;
		  text-align: center;
		}
		
		.recommendations_title h2{
    	  font-weight: 600;
		}
		
		.recommendations_title p{
		  color: #b4b4b4;
    	  font-weight: bold;
    	  margin-top: -20px;
		}
		
		.recommendations_img {
		  width: 200px;
		  height: 350px;
		  margin: 0 auto;
		  margin-bottom: 40px;
		  overflow: hidden;       
		  box-shadow: 0 4px 12px rgba(0,0,0,0.2); 
		}

		.recommendations_img img {
		  width: 100%;
		  height: 100%;
		  object-fit: cover;
		  display: block;
=======
  gap: 30px;
		}
		.nav-links {
		  list-style: none;
		  display: flex;
		  gap: 30px;
		  margin: 0;
		  padding: 0;
		}
		.nav-container {
		  display: flex;
		  justify-content: space-between;
		  align-items: center;
		}
		.nav-links {
		  list-style: none;
		  display: flex;
		  gap: 30px;
		  margin: 0;
		  padding: 0;
		}
		.navbar {
		  display: flex;
		  justify-content: space-between; /* logo left, menu right */
		  align-items: center;
		  padding: 15px 50px;
		  position: absolute;
		  justify-content: center;
		  top: 0;
		  width: 100%;
		  z-index: 1000;
		  background: rgba(0, 32, 64, 0.6);
		  backdrop-filter: blur(6px);
>>>>>>> branch 'main' of https://github.com/keigetsu-10/Airline-Tickets.git
		}

	</style>

</head>
<body>
	<header class="header">
	  <div class="header_title">
	    <h1 class="header_text">WHERE COMFORT MEETS THE CLOUDS.</h1>
	    <p class="header_text">Get the best prices for your trips</p>
	    <button class="banner-btn">Book Now</button>
	  </div>
	</header>
<nav class="navbar">
  <ul class="nav-links">
    <li><a href="#">Home</a></li>
</nav>
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
<<<<<<< HEAD
	
	<section class="recommendations">
		<div class="recommendations_title">
		<h2>RECOMMENDED TOP TRAVEL DESTINATIONS</h2>
		<p>For as low as $5</p>
		</div>
		<div class="recommendations_destination">
		</div>
		<div class="recommendations_img">
			<img src="/images/reco1.jpg" alt="Recommended Photo 1">
		</div>
	
	</section>

	
		

=======
>>>>>>> branch 'main' of https://github.com/keigetsu-10/Airline-Tickets.git
</body>
</html>