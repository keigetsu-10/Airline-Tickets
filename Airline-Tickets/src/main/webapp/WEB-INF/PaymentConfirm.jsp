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
            margin-bottom: 30px;
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
    .promo {
        display: flex;
        gap: 5px;
        margin-top: 8px;
        
    }
    .promo input {
        flex: 1;
        padding: 2px;
        width: 120px;
      
    }
    .promo button {
        padding: 5px 5px;
        background: #112e50;
        font-size: 13px;
        color: white;
        border: none;
        border-radius: 3px;
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
            <div class="step-number active">5</div>
            <span class="step-label">Payment</span>
        </div>
    </div>
    
    <div class="container">
        <div class="form">
            <a href="/ConfirmInfo" class="return-link">⮜  Return</a>
            
            <h1>Payment Confirmation</h1>
                
                
                <div class="addon-options">
                    <div class="section-title">Add-on Options</div>
                    
                    <div class="addon-item">
                        <div class="addon-label">
                            <input type="checkbox" name="option1" value="value1"> Extra Baggage </input>
                        </div>
                        <span class="addon-price">+ Php 400.00</span>
                    </div>
                    
                    <div class="addon-item">
                        <div class="addon-label">
                            <input type="checkbox" name="option2" value="value2"> Travel Insurance </input>
                        </div>
                        <span class="addon-price">+ Php 3,500.00</span>
                    </div>
                </div>
               
               
               <div class="payment-methods">
                    <div class="section-title">Payment Method <span class="required">*</span></div>
                    
                </div>
               
     
    <div class="form-rows">
        <label><input type="radio" name="paymentMethod" value="credit-card" onclick="togglePaymentFields()" 
            ${payment.paymentMethod == 'credit-card' ? 'checked' : ''}> Credit Card</label>
        <label><input type="radio" name="paymentMethod" value="bank-transfer" onclick="togglePaymentFields()" 
            ${payment.paymentMethod == 'bank-transfer' ? 'checked' : ''}> Bank Transfer</label>
    </div>

    
    <div id="creditCardFields" class="payment-fields ${payment.paymentMethod == 'credit-card' ? 'active' : ''}">
        <div class="form-row four-col">
                            <div class="form-group">
                                <label>Cardholder Name <span class="required">*</span></label>
                                <input type="text" name="cardName" value="${user.cardName}" placeholder=" Cardholder Name"/>
                                
                            </div>
                            
                            <div class="form-group">
                                <label>Card Number <span class="required">*</span></label>
                                <input type="text" name="cardNum" value="${user.cardNum}" placeholder=" Card Number "/>
                                
                            </div>
                            
                            <div class="visa-logo">VISA</div>
                            
                            <div class="form-group">
                                <label>Expiration Date <span class="required">*</span></label>
                                <input type="text" name="expiDate" value="${user.expiDate}" placeholder=" Expiration Date "/>
                                
                            </div>
                            
                            <div class="form-group">
                                <label>CVV <span class="required">*</span></label>
                                <input type="text" name="cvvNum" value="${user.cvvNum}" placeholder=" CVV "/>
                            </div>
                        </div>
                      </div>

    <div id="bankTransferFields" class="payment-fields ${payment.paymentMethod == 'bank-transfer' ? 'active' : ''}">
         <div class="form-row">
              <div class="form-group">
                            <label>Account Holder Name <span class="required">*</span></label>
                             <input type="text" name="accName" value="${user.accName}" placeholder=" Account Holder Name"/>
                                
                            </div>
                            
                            <div class="form-group">
                                <label>Account Number <span class="required">*</span></label>
                                <input type="text" name="accNum" value="${user.accNum}" placeholder=" Account Number "/>
                                
                            </div>
                            <div class="form-group">
                                <label>Bank Name <span class="required">*</span></label>
                                <input type="text" name="bankName" value="${user.bankName}" placeholder=" Bank Name "/>
                            </div>
                            
                            <div class="form-group">
                                <label>SWIFT/BIC <span class="required">*</span></label>
                                <input type="text" name="swiftBic" value="${user.swiftBic}" placeholder=" SWIFT/BIC "/>
                                
                        </div>
                    </div>
                 </div>
                

<script>
function togglePaymentFields() {
    const selected = document.querySelector('input[name="paymentMethod"]:checked').value;
    document.getElementById("creditCardFields").style.display = (selected === "credit-card") ? "block" : "none";
    document.getElementById("bankTransferFields").style.display = (selected === "bank-transfer") ? "block" : "none";
}


window.onload = togglePaymentFields;
</script>
        <div style="margin-top: 30px;">
                    <div class="section-title">Billing Information</div>
                    
                    <div class="form-row three-col">
                        <div class="form-group">
                            <label>Full Name <span class="required">*</span></label>
                            <input type="text" name="fullName" value="${user.fullName}" placeholder=" Full Name"/>
                        </div>
                        
                        <div class="form-group">
                            <label>Email Address <span class="required">*</span></label>
                            <input type="email" name="email" value="${user.email}" placeholder=" Email "/>
                            
                        </div>
                        
                        <div class="form-group">
                            <label>Phone Number <span class="required">*</span></label>
                            <input type="text" name="phoneNum" value="${user.phoneNum}" placeholder=" Phone Number"/>
                            
                        </div>
                    </div>
                </div>
                
                <div style="margin-top: 30px;">
                    
                    <div class="form-row three-col">
                        <div class="form-group">
                            <label>Billing Address <span class="required">*</span></label>
                            <input type="text" name="billAdd" value="${user.billAdd}" placeholder=" Address 1"/>
                        </div>
                        
                        <div class="form-group">
                            <input type="text" name="city" value="${user.city}" placeholder=" City "/>
                            
                        </div>
                        
                        <div class="form-group">
                            <input type="text" name="province" value="${user.province}" placeholder=" Province "/>
                            
                        </div>
                    </div>
                </div>
                
                
                
                <div style="margin-top: 30px;">
                    <div class="section-title">E-ticket mailing address</div>
                    <div class="form-group">
                            <label>Email Address <span class="required">*</span></label>
                            <input type="email" name="email" value="${user.email}" placeholder=" Email "/>
                        </div>      
               </div>
               
               <div style="margin-top: 30px;">
               <div class="right-panel">
        <div class="price-summary">
            <h3>Your Price Summary</h3>
            <div class="summary-price"><span>Travel Fare:</span><strong>----</strong></div>
            <div class="summary-price"><span>12% VAT:</span><strong>----</strong></div>
            <div class="summary-price"><span>Add-ons:</span><strong>----</strong></div>
            <div class="summary-price discount"><span>Discount:</span><strong>--- &nbsp; ----</strong></div>
            <div class="summary-price"><span>Promo Code:</span>
                <div class="promo">
                    <input type="text" placeholder="Code">
                    <button type="button">Apply</button>
                </div>
            </div>
            <div class="total-price"><span> Total Price:</span><span>-----</span> </div>
        </div>
    </div> </div>

               
               <div class="checkbox">
                 <input type="checkbox" name="agree" required> 
              I agree to the <a href="#">Terms and Conditions</a>, <a href="#">Privacy Policy</a>, and understand that my booking is subject to airline policies and cancellation rules.
              </div>
      
            <form action="${pageContext.request.contextPath}/TransactionSuccesful" method="POST">
               <div class="button-container">
                    <button type="submit" class="btn-confirm">Confirm and Pay</button>
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