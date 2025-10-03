<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>A4Lifers Flight Booking | Payment</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/format.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/Footer.css'/>">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/navbar.css">


<style>
        h1 {
            color: #1e3a5f;
            font-size: 28px;
            margin-bottom: 18px;
        }
         .section-title {
            color: black;
            font-size: 18px;
            font-weight: 600;
            margin-bottom:5px;
           
        }
        .button-container {
            display: flex;
            justify-content: flex-end;
            margin-top: 40px;
        }
        .btn-confirms {
            background-color:#c9c5c5;
            color: white;
            padding: 14px 50px;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
        }
        .section-title-two {
            color: #b4b4b4;
            font-size: 15px;
            font-weight: 600;
            
        }
        .btn-confirms:hover {
            background-color: #2d4a6f;
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

     
   <div class="progress-bar">
        <div class="step">
            <div class="step-number completed">1</div>
            <span class="step-label">Destination & Date</span>
        </div>
        <div class="step-connector"></div>
        
        <div class="step">
            <div class="step-number completed">2</div>
            <span class="step-label">Seat Map</span>
        </div>
        <div class="step-connector"></div>
        
        <div class="step">
            <div class="step-number completed">3</div>
            <span class="step-label">Personal Information</span>
        </div>
        <div class="step-connector"></div>
        
        <div class="step">
            <div class="step-number completed">4</div>
            <span class="step-label">Confirmation</span>
        </div>
        <div class="step-connector"></div>
        
        <div class="step">
            <div class="step-number completed">5</div>
            <span class="step-label">Payment</span>
        </div>
    </div>
    
    <div class="container">
        <div class="form">
            <a href="PaymentConfirmation" class="return-link">⮜  Return</a>
            
     
            <h1>Transaction Succesfully Completed</h1>
            
            
            <div class="section-title">You have successfully completed Transaction #</div>
            <div class="section-title-two">Your E-Ticket and Receipt has been sent to the e-mail address you have provided.</div>
             
             <form action="${pageContext.request.contextPath}/Home" method="POST">
               <div class="button-container">
                    <button type="submit" class="btn-confirm">Go to Home Page</button>
                </div>
                </form>
                 </div>
            
                        
                <div class="summary-section">
            <div class="summary-card">
                <h2>Transaction Summary</h2>
                
                <div class="summary-item">
                    <div class="summary-row">
                        <span class="summary-label">DEPARTURE</span>
                        <span class="summary-label">RETURN</span>
                    </div>
                    <div class="summary-row">
                        <span class="summary-value">${bookingDetails.departureDate}</span>
                        <span class="summary-value">${bookingDetails.returnDate}</span>
                    </div>
                </div>
                
                <div class="summary-item">
                    <div class="summary-row">
                        <span class="summary-label">DEPARTURE TIME</span>
                        <span class="summary-label">RETURN TIME</span>
                    </div>
                    <div class="summary-row">
                        <span class="summary-value">${bookingDetails.departureTime}</span>
                        <span class="summary-value">${bookingDetails.returnTime}</span>
                    </div>
                </div>
                
                <hr class="summary-divider">
                
                <div class="summary-item">
                    <div class="summary-label">PASSENGER DETAILS</div>
                    <div class="summary-value" style="margin-top: 5px;">${personalInfo.fullName}</div>
                    <div class="summary-value" style="margin-top: 5px;">${personalInfo.formattedBirthDate}</div>
                    <div class="summary-value" style="margin-top: 5px;">${personalInfo.nationality}</div>
                    <div class="summary-value" style="margin-top: 5px;">${personalInfo.passportId}</div>
                </div>
                
                <hr class="summary-divider">
                
                <div class="summary-item">
                    <div class="summary-row">
                        <div style="width: 100%;">
                            <div class="summary-label">FROM</div>
                            <div class="summary-value">${bookingDetails.from}</div>
                            <div class="summary-value" style="font-weight: 400; font-size: 12px;">${bookingDetails.fromTerminal}</div>
                            <div class="summary-value" style="margin-top: 5px;">${bookingDetails.flightClass}</div>
                        </div>
                        <div style="width: 100%; text-align: right;">
                            <div class="summary-label">DESTINATION</div>
                            <div class="summary-value">${bookingDetails.destination}</div>
                            <div class="summary-value" style="font-weight: 400; font-size: 12px;">${bookingDetails.destinationTerminal}</div>
                            <div class="summary-value" style="margin-top: 5px;">${bookingDetails.flightClass}</div>
                        </div>
                    </div>
                </div>
                
                <hr class="summary-divider">
                
                <div class="summary-item">
                    <div class="summary-row">
                        <div>
                            <div class="summary-label">SEAT #</div>
                            <div class="summary-value">${personalInfo.seatNumber}</div>
                        </div>
                        <div style="text-align: right;">
                            <div class="summary-label">BAGGAGE ALLOWANCE</div>
                            <div class="summary-value">${bookingDetails.baggageAllowance}</div>
                        </div>
                    </div>
                </div>
                
                <hr class="summary-divider">
                
                <div class="summary-item">
                    <div class="summary-label">ADD-ONS</div>
                    
                </div>
                <div class="button-container">
                    <button type="submit" class="btn-confirms">E-ticket and Receipt has been sent</button>
                </div>
                
                
            </div>
        </div>        
                    
                    
             </div>
             
       
<jsp:include page="Footer.jsp" />

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




