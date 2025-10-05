<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>

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
            display: none !important;
            margin-top: 20px;
        }

        .payment-fields.active {
            display: block !important;
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
        align-items: start;
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
        margin-top: 30px;
        }
        
        .form-row.four-col .form-group:nth-child(4) input,
        .form-row.four-col .form-group:nth-child(5) input {
        padding: 12px;
        font-size: 14px;
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
        
        .form-group input,
        .form-group select {
            margin-bottom: 0px;
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

        .error-message {
            color: #dc2626;
            font-size: 12px;
            margin-top: 1px;
            min-height: 18px;
            visibility: hidden;
            display: block;
        }

        .error-message.show {
            visibility: visible;
        }

        input.error, select.error {
            border-color: #dc2626;
            background-color: #fef2f2;
        }

        input.valid {
            border-color: #10b981;
        }

        .char-counter {
            font-size: 11px;
            color: #6b7280;
            margin-top: 0px;
            text-align: right;
            min-height: 16px;
            display: block;
        }
        
        .char-counter:empty::before {
            content: '\00a0';
        }

        .char-counter.warning {
            color: #f59e0b;
        }

        .char-counter.error {
            color: #dc2626;
        }


</style>


</head>
<body>

<%-- Ensure latest info is available in model --%>
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
        <a href="/ConfirmInfo" class="return-link"> ⮜  Return</a>
        <h1>Payment</h1>
        <form id="paymentForm" action="${pageContext.request.contextPath}/PaymentConfirmation" method="POST">
        
       <div class="addon-options">
    <div class="section-title">Add-on Options</div>
    <div class="addon-item">
        <div class="addon-label">
            <input type="checkbox" name="option1" value="value1"
            <c:if test="${payment.option1 == 'value1'}">checked</c:if>
            > Extra Baggage
        </div>
        <span class="addon-price">+ Php 400.00</span>
    </div>
    <div class="addon-item">
        <div class="addon-label">
            <input type="checkbox" name="option2" value="value2"
            <c:if test="${payment.option2 == 'value2'}">checked</c:if>
            > Travel Insurance
        </div>
        <span class="addon-price">+ Php 3,500.00</span>
    </div>
</div>
        <div class="payment-methods">
            <div class="section-title">Payment Method <span class="required">*</span></div>
        </div>

        <!-- PAYMENT FORM -->
        
            <div class="form-rows">
                <label>
                    <input type="radio" name="paymentMethod" value="credit-card" onclick="togglePaymentFields()" 
                        <c:if test="${payment.paymentMethod == 'credit-card'}">checked</c:if> > Credit Card
                </label>
                <label>
                    <input type="radio" name="paymentMethod" value="bank-transfer" onclick="togglePaymentFields()" 
                        <c:if test="${payment.paymentMethod == 'bank-transfer'}">checked</c:if> > Bank Transfer
                </label>
            </div>

            <!-- Credit Card Fields -->
            <div id="creditCardFields" class="payment-fields <c:if test='${payment.paymentMethod == "credit-card"}'>active</c:if>">
                <div class="form-row four-col">
                    <div class="form-group">
                        <label>Cardholder Name <span class="required">*</span></label>
                        <input type="text" id="cardName" name="cardName" value="${payment.cardName}" placeholder=" Cardholder Name" maxlength="50">
                        <span class="error-message" id="cardNameError">Cardholder name is required</span>
                    </div>
                    <div class="form-group">
                        <label>Card Number <span class="required">*</span></label>
                        <input type="text" id="cardNum" name="cardNum" value="${payment.cardNum}" placeholder=" Card Number" maxlength="16">
                        <span class="error-message" id="cardNumError">Card number is required</span>
                    </div>
                    <div class="visa-logo" id="cardTypeLogo">VISA</div>
                    <div class="form-group">
                        <label>Expiration Date <span class="required">*</span></label>
                        <input type="text" id="expiDate" name="expiDate" value="${payment.expiDate}" placeholder=" MM/YY" maxlength="5">
                        <span class="error-message" id="expiDateError">Format must be MM/YY</span>
                    </div>
                    <div class="form-group">
                        <label>CVV <span class="required">*</span></label>
                        <input type="text" id="cvvNum" name="cvvNum" value="${payment.cvvNum}" placeholder=" CVV" maxlength="4">
                        <span class="error-message" id="cvvNumError">CVV is required</span>
                    </div>
                </div>
            </div>

            <!-- Bank Transfer Fields -->
            <div id="bankTransferFields" class="payment-fields <c:if test='${payment.paymentMethod == "bank-transfer"}'>active</c:if>">
                <div class="form-row">
                    <div class="form-group">
                        <label>Account Holder Name <span class="required">*</span></label>
                        <input type="text" id="accName" name="accName" value="${payment.accName}" placeholder=" Account Holder Name" maxlength="50">
                        <span class="error-message" id="accNameError">Account holder name is required</span>
                    </div>
                    <div class="form-group">
                        <label>Account Number <span class="required">*</span></label>
                        <input type="text" id="accNum" name="accNum" value="${payment.accNum}" placeholder=" Account Number" maxlength="34">
                        <span class="error-message" id="accNumError">Account number is required</span>
                    </div>
                    <div class="form-group">
                        <label>Bank Name <span class="required">*</span></label>
                        <input type="text" id="bankName" name="bankName" value="${payment.bankName}" placeholder=" Bank Name" maxlength="50">
                        <span class="error-message" id="bankNameError">Bank name is required</span>
                    </div>
                    <div class="form-group">
                        <label>SWIFT/BIC <span class="required">*</span></label>
                        <input type="text" id="swiftBic" name="swiftBic" value="${payment.swiftBic}" placeholder=" SWIFT/BIC" maxlength="34">
                        <span class="error-message" id="swiftBicError">SWIFT/BIC is required</span>
                    </div>
                </div>
            </div>

            <div style="margin-top: 30px;">
                <div class="section-title">Billing Information</div>
                <div class="form-row three-col">
                    <div class="form-group">
                        <label>Full Name <span class="required">*</span></label>
                        <input type="text" id="fullName" name="fullName" value="${payment.fullName}" placeholder=" Full Name" maxlength="50">
                        <span class="error-message" id="fullNameError">Full name is required</span>
                    </div>
                    <div class="form-group">
                        <label>Email Address <span class="required">*</span></label>
                        <input type="email" id="email" name="email" value="${payment.email}" placeholder=" Email">
                        <span class="error-message" id="emailError">Please enter a valid email address</span>
                    </div>
                    <div class="form-group">
                        <label>Phone Number <span class="required">*</span></label>
                        <input type="text" id="phoneNum" name="phoneNum" value="${payment.phoneNum}" placeholder=" Phone Number" maxlength="15">
                        <span class="error-message" id="phoneNumError">Phone number is required</span>
                    </div>
                </div>
            </div>
            <div style="margin-top: 30px;">
                <div class="form-row three-col">
                    <div class="form-group">
                        <label>Billing Address <span class="required">*</span></label>
                        <input type="text" id="billAdd" name="billAdd" value="${payment.billAdd}" placeholder=" Address 1" maxlength="50">
                        <span class="error-message" id="billAddError">Billing address is required</span>
                    </div>
                    <div class="form-group">
                        <input type="text" id="city" name="city" value="${payment.city}" placeholder=" City" maxlength="50">
                        <span class="error-message" id="cityError">City is required</span>
                    </div>
                    <div class="form-group">
                        <input type="text" id="province" name="province" value="${payment.province}" placeholder=" Province" maxlength="50">
                        <span class="error-message" id="provinceError">Province is required</span>
                    </div>
                </div>
            </div>
            <div class="button-container">
                <button type="submit" class="btn-confirm">Next</button>
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
                <!-- If you have add-ons, display here -->
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

<jsp:include page="Footer.jsp" />

<script>
// NAVBAR JS
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

    // PAYMENT FORM VALIDATION
    const form = document.getElementById('paymentForm');
    
    // Toggle payment fields
    window.togglePaymentFields = function() {
        const creditCardFields = document.getElementById("creditCardFields");
        const bankTransferFields = document.getElementById("bankTransferFields");
        const selected = document.querySelector('input[name="paymentMethod"]:checked');
        
        if (selected) {
            if (selected.value === "credit-card") {
                creditCardFields.classList.add("active");
                bankTransferFields.classList.remove("active");
            } else if (selected.value === "bank-transfer") {
                bankTransferFields.classList.add("active");
                creditCardFields.classList.remove("active");
            }
        } else {
            creditCardFields.classList.remove("active");
            bankTransferFields.classList.remove("active");
        }
    };
    
    // Run on page load
    togglePaymentFields();
    
    // Card type detection
    const detectCardType = (cardNumber) => {
        const firstDigit = cardNumber.charAt(0);
        const logo = document.getElementById('cardTypeLogo');
        
        if (firstDigit === '4') {
            logo.textContent = 'VISA';
            logo.style.color = '#1434CB';
            return 'visa';
        } else if (firstDigit === '5' || firstDigit === '2') {
            logo.textContent = 'MASTERCARD';
            logo.style.color = '#EB001B';
            return 'mastercard';
        } else if (firstDigit === '3') {
            logo.textContent = 'AMEX';
            logo.style.color = '#006FCF';
            return 'amex';
        } else {
            logo.textContent = 'VISA';
            logo.style.color = '#9ca3af';
            return 'unknown';
        }
    };
    
    // Validation functions
    const showError = (element, errorElement, message) => {
        element.classList.add('error');
        element.classList.remove('valid');
        errorElement.textContent = message;
        errorElement.classList.add('show');
    };
    
    const clearError = (element, errorElement) => {
        element.classList.remove('error');
        element.classList.add('valid');
        errorElement.classList.remove('show');
    };
    
    const validateCardholderName = (input, errorElement) => {
        const value = input.value.trim();
        if (value === '') {
            showError(input, errorElement, 'Cardholder name is required');
            return false;
        }
        if (value.length > 50) {
            showError(input, errorElement, 'Maximum 50 characters allowed');
            return false;
        }
        clearError(input, errorElement);
        return true;
    };
    
    const validateCardNumber = (input, errorElement) => {
        const value = input.value.replace(/\s/g, '');
        const cardType = detectCardType(value);
        
        if (value === '') {
            showError(input, errorElement, 'Card number is required');
            return false;
        }
        
        if (!/^\d+$/.test(value)) {
            showError(input, errorElement, 'Card number must contain only digits');
            return false;
        }
        
        if (cardType === 'amex' && value.length !== 15) {
            showError(input, errorElement, 'American Express card must be 15 digits');
            return false;
        }
        
        if ((cardType === 'visa' || cardType === 'mastercard') && value.length !== 16) {
            showError(input, errorElement, 'Card number must be 16 digits');
            return false;
        }
        
        clearError(input, errorElement);
        return true;
    };
    
    const validateExpirationDate = (input, errorElement) => {
        const value = input.value.trim();
        
        if (value === '') {
            showError(input, errorElement, 'Expiration date is required');
            return false;
        }
        
        const pattern = /^(0[1-9]|1[0-2])\/(\d{2})$/;
        if (!pattern.test(value)) {
            showError(input, errorElement, 'Format must be MM/YY');
            return false;
        }
        
        const [month, year] = value.split('/');
        const currentDate = new Date();
        const currentYear = currentDate.getFullYear() % 100;
        const currentMonth = currentDate.getMonth() + 1;
        
        if (parseInt(year) < currentYear || (parseInt(year) === currentYear && parseInt(month) < currentMonth)) {
            showError(input, errorElement, 'Card has expired');
            return false;
        }
        
        clearError(input, errorElement);
        return true;
    };
    
    const validateCVV = (input, errorElement) => {
        const value = input.value.trim();
        const cardNumberInput = document.getElementById('cardNum');
        const cardType = detectCardType(cardNumberInput.value.replace(/\s/g, ''));
        
        if (value === '') {
            showError(input, errorElement, 'CVV is required');
            return false;
        }
        
        if (!/^\d+$/.test(value)) {
            showError(input, errorElement, 'CVV must contain only digits');
            return false;
        }
        
        if (cardType === 'amex' && value.length !== 4) {
            showError(input, errorElement, 'American Express CVV must be 4 digits');
            return false;
        }
        
        if ((cardType === 'visa' || cardType === 'mastercard') && value.length !== 3) {
            showError(input, errorElement, 'CVV must be 3 digits');
            return false;
        }
        
        clearError(input, errorElement);
        return true;
    };
    
    const validateTextField = (input, errorElement, fieldName, maxLength) => {
        const value = input.value.trim();
        if (value === '') {
            showError(input, errorElement, `${fieldName} is required`);
            return false;
        }
        if (value.length > maxLength) {
            showError(input, errorElement, `Maximum ${maxLength} characters allowed`);
            return false;
        }
        clearError(input, errorElement);
        return true;
    };
    
    const validateEmail = (input, errorElement) => {
        const value = input.value.trim();
        if (value === '') {
            showError(input, errorElement, 'Email is required');
            return false;
        }
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(value)) {
            showError(input, errorElement, 'Please enter a valid email address');
            return false;
        }
        clearError(input, errorElement);
        return true;
    };
    
    const validatePhoneNumber = (input, errorElement) => {
        const value = input.value.trim();
        if (value === '') {
            showError(input, errorElement, 'Phone number is required');
            return false;
        }
        if (!/^\d+$/.test(value)) {
            showError(input, errorElement, 'Only numbers allowed');
            return false;
        }
        if (value.length > 15) {
            showError(input, errorElement, 'Maximum 15 digits allowed');
            return false;
        }
        if (value.length < 10) {
            showError(input, errorElement, 'Minimum 10 digits required');
            return false;
        }
        clearError(input, errorElement);
        return true;
    };
    
    const validatePaymentMethod = () => {
        const selectedMethod = document.querySelector('input[name="paymentMethod"]:checked');
        if (!selectedMethod) {
            alert('Please select a payment method');
            return false;
        }
        return true;
    };
    
    // Get all form elements
    const cardName = document.getElementById('cardName');
    const cardNum = document.getElementById('cardNum');
    const expiDate = document.getElementById('expiDate');
    const cvvNum = document.getElementById('cvvNum');
    const accName = document.getElementById('accName');
    const accNum = document.getElementById('accNum');
    const bankName = document.getElementById('bankName');
    const swiftBic = document.getElementById('swiftBic');
    const fullName = document.getElementById('fullName');
    const email = document.getElementById('email');
    const phoneNum = document.getElementById('phoneNum');
    const billAdd = document.getElementById('billAdd');
    const city = document.getElementById('city');
    const province = document.getElementById('province');
    
    // Card number input
    if (cardNum) {
        cardNum.addEventListener('input', function() {
            this.value = this.value.replace(/\D/g, '');
            detectCardType(this.value);
        });
        cardNum.addEventListener('blur', function() {
            validateCardNumber(this, document.getElementById('cardNumError'));
        });
    }
    
    // Expiration date formatting
    if (expiDate) {
        expiDate.addEventListener('input', function(e) {
            let value = e.target.value.replace(/\D/g, '');
            if (value.length >= 2) {
                value = value.slice(0, 2) + '/' + value.slice(2, 4);
            }
            e.target.value = value;
        });
        expiDate.addEventListener('blur', function() {
            validateExpirationDate(this, document.getElementById('expiDateError'));
        });
    }
    
    // CVV input
    if (cvvNum) {
        cvvNum.addEventListener('input', function() {
            this.value = this.value.replace(/\D/g, '');
        });
        cvvNum.addEventListener('blur', function() {
            validateCVV(this, document.getElementById('cvvNumError'));
        });
    }
    
    // Credit card validations
    if (cardName) {
        cardName.addEventListener('blur', function() {
            validateCardholderName(this, document.getElementById('cardNameError'));
        });
    }
    
    // Bank transfer validations
    if (accName) {
        accName.addEventListener('blur', function() {
            const value = this.value.trim();
            if (value === '') {
                showError(this, document.getElementById('accNameError'), 'Account holder name is required');
            } else if (value.length > 50) {
                showError(this, document.getElementById('accNameError'), 'Maximum 50 characters allowed');
            } else {
                clearError(this, document.getElementById('accNameError'));
            }
        });
    }
    
    if (accNum) {
        accNum.addEventListener('blur', function() {
            const value = this.value.trim();
            if (value === '') {
                showError(this, document.getElementById('accNumError'), 'Account number is required');
            } else if (value.length > 34) {
                showError(this, document.getElementById('accNumError'), 'Maximum 34 characters allowed');
            } else {
                clearError(this, document.getElementById('accNumError'));
            }
        });
    }
    
    if (bankName) {
        bankName.addEventListener('blur', function() {
            const value = this.value.trim();
            if (value === '') {
                showError(this, document.getElementById('bankNameError'), 'Bank name is required');
            } else if (value.length > 50) {
                showError(this, document.getElementById('bankNameError'), 'Maximum 50 characters allowed');
            } else {
                clearError(this, document.getElementById('bankNameError'));
            }
        });
    }
    
    if (swiftBic) {
        swiftBic.addEventListener('blur', function() {
            const value = this.value.trim();
            if (value === '') {
                showError(this, document.getElementById('swiftBicError'), 'SWIFT/BIC is required');
            } else if (value.length > 34) {
                showError(this, document.getElementById('swiftBicError'), 'Maximum 34 characters allowed');
            } else {
                clearError(this, document.getElementById('swiftBicError'));
            }
        });
    }
    
    // Billing information validations
    if (fullName) {
        fullName.addEventListener('blur', function() {
            const value = this.value.trim();
            if (value === '') {
                showError(this, document.getElementById('fullNameError'), 'Full name is required');
            } else if (value.length > 50) {
                showError(this, document.getElementById('fullNameError'), 'Maximum 50 characters allowed');
            } else {
                clearError(this, document.getElementById('fullNameError'));
            }
        });
    }
    
    if (email) {
        email.addEventListener('blur', function() {
            validateEmail(this, document.getElementById('emailError'));
        });
    }
    
    if (phoneNum) {
        phoneNum.addEventListener('input', function() {
            this.value = this.value.replace(/\D/g, '');
        });
        phoneNum.addEventListener('blur', function() {
            validatePhoneNumber(this, document.getElementById('phoneNumError'));
        });
    }
    
    if (billAdd) {
        billAdd.addEventListener('blur', function() {
            const value = this.value.trim();
            if (value === '') {
                showError(this, document.getElementById('billAddError'), 'Billing address is required');
            } else if (value.length > 50) {
                showError(this, document.getElementById('billAddError'), 'Maximum 50 characters allowed');
            } else {
                clearError(this, document.getElementById('billAddError'));
            }
        });
    }
    
    if (city) {
        city.addEventListener('blur', function() {
            const value = this.value.trim();
            if (value === '') {
                showError(this, document.getElementById('cityError'), 'City is required');
            } else if (value.length > 50) {
                showError(this, document.getElementById('cityError'), 'Maximum 50 characters allowed');
            } else {
                clearError(this, document.getElementById('cityError'));
            }
        });
    }
    
    if (province) {
        province.addEventListener('blur', function() {
            const value = this.value.trim();
            if (value === '') {
                showError(this, document.getElementById('provinceError'), 'Province is required');
            } else if (value.length > 50) {
                showError(this, document.getElementById('provinceError'), 'Maximum 50 characters allowed');
            } else {
                clearError(this, document.getElementById('provinceError'));
            }
        });
    }
    
    // Form submission
    form.addEventListener('submit', function(e) {
        e.preventDefault();
        
        if (!validatePaymentMethod()) {
            return false;
        }
        
        const selectedMethod = document.querySelector('input[name="paymentMethod"]:checked').value;
        
        let isValid = true;
        
        if (selectedMethod === 'credit-card') {
            isValid = validateCardholderName(cardName, document.getElementById('cardNameError')) && isValid;
            isValid = validateCardNumber(cardNum, document.getElementById('cardNumError')) && isValid;
            isValid = validateExpirationDate(expiDate, document.getElementById('expiDateError')) && isValid;
            isValid = validateCVV(cvvNum, document.getElementById('cvvNumError')) && isValid;
        } else if (selectedMethod === 'bank-transfer') {
            const accNameValue = accName.value.trim();
            if (accNameValue === '') {
                showError(accName, document.getElementById('accNameError'), 'Account holder name is required');
                isValid = false;
            } else if (accNameValue.length > 50) {
                showError(accName, document.getElementById('accNameError'), 'Maximum 50 characters allowed');
                isValid = false;
            } else {
                clearError(accName, document.getElementById('accNameError'));
            }
            
            const accNumValue = accNum.value.trim();
            if (accNumValue === '') {
                showError(accNum, document.getElementById('accNumError'), 'Account number is required');
                isValid = false;
            } else if (accNumValue.length > 34) {
                showError(accNum, document.getElementById('accNumError'), 'Maximum 34 characters allowed');
                isValid = false;
            } else {
                clearError(accNum, document.getElementById('accNumError'));
            }
            
            const bankNameValue = bankName.value.trim();
            if (bankNameValue === '') {
                showError(bankName, document.getElementById('bankNameError'), 'Bank name is required');
                isValid = false;
            } else if (bankNameValue.length > 50) {
                showError(bankName, document.getElementById('bankNameError'), 'Maximum 50 characters allowed');
                isValid = false;
            } else {
                clearError(bankName, document.getElementById('bankNameError'));
            }
            
            const swiftBicValue = swiftBic.value.trim();
            if (swiftBicValue === '') {
                showError(swiftBic, document.getElementById('swiftBicError'), 'SWIFT/BIC is required');
                isValid = false;
            } else if (swiftBicValue.length > 34) {
                showError(swiftBic, document.getElementById('swiftBicError'), 'Maximum 34 characters allowed');
                isValid = false;
            } else {
                clearError(swiftBic, document.getElementById('swiftBicError'));
            }
        }
        
        const fullNameValue = fullName.value.trim();
        if (fullNameValue === '') {
            showError(fullName, document.getElementById('fullNameError'), 'Full name is required');
            isValid = false;
        } else if (fullNameValue.length > 50) {
            showError(fullName, document.getElementById('fullNameError'), 'Maximum 50 characters allowed');
            isValid = false;
        } else {
            clearError(fullName, document.getElementById('fullNameError'));
        }
        
        isValid = validateEmail(email, document.getElementById('emailError')) && isValid;
        isValid = validatePhoneNumber(phoneNum, document.getElementById('phoneNumError')) && isValid;
        
        const billAddValue = billAdd.value.trim();
        if (billAddValue === '') {
            showError(billAdd, document.getElementById('billAddError'), 'Billing address is required');
            isValid = false;
        } else if (billAddValue.length > 50) {
            showError(billAdd, document.getElementById('billAddError'), 'Maximum 50 characters allowed');
            isValid = false;
        } else {
            clearError(billAdd, document.getElementById('billAddError'));
        }
        
        const cityValue = city.value.trim();
        if (cityValue === '') {
            showError(city, document.getElementById('cityError'), 'City is required');
            isValid = false;
        } else if (cityValue.length > 50) {
            showError(city, document.getElementById('cityError'), 'Maximum 50 characters allowed');
            isValid = false;
        } else {
            clearError(city, document.getElementById('cityError'));
        }
        
        const provinceValue = province.value.trim();
        if (provinceValue === '') {
            showError(province, document.getElementById('provinceError'), 'Province is required');
            isValid = false;
        } else if (provinceValue.length > 50) {
            showError(province, document.getElementById('provinceError'), 'Maximum 50 characters allowed');
            isValid = false;
        } else {
            clearError(province, document.getElementById('provinceError'));
        }
        
        if (isValid) {
            this.submit();
        } else {
            const firstError = document.querySelector('.error');
            if (firstError) {
                firstError.scrollIntoView({ behavior: 'smooth', block: 'center' });
                firstError.focus();
            }
        }
    });
});
</script>
</body>
</html>