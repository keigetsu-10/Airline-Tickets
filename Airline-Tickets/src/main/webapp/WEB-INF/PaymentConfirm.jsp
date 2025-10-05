<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>A4Lifers Flight Booking | Payment Confirmation</title>
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
<%-- Use session values if not present --%>
<c:if test="${empty user}">
    <c:set var="user" value="${sessionScope.user}" />
</c:if>
<c:if test="${empty bookingDetails}">
    <c:set var="bookingDetails" value="${sessionScope.bookingDetails}" />
</c:if>
<c:if test="${empty payment}">
    <c:set var="payment" value="${sessionScope.payment}" />
</c:if>

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
        <a href="/Payment" class="return-link">⮜  Return</a>
        <h1>Payment Confirmation</h1>
        <form action="${pageContext.request.contextPath}/TransactionSuccesful" method="POST">
        <div class="addon-options">
            <div class="section-title">Add-on Options</div>
            <div class="addon-item">
    <div class="addon-label">
        <input type="checkbox" disabled
    <c:if test="${payment.option1 == 'value1'}">checked</c:if>
> Extra Baggage
<input type="hidden" name="option1" value="${payment.option1}">
    </div>
    <span class="addon-price">+ Php 400.00</span>
</div>
<div class="addon-item">
    <div class="addon-label">
        <input type="checkbox" disabled
    <c:if test="${payment.option2 == 'value2'}">checked</c:if>
> Travel Insurance
<input type="hidden" name="option2" value="${payment.option2}">
    </div>
    <span class="addon-price">+ Php 3,500.00</span>
</div>
        </div>
        
        <div class="payment-methods">
            <div class="section-title">Payment Method <span class="required">*</span></div>
            <div class="form-rows">
                <label>
                    <input type="radio" name="paymentMethod" value="credit-card" disabled 
                        <c:if test="${payment.paymentMethod == 'credit-card'}">checked</c:if> > Credit Card
                </label>
                <label>
                    <input type="radio" name="paymentMethod" value="bank-transfer" disabled 
                        <c:if test="${payment.paymentMethod == 'bank-transfer'}">checked</c:if> > Bank Transfer
                </label>
            </div>
        </div>

        <div id="creditCardFields" class="payment-fields <c:if test='${payment.paymentMethod == "credit-card"}'>active</c:if>">
            <div class="form-row four-col">
                <div class="form-group">
                    <label>Cardholder Name</label>
                    <input type="text" name="cardName" value="${payment.cardName}" placeholder=" Cardholder Name" maxlength="50" disabled>
                </div>
                <div class="form-group">
                    <label>Card Number</label>
                    <input type="text" name="cardNum" value="${payment.cardNum}" placeholder=" Card Number" maxlength="16" disabled>
                </div>
                <div class="visa-logo">${payment.cardType}</div>
                <div class="form-group">
                    <label>Expiration Date</label>
                    <input type="text" name="expiDate" value="${payment.expiDate}" placeholder=" Expiration Date " disabled>
                </div>
                <div class="form-group">
                    <label>CVV</label>
                    <input type="text" name="cvvNum" value="${payment.cvvNum}" placeholder=" CVV " disabled>
                </div>
            </div>
        </div>

        <div id="bankTransferFields" class="payment-fields <c:if test='${payment.paymentMethod == "bank-transfer"}'>active</c:if>">
            <div class="form-row">
                <div class="form-group">
                    <label>Account Holder Name</label>
                    <input type="text" name="accName" value="${payment.accName}" placeholder=" Account Holder Name" disabled>
                </div>
                <div class="form-group">
                    <label>Account Number</label>
                    <input type="text" name="accNum" value="${payment.accNum}" placeholder=" Account Number " disabled>
                </div>
                <div class="form-group">
                    <label>Bank Name</label>
                    <input type="text" name="bankName" value="${payment.bankName}" placeholder=" Bank Name " disabled>
                </div>
                <div class="form-group">
                    <label>SWIFT/BIC</label>
                    <input type="text" name="swiftBic" value="${payment.swiftBic}" placeholder=" SWIFT/BIC " disabled>
                </div>
            </div>
        </div>

        <div style="margin-top: 30px;">
            <div class="section-title">Billing Information</div>
            <div class="form-row three-col">
                <div class="form-group">
                    <label>Full Name</label>
                    <input type="text" name="fullName" value="${payment.fullName}" disabled>
                </div>
                <div class="form-group">
                    <label>Email Address</label>
                    <input type="email" name="email" value="${payment.email}" disabled>
                </div>
                <div class="form-group">
                    <label>Phone Number</label>
                    <input type="text" name="phoneNum" value="${payment.phoneNum}" disabled>
                </div>
            </div>
        </div>
        <div style="margin-top: 30px;">
            <div class="form-row three-col">
                <div class="form-group">
                    <label>Billing Address</label>
                    <input type="text" name="billAdd" value="${payment.billAdd}" disabled>
                </div>
                <div class="form-group">
                    <input type="text" name="city" value="${payment.city}" disabled>
                </div>
                <div class="form-group">
                    <input type="text" name="province" value="${payment.province}" disabled>
                </div>
            </div>
        </div>
        <div style="margin-top: 30px;">
            <div class="section-title">E-ticket mailing address</div>
            <div class="form-group">
                <label>Email Address</label>
                <input type="email" name="email" value="${payment.email}">
            </div>      
        </div>
        <div class="checkbox">
            <input type="checkbox" name="agree" required > 
            I agree to the <a href="#">Terms and Conditions</a>, <a href="#">Privacy Policy</a>.
        </div>
        <div class="right-panel">
    <div class="price-summary">
    <div style="margin-top: 30px;">
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
    </div>
</div>
        
            <div class="button-container">
                <button type="submit" class="btn-confirm">Confirm and Pay</button>
            </div>
        </form>
    </div>       

    <!-- TRANSACTION SUMMARY -->
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
                <div class="summary-value" style="margin-top: 5px;">
                    ${user.firstName} <c:if test="${not empty user.middleName}">${user.middleName} </c:if>${user.lastName}
                </div>
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
                        <div class="summary-value">${not empty user.seat ? user.seat : 'N/A'}</div>
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
    <div class="summary-value" style="margin-top: 5px;">
        <c:choose>
            <c:when test="${payment.option1 == 'value1' && payment.option2 == 'value2'}">
                Extra Baggage<br/>Travel Insurance
            </c:when>
            <c:when test="${payment.option1 == 'value1'}">
                Extra Baggage
            </c:when>
            <c:when test="${payment.option2 == 'value2'}">
                Travel Insurance
            </c:when>
            <c:otherwise>
                None
            </c:otherwise>
        </c:choose>
    </div>
</div>

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
document.addEventListener("DOMContentLoaded", () => {
    // Show only the relevant payment fields
    function togglePaymentFields() {
        const cc = document.getElementById("creditCardFields");
        const bank = document.getElementById("bankTransferFields");
        if ("${payment.paymentMethod}" === "credit-card") {
            cc.classList.add("active");
            bank.classList.remove("active");
        } else if ("${payment.paymentMethod}" === "bank-transfer") {
            bank.classList.add("active");
            cc.classList.remove("active");
        } else {
            cc.classList.remove("active");
            bank.classList.remove("active");
        }
    }
    togglePaymentFields();

    // Navbar code unchanged
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