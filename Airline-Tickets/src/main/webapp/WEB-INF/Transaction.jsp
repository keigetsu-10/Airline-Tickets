<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>


    <c:if test="${empty user}">
    <c:set var="user" value="${sessionScope.user}" />
    </c:if>
    <c:if test="${empty bookingDetails}">
    <c:set var="bookingDetails" value="${sessionScope.bookingDetails}" />
    </c:if>
    <c:if test="${empty payment}">
    <c:set var="payment" value="${sessionScope.payment}" />
   </c:if>
    <c:if test="${empty personalInfo}">
    <c:set var="personalInfo" value="${sessionScope.personalInfo}" />
</c:if>

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
      .section-title-two { 
      color: #b4b4b4; 
      font-size: 15px; 
      font-weight: 600; 
      }
      .eticket-receipt {
        display: flex;
        justify-content: center;
        margin-top: 18px;
    }

        .section-title {
            color: #1e3a5f;
            font-size: 18px;
            font-weight: 600;
            margin-bottom: 15px;
        }

        .addon-options {
            margin-bottom: 30px;
        }

        .addon-item {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px 0;
        }

        .addon-label {
            display: flex;
            align-items: center;
            gap: 10px;
            
            font-weight: 400;
        }

        .addon-label input[type="checkbox"] {
            width: 20px;
            height: 20px;
            cursor: pointer;
        }

        .addon-price {
            color: #1e3a5f;
            font-weight: 500;
        }
               .payment-methods {
            margin-bottom: 30px;
        }

        .payment-method-options {
            display: flex;
            gap: 30px;
            margin-top: 15px;
        }

        .payment-option {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .payment-option input[type="radio"] {
            width: 20px;
            height: 20px;
            cursor: pointer;
        }

        .payment-option label {
            cursor: pointer;
            font-size: 15px;
            color: #1e3a5f;
        }

        .payment-fields {
            display: none;
            margin-top: 20px;
        }

        .payment-fields.active {
            display: block;
        }
     

        .form-row {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
            margin-bottom: 20px;
        }
         .form-rows {
            display: flex;
            grid-template-columns: repeat(2, 1fr);
            gap: 60px;
            margin-bottom: 20px;
        }

        .form-row.four-col {
        grid-template-columns: 1.5fr 1.5fr auto 0.9fr 0.9fr;
        align-items: end;
        gap: 12px; 
        }
        
        .form-row.four-col .form-group input,
        .form-row.four-col .form-group select {
        width: 100%;
        box-sizing: border-box;
        }
        
        .form-row.four-col .visa-logo {
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 8px 10px;
        font-size: 13px;
        color: #9ca3af;
        min-width: 48px;
       white-space: nowrap;
        }
        
        .form-row.four-col .form-group:nth-child(4) input,
        .form-row.four-col .form-group:nth-child(5) input {
        padding: 10px;
        font-size: 13px;
        }
        
        @media (max-width: 720px) {
        .form-row.four-col {
        grid-template-columns: 1fr;
       }
       
       .form-row.four-col .visa-logo {
       margin: 8px 0;
    }
}

        .form-row.three-col {
            grid-template-columns: 1fr 1fr 1fr;
        align-items: end;
        gap: 12px;
           
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }
   

        .form-group.full-width {
            grid-column: 1 / -1;
        }

        label {
            font-size: 14px;
            font-weight: 600;
            color: #1e3a5f;
            margin-bottom: 8px;
        }

        div .required {
            color: #ff3131;
        }

        input, select {
            padding: 12px;
            border: 1px solid #d1d5db;
            border-radius: 6px;
            font-size: 14px;
            font-family: inherit;
        }

        input:focus, select:focus {
            outline: none;
            border-color: #5a7a94;
        }

        input::placeholder {
            color: #d1d5db;
        }

        .visa-logo {
            color: #9ca3af;
            font-size: 12px;
            text-align: center;
            padding: 12px;
        }
        .checkbox {
        margin-top: 15px;
        font-size: 14px;
    }
    .summary-price {
        display: flex;
        justify-content: space-between;
        margin: 6px 0;
    }
    .discount {
        color: #ff3131;
    }
    .summary-price discount {
        color: #c4cbd8;
    }
    .total-price {
        font-weight: bold;
        color: #00bf63;
        display: flex;
        justify-content: space-between;
        margin: 6px 0;
        font-size:20px;
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
        
        <h1>Transaction Successfully Completed</h1>
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
    <div class="summary-value" style="margin-top: 5px;">
        <c:choose>
            <c:when test="${not empty payment.option1 && not empty payment.option2}">
                Extra Baggage<br/>Travel Insurance
            </c:when>
            <c:when test="${not empty payment.option1}">
                Extra Baggage
            </c:when>
            <c:when test="${not empty payment.option2}">
                Travel Insurance
            </c:when>
            <c:otherwise>
                None
            </c:otherwise>
        </c:choose>
    </div>
</div>
            <hr class="summary-divider"/>
            <div class="summary-item">
                <h3 style="color: #1e3a5f; font-size: 16px; margin-bottom: 15px;">Your Price Summary</h3>
                <div class="summary-row">
                    <span style="font-size: 14px;">Travel Fare:</span>
                    <span>${bookingDetails.travelFare}</span>
                </div>
                <div class="summary-row">
                    <span style="font-size: 14px;">12% VAT:</span>
                    <span>${bookingDetails.vat}</span>
                </div>
                <div class="total-row">
                    <span class="total-label">Total Price</span>
                    <span class="total-value">${bookingDetails.totalPrice}</span>
                </div>
            </div>
            <div class="eticket-receipt">
                <button type="button" class="btn-confirms" disabled>E-ticket and Receipt has been sent</button>
            </div>
        </div>
    </div>
</div>
<jsp:include page="Footer.jsp" />
<script>
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
</script>
</body>
</html>