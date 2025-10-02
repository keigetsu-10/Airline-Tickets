<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<c:url value='/resources/css/format.css' />">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>A4Lifers Flight Booking | Transaction Completed</title>

<style> 
         

       

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

        label .required {
            color: #ff3131;
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
            <div class="step-number active">3</div>
            <span class="step-label">Personal Information</span>
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


    <!-- FORM -->
    <div class="form">
        <a href="#" class="return-link">← Return</a>
        <h1>Personal Information <span class="passenger-tag">(Passenger 1)</span></h1>

        <form action="${pageContext.request.contextPath}/confirmationInfo" method="POST">
            <div class="identi">IDENTIFICATION</div>

            <div class="form-row">
                <div class="form-group">
                    <label>First Name <span class="required">*</span></label>
                    <input type="text" name="firstName" value="${user.firstName}" placeholder=" First Name"/>
                </div>
                <div class="form-group">
                    <label>Last Name <span class="required">*</span></label>
                    <input type="text" name="lastName" value="${user.lastName}" placeholder=" Last Name"/>
                </div>
                <div class="form-group">
                    <label>Middle Name <span class="optional">(Optional)</span></label>
                    <input type="text" name="middleName" value="${user.middleName}" placeholder=" Middle Name"/>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label>Birth Date <span class="required">*</span></label>
                    <input type="date" name="birthDate" value="${user.birthDate}"/>
                </div>
                <div class="form-group">
                    <label>Nationality <span class="required">*</span></label>
                    <input type="text" name="nationality" value="${user.nationality}" placeholder=" Nationality"/>
                </div>
            </div>

            <div class="form-row two-col">
                <div class="form-group">
                    <label>Passport ID <span class="required">*</span></label>
                    <input type="text" name="passportId" value="${user.passportId}" placeholder=" Passport ID"/>
                </div>
            </div>

            <div class="section-title" style="margin-top: 30px;">CONTACT INFORMATION</div>
            <div class="form-row two-col">
                <div class="form-group">
                    <label>E-mail <span class="required">*</span></label>
                    <input type="email" name="email" value="${user.email}" placeholder=" Email"/>
                </div>
            </div>

            <div class="form-row two-col">
                <div class="form-group">
                    <label>Mobile Number <span class="required">*</span></label>
                    <input type="text" name="mobileNumber" value="${user.mobileNumber}" placeholder=" Mobile Number"/>
                </div>
            </div>

            <div class="section-title" style="margin-top: 30px;">SELECT YOUR SEAT #</div>
            <div class="form-row two-col">
                <div class="form-group">
                    <label>Seat # <span class="required">*</span></label>
                    <select name="seat">
                      <option value="">Seat # Selected</option>
                      <c:forEach var="seat" items="${seats}">
                      <option value="${seat}" <c:if test="${user.seat eq seat}">selected</c:if>>${seat}</option>
                       </c:forEach>
</select>
                </div>
            </div>

            <div class="button-container">
                <button type="submit" class="btn-confirm">Next</button>
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