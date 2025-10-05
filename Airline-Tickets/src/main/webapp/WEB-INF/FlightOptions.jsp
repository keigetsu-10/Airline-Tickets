<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>A4Lifers Flight Booking | Flight Options</title>
    <link rel="stylesheet" type="text/css" href="/css/navbar.css">
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/Footer.css'/>">
	
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
		
		.suggestions-list {
			width: 200px;       
     		z-index: 1000;
		    margin-top: 3.7rem;          
		    padding: 0;         
		    border: none;        
		    outline: none;      
		    font-family: 'Poppins', sans-serif;
		    font-size: 14px;
		    background: white;     
		    position: absolute;  
		    list-style: none;  
		    box-shadow: 0 2px 8px rgba(0,0,0,0.15); 
		}

		.suggestions-list li {
		    padding: 8px 12px;
		    cursor: pointer;
		}
		
		/* MAIN CONTENT */
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
			font-family: 'Poppins', sans-serif;
			font-size: 12px;
			height: 120px;
			width: 100%;        
			line-height: 4px;
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
		
		.no_flight {
			margin-top: 6rem;
			font-family: 'Poppins', sans-serif;
			font-size: 26px;
			font-weight: 800;
			color: #5a7080;
			justify-content: center;
			text-align: center;
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
		.suggestions-list li:hover {
		   background-color: #f0f0f0;
		}
		
		.search-btn button:hover {
		  background: #5b6a84;
		}
		
		.flight_options_recommendations div:hover {
		    transform: scale(1.05);
		}
		
		.flight_details-container:hover {
		   transform: scale(1.01); 
		   box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
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
	
	<!-- Booking Bar -->
	<form id="bookingForm" onsubmit="return false;">
	  <section id="shortcut_booking-bar" class="shortcut_booking-bar">
	    <div class="booking-container">
	      <div class="from">
	        <label>Where From?</label>
	        <input type="text" id="from" placeholder="From" value="${from}">
	        <ul id="from-suggestions" class="suggestions-list"></ul>
	      </div>
	
	      <div class="to">
	        <label>Where To?</label>
	        <input type="text" id="to" placeholder="Destination" value="${to}">
	        <ul id="to-suggestions" class="suggestions-list"></ul>
	      </div>
	
	      <div class="departure">
	        <label>Departure</label>
	        <input type="date" id="departureDate" placeholder="MM/DD/YYYY" value="${departureDate}">
	      </div>
	
	      <div class="return">
	        <label>Return</label>
	        <input type="date" id="returnDate" placeholder="MM/DD/YYYY" value="${returnDate}">
	      </div>
	
	      <div class="trip">
	        <label>Trip Type</label>
	        <select id="tripType" name="tripType">
	          <option value="Round Trip" selected>Round Trip</option>
	          <option value="One Way">One Way</option>
	        </select>
	      </div>
	
	      <div class="search-btn">
	        <button id="flight-search-btn" type="button">Search</button>
	      </div>
	    </div>
	  </section>
	</form>
	
	<div class="flight_page">
<<<<<<< HEAD
	  <section id="flight_options" class="flight_options">
	    <div class="flight_options_main">
	      <p class="flight_options_results-num">??? Results</p>
	
	      <div class="flight_options_recommendations">
	        <div class="recommendations_cheapest">
	          <!-- Api -->
	          <p>$$$</p>
	          <p>Cheapest</p>
	        </div>
	        <div class="recommendations_fastest">
	          <!-- Api -->
	          <p>$$$</p>
	          <p>Fastest</p>
	        </div>
	      </div>
	
	      <div class="flight_results">
	      	<c:choose>
	        <c:when test="${not empty flights}">
	          <c:forEach var="flight" items="${flights}">
	            <div class="flight_details-container">
	              <div class="flight_departure-details">
	                <p><b>${flight.name}, ${flight.country}</b></p>
	                <p>Airport: ${flight.airport}</p>
	                <p>Departure: ${flight.departureDate} ${flight.departureTime}</p>
	              </div>
	
	              <div class="flight_return-details">
	                <c:if test="${flight.tripType == 'Round Trip'}">
	                  <p>Return: ${flight.returnDate} ${flight.returnTime}</p>
	                </c:if>
	                <p>Class: ${flight.flightClass} | ${flight.tripType}</p>
	              </div>
	
	              <div class="flight_price-details">
	                <p>💲${flight.price}</p>
	              </div>
	
	              <div class="select-btn">
	                <button id="select-btn" type="button">Select</button>
	              </div>
	            </div>
	          </c:forEach>
	        </c:when>
	
	        <c:otherwise>
	          <p class="no_flight">NO FLIGHTS FOUND</p>
	        </c:otherwise>
	      </c:choose>
	      
	      </div>
	    </div>
	  </section>
	
	  <section id="flight_filters" class="flight_filters">
	    <div class="filter-btn">
	      <button id="filter-btn" type="button">Filter</button>
	    </div>
	
	    <p id="flight_filters-title" class="flight_filters-txt">FILTERS</p>
	    <p id="flight_filters-deptime" class="flight_filters-txt">Departure Time</p>
	    <input type="time" id="departureTime">
	    <p id="flight_filters-rettime" class="flight_filters-txt">Return Time</p>
	    <input type="time" id="returnTime">
	
	    <p id="flight_filters-class" class="flight_filters-txt">Flight Class</p>
	    <label><input type="radio" name="class" value="economy"> Economy</label><br>
	    <label><input type="radio" name="class" value="premium"> Premium Economy</label><br>
	    <label><input type="radio" name="class" value="business"> Business</label><br>
	    <label><input type="radio" name="class" value="first"> First Class</label>
	  </section>
=======
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
		<c:choose>
		  <c:when test="${not empty flights}">
		    <c:forEach var="flight" items="${flights}">
				<div class="flight_details-container">
					<div class="flight_departure-details">
						<p><b>${flight.name}, ${flight.country}</b></p>
			            <p>Airport: ${flight.airport}</p>
			            <p>Departure: ${flight.departureDate} ${flight.departureTime}</p>
					</div>
					<div class="flight_return-details">
						<p>Return: ${flight.returnDate} ${flight.returnTime}</p>
	          			<p>Class: ${flight.flightClass} | ${flight.tripType}</p>
					</div>
					<div class="flight_price-details">
						<p>💲${flight.price}</p>
					</div>
					<div class="select-btn"><button  onclick="handleSelect()">Select</button></div>
				 </div>
			</c:forEach>
		  </c:when>
		  <c:otherwise>
		    <p>No flights found for your search criteria 🚫</p>
		  </c:otherwise>
		</c:choose>
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
>>>>>>> branch 'main' of https://github.com/keigetsu-10/Airline-Tickets.git
	</div>
	
	<jsp:include page="Footer.jsp" />
	
	<script>
<<<<<<< HEAD
	document.addEventListener("DOMContentLoaded", () => {
		
	}
	  // Handle navigation link highlighting
	  const navLinks = document.querySelectorAll(".nav-links a");
	  const currentUrl = window.location.pathname;
	
	  navLinks.forEach(link => {
	    if (link.getAttribute("href") === currentUrl) {
	      link.classList.add("active");
	    }
	    link.addEventListener("click", () => {
	      navLinks.forEach(l => l.classList.remove("active"));
	      link.classList.add("active");
	    });
	  });
		  
	// INSERT HERE type_filter after API INTEGRATION
=======
	<!-- NAVBAR JS -->
	document.addEventListener("DOMContentLoaded", () => {
	    const navLinks = document.querySelectorAll(".nav-links a");
	    const currentUrl = window.location.pathname;

	    navLinks.forEach(link => {
	      if (link.getAttribute("href") === currentUrl) {
	        link.classList.add("active");
	      }

	      link.addEventListener("click", () => {
	        navLinks.forEach(l => l.classList.remove("active"));
	        link.classList.add("active");
	      });
	    });
	  });

	  // Search button logic
	  document.addEventListener("DOMContentLoaded", function () {
	    const searchBtn = document.getElementById("search-btn");
	    const fromInput = document.getElementById("from");
	    const toInput = document.getElementById("to");
	    const departureInput = document.getElementById("departureDate");
	    const returnInput = document.getElementById("returnDate");

	    searchBtn.addEventListener("click", function (e) {
	      e.preventDefault(); // prevent accidental reload

	      const from = fromInput.value.trim();
	      const to = toInput.value.trim();
	      const departureDate = departureInput.value;
	      const returnDate = returnInput.value;

	      if (!from || !to || !departureDate || !returnDate) {
	        alert("⚠️ Please complete all booking fields before continuing.");
	        return;
	      }

	      const params = new URLSearchParams({
	        from,
	        to,
	        departureDate,
	        returnDate
	      }).toString();

	      const targetUrl = `/Flight/Options?${params}`;
	      window.location.href = targetUrl;
	    });
	  });

	  // ✅ Login check before selecting a flight
	  function handleSelect() {
	    const isLoggedIn = <%= (session.getAttribute("user") != null) ? "true" : "false" %>;

	    if (!isLoggedIn) {
	      alert("⚠️ You must log in first before selecting a flight.");
	      window.location.href = "/login";
	    } else {
	      window.location.href = "/book/confirm";
	    }
	  }
	  </script>
	  
>>>>>>> branch 'main' of https://github.com/keigetsu-10/Airline-Tickets.git
	</script>
	<script src="${pageContext.request.contextPath}/js/flight-options_generator.js"></script>	
	
</body>
</html>