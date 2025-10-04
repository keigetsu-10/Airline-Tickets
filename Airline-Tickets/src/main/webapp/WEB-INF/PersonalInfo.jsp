<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>A4Lifers Flight Booking | Personal Information</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/format.css'/>">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/navbar.css">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/Footer.css'/>">

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
    .form-row.two-col option,
    .form-row.two-col select {
        font-size: 14px;
    }

    .form-row.single-col {
        grid-template-columns: 1fr;
    }

    .form-group {
        display: flex;
        flex-direction: column;
    }
    .form-row input {
        font-size: 14px;
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
    
    /* Validation styles */
    .error-message {
        color: #dc2626;
        font-size: 12px;
        margin-top: 5px;
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
        <a href="/SeatMap" class="return-link">⮜  Return </a>
       
        <h1>Personal Information <span class="passenger-tag">(Passenger 1)</span></h1>

        <form id="bookingForm" action="${pageContext.request.contextPath}/confirmationInfo" method="POST">
            <div class="identi">IDENTIFICATION</div>

            <div class="form-row">
                <div class="form-group">
                    <label>First Name <span class="required">*</span></label>
                    <input type="text" id="firstName" name="firstName" value="${user.firstName}" 
                           placeholder=" First Name" maxlength="50" required>
                    <span class="error-message" id="firstNameError">Please enter a valid first name</span>
                </div>
                <div class="form-group">
                    <label>Last Name <span class="required">*</span></label>
                    <input type="text" id="lastName" name="lastName" value="${user.lastName}" 
                           placeholder=" Last Name" maxlength="50" required>
                    <span class="error-message" id="lastNameError">Please enter a valid last name</span>
                </div>
                <div class="form-group">
                    <label>Middle Name <span class="optional">(Optional)</span></label>
                    <input type="text" id="middleName" name="middleName" value="${user.middleName}" 
                           placeholder=" Middle Name" maxlength="50">
                    <span class="error-message" id="middleNameError">Maximum 50 characters allowed</span>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label>Birth Date <span class="required">*</span></label>
                    <input type="date" id="birthDate" name="birthDate" value="${user.birthDate}" required>
                    <span class="error-message" id="birthDateError">Please enter a valid birth date</span>
                </div>
                <div class="form-group">
                    <label>Nationality <span class="required">*</span></label>
                    <input type="text" id="nationality" name="nationality" value="${user.nationality}" 
                           placeholder=" Nationality" maxlength="25" required>
                    <span class="error-message" id="nationalityError">Please enter a valid nationality</span>
                </div>
            </div>

            <div class="form-row two-col">
                <div class="form-group">
                    <label>Passport ID <span class="required">*</span></label>
                    <input type="text" id="passportId" name="passportId" value="${user.passportId}" 
                           placeholder=" Passport ID" maxlength="9" required>
                    <span class="error-message" id="passportIdError">Must be alphanumeric, max 9 characters</span>
                </div>
            </div>

            <div class="section-title" style="margin-top: 30px;">CONTACT INFORMATION</div>
            <div class="form-row two-col">
                <div class="form-group">
                    <label>E-mail <span class="required">*</span></label>
                    <input type="email" id="email" name="email" value="${user.email}" 
                           placeholder=" Email" required>
                    <span class="error-message" id="emailError">Please enter a valid email address</span>
                </div>
            </div>

            <div class="form-row two-col">
                <div class="form-group">
                    <label>Mobile Number <span class="required">*</span></label>
                    <input type="text" id="mobileNumber" name="mobileNumber" value="${user.mobileNumber}" 
                           placeholder=" Mobile Number" maxlength="15" required>
                    <span class="error-message" id="mobileNumberError">Must be numbers only, max 15 digits</span>
                </div>
            </div>

            <div class="section-title" style="margin-top: 30px;">SELECT YOUR SEAT #</div>
            <div class="form-row two-col">
                <div class="form-group">
                    <label>Seat # <span class="required">*</span></label>
                    <select id="seat" name="seat" required>
                        <option value="">Seat # Selected</option>
                        <c:forEach var="seat" items="${seats}">
                            <option value="${seat}" <c:if test="${user.seat eq seat}">selected</c:if>>${seat}</option>
                        </c:forEach>
                    </select>
                    <span class="error-message" id="seatError">Please select a seat</span>
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

    // FORM VALIDATION
    const form = document.getElementById('bookingForm');
    
    // Validation functions
    const validateName = (input, errorElement) => {
        const value = input.value.trim();
        if (value === '') {
            showError(input, errorElement, 'This field is required');
            return false;
        }
        if (value.length > 50) {
            showError(input, errorElement, 'Maximum 50 characters allowed');
            return false;
        }
        if (!/^[a-zA-Z\s\-']+$/.test(value)) {
            showError(input, errorElement, 'Only letters, spaces, hyphens and apostrophes allowed');
            return false;
        }
        clearError(input, errorElement);
        return true;
    };
    
    const validateMiddleName = (input, errorElement) => {
        const value = input.value.trim();
        if (value === '') {
            clearError(input, errorElement);
            return true; // Optional field
        }
        if (value.length > 50) {
            showError(input, errorElement, 'Maximum 50 characters allowed');
            return false;
        }
        if (!/^[a-zA-Z\s\-']+$/.test(value)) {
            showError(input, errorElement, 'Only letters, spaces, hyphens and apostrophes allowed');
            return false;
        }
        clearError(input, errorElement);
        return true;
    };
    
    const validateNationality = (input, errorElement) => {
        const value = input.value.trim();
        if (value === '') {
            showError(input, errorElement, 'Nationality is required');
            return false;
        }
        if (value.length > 25) {
            showError(input, errorElement, 'Maximum 25 characters allowed');
            return false;
        }
        if (!/^[a-zA-Z\s\-]+$/.test(value)) {
            showError(input, errorElement, 'Only letters, spaces and hyphens allowed');
            return false;
        }
        clearError(input, errorElement);
        return true;
    };
    
    const validatePassportId = (input, errorElement) => {
        const value = input.value.trim();
        if (value === '') {
            showError(input, errorElement, 'Passport ID is required');
            return false;
        }
        if (value.length > 9) {
            showError(input, errorElement, 'Maximum 9 characters allowed');
            return false;
        }
        if (value.length < 9) {
            showError(input, errorElement, 'Not Valid');
            return false;
        }
        if (!/^[a-zA-Z0-9]+$/.test(value)) {
            showError(input, errorElement, 'Only letters and numbers allowed');
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
    
    const validateMobileNumber = (input, errorElement) => {
        const value = input.value.trim();
        if (value === '') {
            showError(input, errorElement, 'Mobile number is required');
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
    
    const validateBirthDate = (input, errorElement) => {
        const value = input.value;
        if (value === '') {
            showError(input, errorElement, 'Birth date is required');
            return false;
        }
        const birthDate = new Date(value);
        const today = new Date();
        const age = today.getFullYear() - birthDate.getFullYear();
        
        if (birthDate > today) {
            showError(input, errorElement, 'Birth date cannot be in the future');
            return false;
        }
        if (age < 0 || age > 120) {
            showError(input, errorElement, 'Please enter a valid birth date');
            return false;
        }
        clearError(input, errorElement);
        return true;
    };
    
    const validateSeat = (select, errorElement) => {
        if (select.value === '') {
            showError(select, errorElement, 'Please select a seat');
            return false;
        }
        clearError(select, errorElement);
        return true;
    };
    
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
    
    // Real-time validation
    const firstName = document.getElementById('firstName');
    const lastName = document.getElementById('lastName');
    const middleName = document.getElementById('middleName');
    const nationality = document.getElementById('nationality');
    const passportId = document.getElementById('passportId');
    const email = document.getElementById('email');
    const mobileNumber = document.getElementById('mobileNumber');
    const birthDate = document.getElementById('birthDate');
    const seat = document.getElementById('seat');
    
    firstName.addEventListener('blur', () => validateName(firstName, document.getElementById('firstNameError')));
    lastName.addEventListener('blur', () => validateName(lastName, document.getElementById('lastNameError')));
    middleName.addEventListener('blur', () => validateMiddleName(middleName, document.getElementById('middleNameError')));
    nationality.addEventListener('blur', () => validateNationality(nationality, document.getElementById('nationalityError')));
    passportId.addEventListener('blur', () => validatePassportId(passportId, document.getElementById('passportIdError')));
    email.addEventListener('blur', () => validateEmail(email, document.getElementById('emailError')));
    mobileNumber.addEventListener('blur', () => validateMobileNumber(mobileNumber, document.getElementById('mobileNumberError')));
    birthDate.addEventListener('blur', () => validateBirthDate(birthDate, document.getElementById('birthDateError')));
    seat.addEventListener('change', () => validateSeat(seat, document.getElementById('seatError')));
    
    // Input restrictions
    mobileNumber.addEventListener('input', (e) => {
        e.target.value = e.target.value.replace(/[^\d]/g, '');
    });
    
    passportId.addEventListener('input', (e) => {
        e.target.value = e.target.value.replace(/[^a-zA-Z0-9]/g, '').toUpperCase();
    });
    
    // Form submission
    form.addEventListener('submit', (e) => {
        e.preventDefault();
        
        const isFirstNameValid = validateName(firstName, document.getElementById('firstNameError'));
        const isLastNameValid = validateName(lastName, document.getElementById('lastNameError'));
        const isMiddleNameValid = validateMiddleName(middleName, document.getElementById('middleNameError'));
        const isNationalityValid = validateNationality(nationality, document.getElementById('nationalityError'));
        const isPassportIdValid = validatePassportId(passportId, document.getElementById('passportIdError'));
        const isEmailValid = validateEmail(email, document.getElementById('emailError'));
        const isMobileNumberValid = validateMobileNumber(mobileNumber, document.getElementById('mobileNumberError'));
        const isBirthDateValid = validateBirthDate(birthDate, document.getElementById('birthDateError'));
        const isSeatValid = validateSeat(seat, document.getElementById('seatError'));
        
        if (isFirstNameValid && isLastNameValid && isMiddleNameValid && isNationalityValid && 
            isPassportIdValid && isEmailValid && isMobileNumberValid && isBirthDateValid && isSeatValid) {
            form.submit();
        } else {
            // Scroll to first error
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