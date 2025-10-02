<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>A4Lifers Flight Booking |Booking Details</title>
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
            border-radius: 10%;
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
		.container {
            display: flex;
            gap: 30px;
            padding: 30px 50px;
            max-width: 1400px;
            margin: 0 auto;
        }

        .form {
            flex: 2;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
         .return-link {
            display: flex;
            align-items: center;
            font-weight: bold;
            gap: 5px;
            color: #5a7a94;
            text-decoration: none;
            margin-bottom: 20px;
            font-size: 14px;
        }

        h1 {
            color: #1e3a5f;
            font-size: 28px;
            margin-bottom: 10px;
        }
        .passenger-tag {
            color: #9ca3af;
            font-size: 20px;
            margin-bottom: 30px;
        }
         .section-title {
            color: #c4cbd8;
            font-size: 12px;
            font-weight: 600;
            letter-spacing: 1px;
            margin-bottom: 20px;
            text-transform: uppercase;
        }
        .identi {
            color: #c4cbd8;
            font-size: 12px;
            font-weight: 600;
            letter-spacing: 1px;
            margin-bottom: 20px;
            text-transform: uppercase;
        }
        .form-row {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            margin-bottom: 20px;
        }

        .form-row.two-col {
            grid-template-columns: repeat(2, 1fr);
        }

        .form-row.single-col {
            grid-template-columns: 1fr;
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        label {
            font-size: 14px;
            font-weight: 600;
            color: #1e3a5f;
            margin-bottom: 8px;
        }
        label .optional {
            color: #b4b4b4;
            font-weight: 400;
            font-style: italic;
        }
        input, select {
            padding: 12px;
            border: 1px solid #d1d5db;
            border-radius: 10px;
            width: 240px;
            font-size: 10px;
            font-family: inherit;
        }

        input:focus, select:focus {
            outline: none;
            border-color: #5a7a94;
        }

        input::placeholder {
            font-size: 12px;
            color: #c8c4c4;
        }
        .button-container {
            display: flex;
            justify-content: flex-end;
            margin-top: 30px;
        }
        .btn-next {
            background-color: #1e3a5f;
            color: white;
            padding: 14px 50px;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
        }
        .btn-next a {
            text-decoration: none;
            color: white;
        }

        .btn-next:hover {
            background-color: #2d4a6f;
        }
        .summary-section {
            flex: 1;
            align-self: flex-start;
        }

        .summary-card {
            background-color: white;
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        .summary-card h2 {
            color: #1e3a5f;
            font-size: 20px;
            margin-bottom: 20px;
        }

        .summary-item {
            margin-bottom: 20px;
        }

        .summary-row {
            display: flex;
            justify-content: space-between;
            margin-bottom: 5px;
        }

        .summary-label {
            font-size: 12px;
            color: #6b7280;
            text-transform: uppercase;
            font-weight: 600;
        }

        .summary-value {
            font-size: 14px;
            color: #1e3a5f;
            font-weight: 600;
        }

        .summary-divider {
            border: none;
            border-top: 1px solid #e5e7eb;
            margin: 15px 0;
        }
        .total-label {
            font-weight: 700;
            color: #00bf63;
            font-size: 18px;
        }

        .total-value {
            font-weight: 700;
            color: #00bf63;
            font-size: 18px;
        }
        input[type="date"] {
          text-transform: uppercase; 
          letter-spacing: 1px;
          color: #889bbd;
        }

    </style>
</head>
<body>
<nav class="navbar">
      <div class="nav-center">
        <ul class="nav-links">
          <li><a href="#header">Home</a></li>
          <li><a href="#explore">Explore</a></li>
          <li><a href="/Book">Bookings</a></li>
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
            <div class="step-number active">1</div>
            <span class="step-label">Destination & Date</span>
        </div>
        <div class="step-connector inactive"></div>
        
        <div class="step">
            <div class="step-number inactive">2</div>
            <span class="step-label inactive">Seat Map</span>
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
    
<div class="container">    
    <div class="form">
        <a href="#" class="return-link">← Return</a>
        <h1>Booking Details</h1>
            <div class="identi">FLIGHT DETAILS</div>

            <div class="form-row">
                <div class="form-group">
                    <label>From</label>
                    <input type="text" name="from"  placeholder="From"/>
                </div>
                <div class="form-group">
                    <label>Destination</label>
                    <input type="text" name="destination"  placeholder="Destination"/>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label>Departure Date</label>
                    <input type="date" name="Date" placeholder="Departure Date"/>
                </div>
                <div class="form-group">
                    <label>Departure Time</label>
                    <input type="text" name="time" placeholder="Departure Time"/>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label>Return Date</label>
                    <input type="date" name="returndate" placeholder="Return Date"/>
                </div>
                <div class="form-group">
                    <label>Return Time</label>
                    <input type="date" name="returntime" placeholder="Return Time"/>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label>Airlines</label>
                    <input type="email" name="email" value="${user.email}" placeholder="Airlines"/>
                </div>
                 <div class="form-group">
                    <label>Flight Class</label>
                    <input type="text" name="mobileNumber" value="${user.mobileNumber}" placeholder="Flight Class"/>
                </div>
            </div>
            
            <div class="form-row two-col">
                <div class="form-group">
                    <label>Baggage Allowance</label>
                    <input type="text" name="baggaegallowance" value="${user.mobileNumber}" placeholder="Baggage Allowance"/>
                </div>
            </div>
			<form>
            <div class="button-container">
               <button type="submit" class="btn-next"><a href="/SeatMap">Next</a></button>
            </div>
        </form>
    </div>
    
    
    
    
     <!-- SUMMARY -->
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
                
            <hr class="summary-divider"/>
            
           

            <div class="summary-item">
                <div class="summary-label">PASSENGER DETAILS</div>
                <div class="summary-value" style="margin-top: 5px;">${user.firstName} ${user.middleName} ${user.lastName}</div>
                <div class="summary-value" style="margin-top: 5px;">${user.birthDate}</div>
                <div class="summary-value" style="margin-top: 5px;">${user.nationality}</div>
                <div class="summary-value" style="margin-top: 5px;">${user.passportId}</div>
            </div>

            <hr class="summary-divider"/>

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

            <hr class="summary-divider"/>

            <div class="summary-item">
                <div class="summary-row">
                    <div>
                        <div class="summary-label">SEAT #</div>
                        <div class="summary-value">${user.seat}</div>
                    </div>
                    <div style="text-align: right;">
                        <div class="summary-label">BAGGAGE ALLOWANCE</div>
                        <div class="summary-value">${bookingDetails.baggageAllowance}</div>
                    </div>
                </div>
            </div>

            <hr class="summary-divider"/>

            <div class="summary-item">
                <div class="summary-label">ADD-ONS</div>
                
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
        </div>
    </div>
 </div>   
</body>
</html>