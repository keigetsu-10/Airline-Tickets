<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    
    <title>Confirmation - Flight Booking</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #ededed;
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

        .container {
            display: flex;
            gap: 30px;
            padding: 30px 50px;
            max-width: 1400px;
            margin: 0 auto;
        }

        .confirmation-section {
            flex: 2;
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        .return-link {
            display: flex;
            align-items: center;
            gap: 5px;
            color: #5a7a94;
            text-decoration: none;
            margin-bottom: 20px;
            font-size: 14px;
        }

        h1 {
            color: #1e3a5f;
            font-size: 28px;
            margin-bottom: 30px;
        }

        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 15px;
        }

        .section-tag {
            color: #9ca3af;
            font-size: 12px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .section-title {
            color: #1e3a5f;
            font-size: 20px;
            font-weight: 600;
        }

        .edit-link {
            color: #5a7a94;
            text-decoration: none;
            font-size: 14px;
            font-weight: 500;
        }

        .edit-link:hover {
            text-decoration: underline;
        }

        .info-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            margin-bottom: 30px;
        }

        .info-item {
            display: flex;
            flex-direction: column;
        }

        .info-label {
            font-size: 13px;
            color: #6b7280;
            margin-bottom: 5px;
        }

        .info-value {
            font-size: 15px;
            color: #1e3a5f;
            font-weight: 600;
        }

        .divider {
            border: none;
            border-top: 1px solid #e5e7eb;
            margin: 30px 0;
        }

        .booking-section {
            margin-top: 30px;
        }

        .booking-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 30px;
        }

        .booking-column {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .booking-item {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
        }

        .booking-label {
            font-size: 14px;
            color: #1e3a5f;
            font-weight: 600;
        }

        .booking-value {
            font-size: 14px;
            color: #1e3a5f;
            text-align: right;
        }

        .button-container {
            display: flex;
            justify-content: flex-end;
            margin-top: 30px;
        }

        .btn-confirm {
            background-color: #1e3a5f;
            color: white;
            padding: 14px 50px;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
        }

        .btn-confirm:hover {
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

        .total-row {
            display: flex;
            justify-content: space-between;
            margin-top: 15px;
            padding-top: 15px;
            border-top: 2px solid #e5e7eb;
        }

        .total-label {
            font-weight: 700;
            color: #1e3a5f;
        }

        .total-value {
            font-weight: 700;
            color: #10b981;
            font-size: 18px;
        }
    </style>
</head>
<body>
    
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
            <div class="step-number active">4</div>
            <span class="step-label">Confirmation</span>
        </div>
        <div class="step-connector inactive"></div>
        
        <div class="step">
            <div class="step-number inactive">5</div>
            <span class="step-label inactive">Payment</span>
        </div>
    </div>

    <div class="container">
        <div class="confirmation-section">
            <a href="#" class="return-link">← Return</a>
            
            <h1>Confirmation</h1>
            
            <div class="section-tag">(PASSENGER 1)</div>
            
            <div class="section-header" style="margin-top: 20px;">
                <h2 class="section-title">Personal Information</h2>
                <a href="${pageContext.request.contextPath}/booking/personal-info" class="edit-link">Edit</a>
            </div>
            
            <div style="margin-bottom: 25px;">
                <h3 style="color: #6b7280; font-size: 14px; margin-bottom: 15px;">Passenger Details</h3>
                
                <div class="info-grid">
                    <div class="info-item">
                        <span class="info-label">First Name</span>
                        <span class="info-value">${personalInfo.firstName}</span>
                    </div>
                    
                    <div class="info-item">
                        <span class="info-label">Last Name</span>
                        <span class="info-value">${personalInfo.lastName}</span>
                    </div>
                    
                    <div class="info-item">
                        <span class="info-label">Middle Name</span>
                        <span class="info-value">${not empty personalInfo.middleName ? personalInfo.middleName : 'N/A'}</span>
                    </div>
                    
                    <div class="info-item">
                        <span class="info-label">Birth Date</span>
                        <span class="info-value">${personalInfo.formattedBirthDate}</span>
                    </div>
                    
                    <div class="info-item">
                        <span class="info-label">Nationality</span>
                        <span class="info-value">${personalInfo.nationality}</span>
                    </div>
                    
                    <div class="info-item">
                        <span class="info-label">Passport ID</span>
                        <span class="info-value">${personalInfo.passportId}</span>
                    </div>
                </div>
            </div>
            
            <div style="margin-bottom: 25px;">
                <h3 style="color: #6b7280; font-size: 14px; margin-bottom: 15px;">Contact Information</h3>
                
                <div class="info-grid">
                    <div class="info-item">
                        <span class="info-label">Email</span>
                        <span class="info-value">${personalInfo.email}</span>
                    </div>
                    
                    <div class="info-item">
                        <span class="info-label">Mobile Number</span>
                        <span class="info-value">${personalInfo.mobileNumber}</span>
                    </div>
                    
                    <div class="info-item">
                        <span class="info-label">Seat #</span>
                        <span class="info-value">${personalInfo.seatNumber}</span>
                    </div>
                </div>
            </div>
            
            <hr class="divider">
            
            <div class="booking-section">
                <h2 class="section-title" style="margin-bottom: 20px;">Booking Details</h2>
                
                <div class="booking-grid">
                    <div class="booking-column">
                        <div class="booking-item">
                            <span class="booking-label">From</span>
                            <span class="booking-value">${bookingDetails.from}</span>
                        </div>
                        
                        <div class="booking-item">
                            <span class="booking-label">Departure Date</span>
                            <span class="booking-value">${bookingDetails.departureDate}</span>
                        </div>
                        
                        <div class="booking-item">
                            <span class="booking-label">Departure Time</span>
                            <span class="booking-value">${bookingDetails.departureTime}</span>
                        </div>
                        
                        <div class="booking-item">
                            <span class="booking-label">Airlines</span>
                            <span class="booking-value">${bookingDetails.airlines}</span>
                        </div>
                        
                        <div class="booking-item">
                            <span class="booking-label">Baggage Allowance</span>
                            <span class="booking-value">${bookingDetails.baggageAllowance}</span>
                        </div>
                    </div>
                    
                    <div class="booking-column">
                        <div class="booking-item">
                            <span class="booking-label">Destination</span>
                            <span class="booking-value">${bookingDetails.destination}</span>
                        </div>
                        
                        <div class="booking-item">
                            <span class="booking-label">Return Date</span>
                            <span class="booking-value">${bookingDetails.returnDate}</span>
                        </div>
                        
                        <div class="booking-item">
                            <span class="booking-label">Return Time</span>
                            <span class="booking-value">${bookingDetails.returnTime}</span>
                        </div>
                        
                        <div class="booking-item">
                            <span class="booking-label">Flight Class</span>
                            <span class="booking-value">${bookingDetails.flightClass}</span>
                        </div>
                    </div>
                </div>
            </div>
            
            <form action="${pageContext.request.contextPath}/booking/confirm" method="post">
                <div class="button-container">
                    <button type="submit" class="btn-confirm">Confirm</button>
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
                
                <hr class="summary-divider">
                
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