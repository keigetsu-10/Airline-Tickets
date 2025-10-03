<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>A4Lifers Flight Booking | Flight Options</title>
    <link rel="stylesheet" type="text/css" href="/css/navbar.css">
	
	
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap" rel="stylesheet">	
	<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700&display=swap" rel="stylesheet">		
	
	<style>
	    html, body {
		   margin: 0;
		   padding: 0;
		   width: 100%;
		   height: 100%;
		   padding-bottom: 50px;
		}
	
		body {
		  /* font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; */
		   background-color: #ededed;
		}
		
		section {
		   scroll-margin-top: 100px;
		}
		
		hr {
		   color: #ededed;
		   max-width: 1250px;  
		   margin: 40px auto;  
		   border: none;    
		   border-top: 2px solid #ededed; 
		}
		
		input[type="date"] {
		   text-transform: uppercase; 
		   letter-spacing: 1px;
		}
		
		/* Shortcut Booking Bar */
		.shortcut_booking-bar {
		   font-family: 'Poppins', sans-serif;
		   display: flex;
		   justify-content: center;
		   position: relative;
		   top: 4.5rem;
		   margin-bottom: 20px;		  
		}
		
		.booking-container {
		   display: flex;
		   align-items: flex-end;
		   gap: 15px;
		   background: #0a2647;
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
		   color: #ffffff;
		}
		
		.booking-container input,
		.booking-container select {
		   padding: 8px 12px;
		   border: 1px solid #ccc;
		   border-radius: 8px;
		   font-size: 14px;
		}
		
		.search-btn button {
		   background: #588098;
		   color: #fff;
		   border: none;
		   border-radius: 8px;
		   padding: 12px 20px;
		   cursor: pointer;
		   font-weight: bold;
		   transition: 0.3s;
		}
		
		.flight_page {
		    display: flex;
		    justify-content: center;
		    gap: 0;               
		    max-width: 1200px;     
		    margin: 5rem auto;      
		    align-items: flex-start;
		}
		
		.flight_options {
			flex: none;
			display: flex;
    		flex-direction: column;
    		width: 775px;
			margin: -10px -20px 0 35px;
		    gap: 20px;
		}
		
		.flight_options_main {
			margin: 0;
		    flex: 3;
		}
		.flight_options_results-num {
		    font-family: 'Nunito', sans-serif;
		    font-weight: 600;
		    margin-bottom: 15px;
		}
		.flight_options_recommendations {
			font-family: 'Nunito', sans-serif;
		    display: flex;
		    gap: 15px;
		    margin-bottom: 15px;
		}
		.flight_options_recommendations div {
		    flex: 1;
		    background: #fff;
		    border-radius: 12px;
		    text-align: center;
		    padding: 15px;
		    font-weight: 600;
		    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
		    cursor: pointer;
		    transition: transform 0.2s ease;
		}
		
		/* Flight Result Cards */
		.flight_details-container {
			height: 120px;
			width: 100%;        
    		box-sizing: border-box; 
		    background: #fff;
		    border-radius: 12px;
		    padding: 15px 20px;
		    margin-bottom: 15px;
		    display: flex;
		    justify-content: space-between;
		    align-items: center;
		    box-shadow: 0 4px 12px rgba(0,0,0,0.08);
		}
		
		.select-btn button {
		    background: #5a7080;
		    color: #fff;
		    border: none;
		    border-radius: 8px;
		    padding: 10px 16px;
		    cursor: pointer;
		    transition: 0.3s;
		}
		
		/* Filters */
		.flight_filters {
			margin: 40px;
			flex: none;
		 	font-family: 'Nunito', sans-serif;
		 	max-width: 200px;
		    flex: 1;
		    background: #fff;
		    border-radius: 12px;
		    padding: 20px;
		    box-shadow: 0 4px 12px rgba(0,0,0,0.08);
		    height: fit-content;
		}
		.flight_filters-txt {
		    font-weight: 900;
		    font-size: 14px;
		    margin: 5px 0 5px 0;
		}
		.filter-btn button {
		 	width: 200px;
		    background: #b1a7a6;
		    color: #fff;
		    border: none;
		    border-radius: 6px;
		    padding: 8px 16px;
		    font-weight: 550;
		    letter-spacing: 1px;
		    cursor: pointer;
		    margin-bottom: 15px;
		}
		.flight_filters input[type="radio"],
		.flight_filters input[type="checkbox"] {
		    margin-right: 8px;
		}
		
		/* EFFECTS */
		.search-btn button:hover {
		  background: #5b6a84;
		}
		
		.flight_options_recommendations div:hover {
		    transform: scale(1.05);
		}
		
		.select-btn button:hover {
		    background: #3e5463;
		}
		
		.filter-btn button:hover {
		    background: #737373;
		}
		
		
	</style>
	
</head>
<body>
	<nav class="navbar">
	  <div class="nav-center">
	    <ul class="nav-links">
	      <li><a href="/Home">Home</a></li>
	      <li><a href="/Home#explore">Explore</a></li>
	      <li><a class="active" href="#shortcut_booking-bar">Book </a></li>
	      <li><a href="/Manage/Profile">Manage</a></li>
	    </ul>
	  </div>
	  <div class="nav-right">
		<ul class="nav-links">
	      <li><a href="/login">Login / Sign-up</a></li>
	    </ul>
	    </div>
	</nav>

	<section id="shortcut_booking-bar" class="shortcut_booking-bar">
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
	        <input type="date" id="date" placeholder="MM/DD/YYYY">
	      </div>
	    
	      <div class="return">
	        <label>Return</label>
	        <input type="date" id="date" placeholder="MM/DD/YYYY">
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
	
	<div class="flight_page">
		<section id="flight_options" class="flight_options">
			<div class="flight_options_main">
				<p class="flight_options_results-num">??? Results</p>
				<div class="flight_options_recommendations">
					<div class="recommendations_cheapest">
						<p>Cheapest</p>
					</div>
					<div class="recommendations_fastest">
						<p>Fastest</p>
					</div>
				</div>
				
				<div class="flight_details-container">
					<div class="flight_departure-details">
					</div>
					<div class="flight_return-details">
					<div class="flight_price-details">
					</div>
					<div class="select-btn"><button>Select</button></div>
					</div>
				</div>
			</div>
		</section>
		
		<section id="flight_filters" class="flight_filters">
			<div class="filter-btn"><button>Filter</button></div>
			<p id="flight_filters-title" class="flight_filters-txt">FILTERS</p>
			<p id="flight_filters-deptime" class="flight_filters-txt">Departure Time</p>
				<input type="time" id="departure-time">
			<p id="flight_filters-class" class="flight_filters-txt">Flight Class</p>
				<label><input type="radio" name="class" value="economy"> Economy</label><br>
				<label><input type="radio" name="class" value="premium"> Premium Economy</label><br>
				<label><input type="radio" name="class" value="business"> Business</label><br>
				<label><input type="radio" name="class" value="first"> First Class</label>
		</section>
	</div>
	
	<script>
	<!-- NAVBAR JS -->
	  document.addEventListener("DOMContentLoaded", () => {
		  const navLinks = document.querySelectorAll(".nav-links a");
		  const currentUrl = window.location.pathname;

		  // Highlight the link that matches current URL
		  navLinks.forEach(link => {
		    if (link.getAttribute("href") === currentUrl) {
		      link.classList.add("active");
		    }

		    // Add click event listener for manual switching
		    link.addEventListener("click", () => {
		      navLinks.forEach(l => l.classList.remove("active"));
		      link.classList.add("active");
		    });
		  });
		});
	</script>
	
</body>
</html>