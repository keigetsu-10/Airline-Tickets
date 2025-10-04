<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>A4Lifers Flight Booking | Home</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/navbar.css">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap" rel="stylesheet">	
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/Footer.css'/>">
	<style>
	
		html, body {
		  margin: 0;
		  padding: 0;
		  width: 100%;
		  height: 100%;
		  padding-bottom: 50px;		  
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
		  margin: 90px 0 -5px;
		  text-shadow: 2px 2px 8px rgba(0,0,0,0.7);
		}
		
		.header p {
		  margin-bottom: 20px;
		  font-family: sans-serif;
		  font-size: 18px;
		  text-shadow: 2px 2px 8px rgba(0,0,0,0.7);
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

		
		/* Recommendations */
		.recommendations {
		    margin-bottom: 40px;
	     	padding-bottom: 2rem;
		}
		
		.recommendations_title {
		    font-family: 'Poppins', sans-serif;
		    text-align: center;
		}
		
		.recommendations_title h2{
    	    font-weight: 700;
		}
		
		.recommendations_title p {
		    color: #b4b4b4;
		    font-weight: 500;
    	    margin-top: -20px;
		}
		
		.recommendations_destination {
		    display: flex;
		    font-family: 'Poppins', sans-serif;
		    justify-content: center;  
		    gap: 20px;    
		    flex-wrap: wrap;    
		    margin-top: 20px;
		}
		
		.recommendations_card {
		    position: relative;    
		    width: 150px;
		    height: 300px;
		    overflow: hidden;
		    box-shadow: 0 4px 12px rgba(0,0,0,0.2);
		    border-radius: 6px;
		}
		
		.recommendations_img {
		    width: 150px;
		    height: 300px;
		     overflow: hidden;
		    box-shadow: 0 4px 12px rgba(0,0,0,0.2);
		} 

		.recommendations_img img {
		    width: 100%;
		    height: 100%;
		    object-fit: cover;
		    display: block;
		  
		 }
		 
		 .recommendations_txt {
		    position: absolute;
		    top: 10px;
		    left: 10px;
		    color: #fff;
		    font-size: 12px;
		    font-weight: 600;
		    text-shadow: 1px 1px 3px rgba(0,0,0,0.8);
		    margin: 0;
		}
		
		/* Explore */
		.explore {
			padding-bottom: 5rem;
		}
		
		.explore_container {
		    font-family: 'Poppins', sans-serif;
		    font-weight: 300;
		    display: grid;
		    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  		    row-gap: 15px;      
		    flex-wrap: wrap;  
		    gap: 15px;                              
		    justify-content: center;               
		    max-width: 1200px;               
		    margin: 0 auto;  
		}
		
		.explore_title {
		    justify-content: center;
		    text-align: center;
		    display: block;
		}
		
		.explore_header {
		    font-family: 'Montserrat', sans-serif;
		    font-size: 36px;
		    margin-top: 5rem;
		}
		
		.explore_desc {
		    font-family: 'Poppins', sans-serif;
		    color: #b4b4b4;
    	    font-weight: 500;
    	    margin: -25px 0 2.5rem;
		}
		
		.explore_card {
		    position: relative;    
		    width: 250px;
		    height: 150px;
		    max-width: 1100px;
  		    margin: 0 auto;
		    margin-bottom: 8px; 
		    overflow: hidden;
		    object-fit: cover;  
		    box-shadow: 0 4px 12px rgba(0,0,0,0.2);
		    border-radius: 6px;
		    aspect-ratio: 2 / 3; 
		}
		
		.explore_img {
		    width: 150px;
		    height: 300px;
		    overflow: hidden;
		    object-fit: cover;  
		    box-shadow: 0 4px 12px rgba(0,0,0,0.2);
		}

		.explore_card img {
		    width: 100%;
		    height: 100%;
		    object-fit: cover; 
		    object-position: center;
		    display: block;
		    pointer-events: none;
		}
		 
		.explore_txt {
		    position: absolute;
		    margin: 0;
		    top: 50%;
		    left: 50%;
		    color: #fff;
		    font-size: 16px;
		    letter-spacing: 2px;
		    font-weight: 600;
		    text-align: center;
		    transform: translate(-50%, -50%); 
		    text-shadow: 2px 2px 6px rgba(0,0,0,0.8); 
		    pointer-events: none; 
		}
		
		.explore_card svg {
		    position: absolute;
		    top: 10px;
		    right: 10px;
		    width: 30px;   
		    height: 30px;  
		    fill: #000000;   
		    opacity: 0.5;  
		}
		
		/* SVG - star */
		.star-icon {
		   position: absolute;
		   top: 10px;
		   right: 10px;
		   width: 30px;
		   height: 30px;
		   fill: #000000;   
		   opacity: 0.5;   
		   cursor: pointer;
		   transition: fill 0.3s ease, opacity 0.3s ease;
		   z-index: 10;
		}
		
		.star-icon.active {
		   fill: #fbca41;  
		   opacity: 1;     
		}
		
		/* HOVER EFFECTS */
		.banner-btn:hover {
		   background: #144272;
		}
		
		.suggestions-list li:hover {
		   background-color: #f0f0f0;
		}
		
		.search-btn button:hover {
		   background: #144272;
		}
		
		.recommendations_card:hover {
		   transform: scale(1.05); 
		   box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
		}
		
		.explore_card:hover {
		   transform: scale(1.05); 
		   box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
		}
				
	</style>

</head>
<body>
	<nav class="navbar">
	  <div class="nav-center">
	    <ul class="nav-links">
	      <li><a class="active" href="#header">Home</a></li>
	      <li><a href="/Home#explore">Explore</a></li>
	      <li><a href="/Flight/Options">Book</a></li>
	      <li><a href="/Manage/Profile">Manage</a></li>

	    </ul>
	  </div>
	  <div class="nav-right">
		<ul class="nav-links">
	      <li><a href="/login">Login / Sign-up</a></li>
	    </ul>
	    </div>
	</nav>
	
	<header id="header" class="header">
	  <div class="header-title">
	    <h1 class="header_text">WHERE COMFORT MEETS THE CLOUDS.</h1>
	    <p class="header_text">Get the best prices for your trips</p>
	    <button class="banner-btn">Book Now</button>
	  </div>
	</header>

	<!-- Booking Bar -->
	<section id="shortcut_booking-bar" class="shortcut_booking-bar">
	  <div class="booking-container">
	    <div class="from">
	      <label>Where From?</label>
	      <input type="text" id="from" placeholder="From">
	      <ul id="from-suggestions" class="suggestions-list"></ul>
	    </div>
	    
	    <div class="to">
	      <label>Where To?</label>
	      <input type="text" id="to" placeholder="Destination">
	      <ul id="to-suggestions" class="suggestions-list"></ul>
	    </div>
	 
	    <div class="departure">
	      <label>Departure</label>
	      <input type="date" id="departureDate" placeholder="MM/DD/YYYY">
	    </div>
	    
	    <div class="return">
	      <label>Return</label>
	      <input type="date" id="returnDate" placeholder="MM/DD/YYYY">
	    </div>
	    
	    <div class="trip">
	      <label>Trip Type</label>
	      <select>
	        <option>Round Trip</option>
	        <option>One Way</option>
	      </select>
	    </div>
	    
	    <div class="search">
	      <button id="search-btn" >Search</button>
	    </div>
	  </div>
	</section>
	
	<section id="recommendations" class="recommendations">
		<div class="recommendations_title">
		<h2>RECOMMENDED TOP TRAVEL DESTINATIONS</h2>
		<p>For as low as $5</p>
		</div>
		<div class="recommendations_destination">
		</div>
	</section>
	
	<hr/>
	
	<section id="explore" class="explore">
		<div class="explore_title">
			<p class="explore_header">WHERE TO FLY NEXT?</p>
			<p class="explore_desc">Discover new places you might want to visit</p>
		</div>
		<div class="explore_destinations">
			<div class="explore_container">
			
			</div>
			
		</div>
		
		
	</section>
	<jsp:include page="Footer.jsp" />
	
	
	<!-- JAVASCRIPT -->
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
	  
	  document.addEventListener("DOMContentLoaded", function () {
		  const searchBtn = document.getElementById("search-btn");
		  const fromInput = document.getElementById("from");
		  const toInput = document.getElementById("to");
		  const departureInput = document.getElementById("departureDate");
		  const returnInput = document.getElementById("returnDate");
		  const tripType = document.querySelector(".trip select");

		  searchBtn.addEventListener("click", function (e) {
		    e.preventDefault();

		    const from = fromInput.value.trim();
		    const to = toInput.value.trim();
		    const departure = departureInput.value;
		    const returnDate = returnInput.value;
		    const trip = tripType.value;

		    if (!from || !to || !departure || (trip === "Round Trip" && !returnDate)) {
		      alert("⚠️ Please complete all booking fields before continuing.");
		      return;
		    }

		    // Build query string
		    const params = new URLSearchParams({
		      from,
		      to,
		      departure,
		      returnDate,
		      trip
		    }).toString();

		    // Redirect to booking page
		    window.location.href = `/Flight/Options?${params}`;
		  });
		});
	  
	  // FAVORITES FUNCTIONALITY
	  function addToFavorites(destination, imageUrl) {
	    let favorites = JSON.parse(localStorage.getItem('favorites')) || [];
	    
	    const exists = favorites.some(fav => fav.name === destination);
	    if (!exists) {
	      favorites.push({ 
	        name: destination, 
	        image: imageUrl 
	      });
	      localStorage.setItem('favorites', JSON.stringify(favorites));
	      console.log('Successfully added to favorites:', { name: destination, image: imageUrl });
	    }
	  }

	  function removeFromFavorites(destination) {
	    let favorites = JSON.parse(localStorage.getItem('favorites')) || [];
	    favorites = favorites.filter(fav => fav.name !== destination);
	    localStorage.setItem('favorites', JSON.stringify(favorites));
	    console.log('Removed from favorites:', destination);
	  }
	  
	</script>
	<script src="${pageContext.request.contextPath}/js/type_filter.js"></script>
	<script src="${pageContext.request.contextPath}/js/recommended.js"></script>
	<script src="${pageContext.request.contextPath}/js/explore.js"></script>

	
</body>
</html>