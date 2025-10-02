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

		
		/* RECOMMENDATIONS */
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
		
		.explore {
			padding-bottom: 5rem;
		}
		
		.explore_destinations {
		  font-family: 'Poppins', sans-serif;
		  font-weight: 300;
		  display: grid;
		  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  		  row-gap: 15px;      
		  flex-wrap: wrap; 
		  grid-template-columns: repeat(4, 1fr);  
		  gap: 15px;                              
		  justify-content: center;               
		  max-width: fit-content;               
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
		}
		
		.star-icon.active {
		  fill: #fbca41;  
		  opacity: 1;     
		}
		
		/* HOVER EFFECTS */
		.banner-btn:hover {
		  background: #144272;
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
	      <li><a href="#">Manage</a></li>

	    </ul>
	  </div>
	  <div class="nav-right">
		<ul class="nav-links">
	      <li><a href="/login">Login / Sign-up</a></li>
	    </ul>
	    </div>
	</nav>
	
	<header id="header" class="header">
	  <div class="header_title">
	    <h1 class="header_text">WHERE COMFORT MEETS THE CLOUDS.</h1>
	    <p class="header_text">Get the best prices for your trips</p>
	    <button class="banner-btn">Book Now</button>
	  </div>
	</header>

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
	
	<section id="recommendations" class="recommendations">
		<div class="recommendations_title">
		<h2>RECOMMENDED TOP TRAVEL DESTINATIONS</h2>
		<p>For as low as $5</p>
		</div>
		<div class="recommendations_destination">
			<div class="recommendations_card">
				<p class="recommendations_txt">Paris,<br>France</p>
				<img class="recommendations_img" src="/images/reco1.jpg" alt="Recommended Photo 1">
			</div>
			<div class="recommendations_card">
				<p class="recommendations_txt">Beijing,<br>China</p>
				<img class="recommendations_img" src="/images/reco2.jpg" alt="Recommended Photo 2">
			</div>
			<div class="recommendations_card">
				<p class="recommendations_txt">Jeju Island,<br>South Korea</p>
				<img class="recommendations_img" src="/images/reco3.jpg" alt="Recommended Photo 3">
			</div>
			<div class="recommendations_card">
				<p class="recommendations_txt">Marina Bay Sands,<br>Singapore</p>
				<img class="recommendations_img" src="/images/reco4.jpg" alt="Recommended Photo 4">
			</div>
			<div class="recommendations_card">
				<p class="recommendations_txt">London,<br>United Kingdom</p>
				<img class="recommendations_img" src="/images/reco5.jpg" alt="Recommended Photo 5">
			</div>
			<div class="recommendations_card">
				<p class="recommendations_txt">Mt. Fuji,<br>Japan</p>
				<img class="recommendations_img" src="/images/reco6.jpg" alt="Recommended Photo 6">
			</div>
		</div>
	</section>
	
	<hr/>
	
	<section id="explore" class="explore">
		<div class="explore_title">
			<p class="explore_header">WHERE TO FLY NEXT?</p>
			<p class="explore_desc">Discover new places you might want to visit</p>
		</div>
		<div class="explore_destinations">
			<div class="explore_card">
				<svg class="star-icon"xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 640"><path d="M341.5 45.1C337.4 37.1 329.1 32 320.1 32C311.1 32 302.8 37.1 298.7 45.1L225.1 189.3L65.2 214.7C56.3 216.1 48.9 222.4 46.1 231C43.3 239.6 45.6 249 51.9 255.4L166.3 369.9L141.1 529.8C139.7 538.7 143.4 547.7 150.7 553C158 558.3 167.6 559.1 175.7 555L320.1 481.6L464.4 555C472.4 559.1 482.1 558.3 489.4 553C496.7 547.7 500.4 538.8 499 529.8L473.7 369.9L588.1 255.4C594.5 249 596.7 239.6 593.9 231C591.1 222.4 583.8 216.1 574.8 214.7L415 189.3L341.5 45.1z"/></svg>
				<p class="explore_txt">New York</p>
				<img class="explore_img" src="/images/NewYork.jpg" alt="New York">
			</div>
			<div class="explore_card">
				<svg class="star-icon"xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 640"><path d="M341.5 45.1C337.4 37.1 329.1 32 320.1 32C311.1 32 302.8 37.1 298.7 45.1L225.1 189.3L65.2 214.7C56.3 216.1 48.9 222.4 46.1 231C43.3 239.6 45.6 249 51.9 255.4L166.3 369.9L141.1 529.8C139.7 538.7 143.4 547.7 150.7 553C158 558.3 167.6 559.1 175.7 555L320.1 481.6L464.4 555C472.4 559.1 482.1 558.3 489.4 553C496.7 547.7 500.4 538.8 499 529.8L473.7 369.9L588.1 255.4C594.5 249 596.7 239.6 593.9 231C591.1 222.4 583.8 216.1 574.8 214.7L415 189.3L341.5 45.1z"/></svg>
				<p class="explore_txt">Rio de Janerio</p>
				<img class="explore_img" src="/images/RioDeJanerio.jpg" alt="Rio de Janerio">
			</div>
			<div class="explore_card">
				<svg class="star-icon"xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 640"><path d="M341.5 45.1C337.4 37.1 329.1 32 320.1 32C311.1 32 302.8 37.1 298.7 45.1L225.1 189.3L65.2 214.7C56.3 216.1 48.9 222.4 46.1 231C43.3 239.6 45.6 249 51.9 255.4L166.3 369.9L141.1 529.8C139.7 538.7 143.4 547.7 150.7 553C158 558.3 167.6 559.1 175.7 555L320.1 481.6L464.4 555C472.4 559.1 482.1 558.3 489.4 553C496.7 547.7 500.4 538.8 499 529.8L473.7 369.9L588.1 255.4C594.5 249 596.7 239.6 593.9 231C591.1 222.4 583.8 216.1 574.8 214.7L415 189.3L341.5 45.1z"/></svg>
				<p class="explore_txt">Barcelona</p>
				<img class="explore_img" src="/images/Barcelona.jpg" alt="Barcelona">
			</div>
			<div class="explore_card">
				<svg class="star-icon"xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 640"><path d="M341.5 45.1C337.4 37.1 329.1 32 320.1 32C311.1 32 302.8 37.1 298.7 45.1L225.1 189.3L65.2 214.7C56.3 216.1 48.9 222.4 46.1 231C43.3 239.6 45.6 249 51.9 255.4L166.3 369.9L141.1 529.8C139.7 538.7 143.4 547.7 150.7 553C158 558.3 167.6 559.1 175.7 555L320.1 481.6L464.4 555C472.4 559.1 482.1 558.3 489.4 553C496.7 547.7 500.4 538.8 499 529.8L473.7 369.9L588.1 255.4C594.5 249 596.7 239.6 593.9 231C591.1 222.4 583.8 216.1 574.8 214.7L415 189.3L341.5 45.1z"/></svg>
				<p class="explore_txt">Germany</p>
				<img class="explore_img" src="/images/Germany.jpg" alt="Germany">
			</div>
			<div class="explore_card">
				<svg class="star-icon"xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 640"><path d="M341.5 45.1C337.4 37.1 329.1 32 320.1 32C311.1 32 302.8 37.1 298.7 45.1L225.1 189.3L65.2 214.7C56.3 216.1 48.9 222.4 46.1 231C43.3 239.6 45.6 249 51.9 255.4L166.3 369.9L141.1 529.8C139.7 538.7 143.4 547.7 150.7 553C158 558.3 167.6 559.1 175.7 555L320.1 481.6L464.4 555C472.4 559.1 482.1 558.3 489.4 553C496.7 547.7 500.4 538.8 499 529.8L473.7 369.9L588.1 255.4C594.5 249 596.7 239.6 593.9 231C591.1 222.4 583.8 216.1 574.8 214.7L415 189.3L341.5 45.1z"/></svg>
				<p class="explore_txt">Monaco</p>
				<img class="explore_img" src="/images/Monaco.jpg" alt="Monaco">
			</div>
			<div class="explore_card">
				<svg class="star-icon"xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 640"><path d="M341.5 45.1C337.4 37.1 329.1 32 320.1 32C311.1 32 302.8 37.1 298.7 45.1L225.1 189.3L65.2 214.7C56.3 216.1 48.9 222.4 46.1 231C43.3 239.6 45.6 249 51.9 255.4L166.3 369.9L141.1 529.8C139.7 538.7 143.4 547.7 150.7 553C158 558.3 167.6 559.1 175.7 555L320.1 481.6L464.4 555C472.4 559.1 482.1 558.3 489.4 553C496.7 547.7 500.4 538.8 499 529.8L473.7 369.9L588.1 255.4C594.5 249 596.7 239.6 593.9 231C591.1 222.4 583.8 216.1 574.8 214.7L415 189.3L341.5 45.1z"/></svg>
				<p class="explore_txt">Yucatán</p>
				<img class="explore_img" src="/images/Yucatán.jpg" alt="Yucatán">
			</div>
			<div class="explore_card">
				<svg class="star-icon"xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 640"><path d="M341.5 45.1C337.4 37.1 329.1 32 320.1 32C311.1 32 302.8 37.1 298.7 45.1L225.1 189.3L65.2 214.7C56.3 216.1 48.9 222.4 46.1 231C43.3 239.6 45.6 249 51.9 255.4L166.3 369.9L141.1 529.8C139.7 538.7 143.4 547.7 150.7 553C158 558.3 167.6 559.1 175.7 555L320.1 481.6L464.4 555C472.4 559.1 482.1 558.3 489.4 553C496.7 547.7 500.4 538.8 499 529.8L473.7 369.9L588.1 255.4C594.5 249 596.7 239.6 593.9 231C591.1 222.4 583.8 216.1 574.8 214.7L415 189.3L341.5 45.1z"/></svg>
				<p class="explore_txt">Boracay</p>
				<img class="explore_img" src="/images/Boracay.jpg" alt="Boracay">
			</div>
			<div class="explore_card">
				<svg class="star-icon"xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 640"><path d="M341.5 45.1C337.4 37.1 329.1 32 320.1 32C311.1 32 302.8 37.1 298.7 45.1L225.1 189.3L65.2 214.7C56.3 216.1 48.9 222.4 46.1 231C43.3 239.6 45.6 249 51.9 255.4L166.3 369.9L141.1 529.8C139.7 538.7 143.4 547.7 150.7 553C158 558.3 167.6 559.1 175.7 555L320.1 481.6L464.4 555C472.4 559.1 482.1 558.3 489.4 553C496.7 547.7 500.4 538.8 499 529.8L473.7 369.9L588.1 255.4C594.5 249 596.7 239.6 593.9 231C591.1 222.4 583.8 216.1 574.8 214.7L415 189.3L341.5 45.1z"/></svg>
				<p class="explore_txt">Taj Mahal</p>
				<img class="explore_img" src="/images/TajMahal.jpg" alt="Taj Mahal">
			</div>
			<div class="explore_card">
				<svg class="star-icon"xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 640"><path d="M341.5 45.1C337.4 37.1 329.1 32 320.1 32C311.1 32 302.8 37.1 298.7 45.1L225.1 189.3L65.2 214.7C56.3 216.1 48.9 222.4 46.1 231C43.3 239.6 45.6 249 51.9 255.4L166.3 369.9L141.1 529.8C139.7 538.7 143.4 547.7 150.7 553C158 558.3 167.6 559.1 175.7 555L320.1 481.6L464.4 555C472.4 559.1 482.1 558.3 489.4 553C496.7 547.7 500.4 538.8 499 529.8L473.7 369.9L588.1 255.4C594.5 249 596.7 239.6 593.9 231C591.1 222.4 583.8 216.1 574.8 214.7L415 189.3L341.5 45.1z"/></svg>
				<p class="explore_txt">Venice</p>
				<img class="explore_img" src="/images/Venice.jpg" alt="Venice">
			</div>
			<div class="explore_card">
				<svg class="star-icon"xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 640"><path d="M341.5 45.1C337.4 37.1 329.1 32 320.1 32C311.1 32 302.8 37.1 298.7 45.1L225.1 189.3L65.2 214.7C56.3 216.1 48.9 222.4 46.1 231C43.3 239.6 45.6 249 51.9 255.4L166.3 369.9L141.1 529.8C139.7 538.7 143.4 547.7 150.7 553C158 558.3 167.6 559.1 175.7 555L320.1 481.6L464.4 555C472.4 559.1 482.1 558.3 489.4 553C496.7 547.7 500.4 538.8 499 529.8L473.7 369.9L588.1 255.4C594.5 249 596.7 239.6 593.9 231C591.1 222.4 583.8 216.1 574.8 214.7L415 189.3L341.5 45.1z"/></svg>
				<p class="explore_txt">Pyramids</p>
				<img class="explore_img" src="/images/Pyramids.jpg" alt="Pyramids">
			</div>
			<div class="explore_card">
				<svg class="star-icon"xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 640"><path d="M341.5 45.1C337.4 37.1 329.1 32 320.1 32C311.1 32 302.8 37.1 298.7 45.1L225.1 189.3L65.2 214.7C56.3 216.1 48.9 222.4 46.1 231C43.3 239.6 45.6 249 51.9 255.4L166.3 369.9L141.1 529.8C139.7 538.7 143.4 547.7 150.7 553C158 558.3 167.6 559.1 175.7 555L320.1 481.6L464.4 555C472.4 559.1 482.1 558.3 489.4 553C496.7 547.7 500.4 538.8 499 529.8L473.7 369.9L588.1 255.4C594.5 249 596.7 239.6 593.9 231C591.1 222.4 583.8 216.1 574.8 214.7L415 189.3L341.5 45.1z"/></svg>
				<p class="explore_txt">Bali</p>
				<img class="explore_img" src="/images/Bali.jpg" alt="Bali">
			</div>
			<div class="explore_card">
				<svg class="star-icon"xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 640"><path d="M341.5 45.1C337.4 37.1 329.1 32 320.1 32C311.1 32 302.8 37.1 298.7 45.1L225.1 189.3L65.2 214.7C56.3 216.1 48.9 222.4 46.1 231C43.3 239.6 45.6 249 51.9 255.4L166.3 369.9L141.1 529.8C139.7 538.7 143.4 547.7 150.7 553C158 558.3 167.6 559.1 175.7 555L320.1 481.6L464.4 555C472.4 559.1 482.1 558.3 489.4 553C496.7 547.7 500.4 538.8 499 529.8L473.7 369.9L588.1 255.4C594.5 249 596.7 239.6 593.9 231C591.1 222.4 583.8 216.1 574.8 214.7L415 189.3L341.5 45.1z"/></svg>
				<p class="explore_txt">Shibuya</p>
				<img class="explore_img" src="/images/Tokyo.jpg" alt="Tokyo">
			</div>
			<div class="explore_card">
				<svg class="star-icon"xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 640"><path d="M341.5 45.1C337.4 37.1 329.1 32 320.1 32C311.1 32 302.8 37.1 298.7 45.1L225.1 189.3L65.2 214.7C56.3 216.1 48.9 222.4 46.1 231C43.3 239.6 45.6 249 51.9 255.4L166.3 369.9L141.1 529.8C139.7 538.7 143.4 547.7 150.7 553C158 558.3 167.6 559.1 175.7 555L320.1 481.6L464.4 555C472.4 559.1 482.1 558.3 489.4 553C496.7 547.7 500.4 538.8 499 529.8L473.7 369.9L588.1 255.4C594.5 249 596.7 239.6 593.9 231C591.1 222.4 583.8 216.1 574.8 214.7L415 189.3L341.5 45.1z"/></svg>
				<p class="explore_txt">Busan</p>
				<img class="explore_img" src="/images/Busan.jpg" alt="Busan">
			</div>
			<div class="explore_card">
				<svg class="star-icon"xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 640"><path d="M341.5 45.1C337.4 37.1 329.1 32 320.1 32C311.1 32 302.8 37.1 298.7 45.1L225.1 189.3L65.2 214.7C56.3 216.1 48.9 222.4 46.1 231C43.3 239.6 45.6 249 51.9 255.4L166.3 369.9L141.1 529.8C139.7 538.7 143.4 547.7 150.7 553C158 558.3 167.6 559.1 175.7 555L320.1 481.6L464.4 555C472.4 559.1 482.1 558.3 489.4 553C496.7 547.7 500.4 538.8 499 529.8L473.7 369.9L588.1 255.4C594.5 249 596.7 239.6 593.9 231C591.1 222.4 583.8 216.1 574.8 214.7L415 189.3L341.5 45.1z"/></svg>
				<p class="explore_txt">Colosseum</p>
				<img class="explore_img" src="/images/Colosseum.jpg" alt="Colosseum">
			</div>
			<div class="explore_card">
				<svg class="star-icon"xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 640"><path d="M341.5 45.1C337.4 37.1 329.1 32 320.1 32C311.1 32 302.8 37.1 298.7 45.1L225.1 189.3L65.2 214.7C56.3 216.1 48.9 222.4 46.1 231C43.3 239.6 45.6 249 51.9 255.4L166.3 369.9L141.1 529.8C139.7 538.7 143.4 547.7 150.7 553C158 558.3 167.6 559.1 175.7 555L320.1 481.6L464.4 555C472.4 559.1 482.1 558.3 489.4 553C496.7 547.7 500.4 538.8 499 529.8L473.7 369.9L588.1 255.4C594.5 249 596.7 239.6 593.9 231C591.1 222.4 583.8 216.1 574.8 214.7L415 189.3L341.5 45.1z"/></svg>
				<p class="explore_txt">Dubai</p>
				<img class="explore_img" src="/images/Dubai.jpg" alt="Dubai">
			</div>
			<div class="explore_card">
				<svg class="star-icon"xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 640"><path d="M341.5 45.1C337.4 37.1 329.1 32 320.1 32C311.1 32 302.8 37.1 298.7 45.1L225.1 189.3L65.2 214.7C56.3 216.1 48.9 222.4 46.1 231C43.3 239.6 45.6 249 51.9 255.4L166.3 369.9L141.1 529.8C139.7 538.7 143.4 547.7 150.7 553C158 558.3 167.6 559.1 175.7 555L320.1 481.6L464.4 555C472.4 559.1 482.1 558.3 489.4 553C496.7 547.7 500.4 538.8 499 529.8L473.7 369.9L588.1 255.4C594.5 249 596.7 239.6 593.9 231C591.1 222.4 583.8 216.1 574.8 214.7L415 189.3L341.5 45.1z"/></svg>
				<p class="explore_txt">Sydney</p>
				<img class="explore_img" src="/images/Sydney.jpg" alt="Sydney">
			</div>
			<div class="explore_card">
				<svg class="star-icon"xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 640"><path d="M341.5 45.1C337.4 37.1 329.1 32 320.1 32C311.1 32 302.8 37.1 298.7 45.1L225.1 189.3L65.2 214.7C56.3 216.1 48.9 222.4 46.1 231C43.3 239.6 45.6 249 51.9 255.4L166.3 369.9L141.1 529.8C139.7 538.7 143.4 547.7 150.7 553C158 558.3 167.6 559.1 175.7 555L320.1 481.6L464.4 555C472.4 559.1 482.1 558.3 489.4 553C496.7 547.7 500.4 538.8 499 529.8L473.7 369.9L588.1 255.4C594.5 249 596.7 239.6 593.9 231C591.1 222.4 583.8 216.1 574.8 214.7L415 189.3L341.5 45.1z"/></svg>
				<p class="explore_txt">Grindelwald</p>
				<img class="explore_img" src="/images/Grindelwald.jpg" alt="Grindelwald">
			</div>
			<div class="explore_card">
				<svg class="star-icon"xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 640"><path d="M341.5 45.1C337.4 37.1 329.1 32 320.1 32C311.1 32 302.8 37.1 298.7 45.1L225.1 189.3L65.2 214.7C56.3 216.1 48.9 222.4 46.1 231C43.3 239.6 45.6 249 51.9 255.4L166.3 369.9L141.1 529.8C139.7 538.7 143.4 547.7 150.7 553C158 558.3 167.6 559.1 175.7 555L320.1 481.6L464.4 555C472.4 559.1 482.1 558.3 489.4 553C496.7 547.7 500.4 538.8 499 529.8L473.7 369.9L588.1 255.4C594.5 249 596.7 239.6 593.9 231C591.1 222.4 583.8 216.1 574.8 214.7L415 189.3L341.5 45.1z"/></svg>
				<p class="explore_txt">Raa Atoll</p>
				<img class="explore_img" src="/images/RaaAtoll.jpg" alt="Raa Atoll">
			</div>
			<div class="explore_card">
				<svg class="star-icon"xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 640"><path d="M341.5 45.1C337.4 37.1 329.1 32 320.1 32C311.1 32 302.8 37.1 298.7 45.1L225.1 189.3L65.2 214.7C56.3 216.1 48.9 222.4 46.1 231C43.3 239.6 45.6 249 51.9 255.4L166.3 369.9L141.1 529.8C139.7 538.7 143.4 547.7 150.7 553C158 558.3 167.6 559.1 175.7 555L320.1 481.6L464.4 555C472.4 559.1 482.1 558.3 489.4 553C496.7 547.7 500.4 538.8 499 529.8L473.7 369.9L588.1 255.4C594.5 249 596.7 239.6 593.9 231C591.1 222.4 583.8 216.1 574.8 214.7L415 189.3L341.5 45.1z"/></svg>
				<p class="explore_txt">Satorini</p>
				<img class="explore_img" src="/images/Satorini.jpg" alt="Satorini">
			</div>
			<div class="explore_card">
				<svg class="star-icon"xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 640"><path d="M341.5 45.1C337.4 37.1 329.1 32 320.1 32C311.1 32 302.8 37.1 298.7 45.1L225.1 189.3L65.2 214.7C56.3 216.1 48.9 222.4 46.1 231C43.3 239.6 45.6 249 51.9 255.4L166.3 369.9L141.1 529.8C139.7 538.7 143.4 547.7 150.7 553C158 558.3 167.6 559.1 175.7 555L320.1 481.6L464.4 555C472.4 559.1 482.1 558.3 489.4 553C496.7 547.7 500.4 538.8 499 529.8L473.7 369.9L588.1 255.4C594.5 249 596.7 239.6 593.9 231C591.1 222.4 583.8 216.1 574.8 214.7L415 189.3L341.5 45.1z"/></svg>
				<p class="explore_txt">Niagara Falls</p>
				<img class="explore_img" src="/images/NiagaraFalls.jpg" alt="Niagara Falls">
			</div>
			
			<!--  <button class="banner-btn">Book Now</button>   -->
			
		</div>
		
		
	</section>
	
	
	
	<!-- JAVASCRIPT -->
	<script>
	  document.querySelectorAll('.star-icon').forEach(star => {
	    star.addEventListener('click', (e) => {
	      e.stopPropagation();
	      star.classList.toggle('active');
	    });
	  });
	  
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