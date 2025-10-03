<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>A4Lifers Flight Booking | Confirmation</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/format.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/Footer.css'/>">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/navbar.css">

<style>
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

			<a href="/PersonalInformation" class="return-link"> ⮜ Return</a>


			<h1>Confirmation</h1>


			<div class="section-tag">(PASSENGER 1)</div>

			<div class="section-header" style="margin-top: 20px;">
				<h2 class="section-title">Personal Information</h2>
				<a href="${pageContext.request.contextPath}/PersonalInformation"
					class="edit-link">Edit</a>
			</div>

			<div style="margin-bottom: 25px;">
				<h3 style="color: #6b7280; font-size: 14px; margin-bottom: 15px;">Passenger
					Details</h3>

				<div class="info-grid">
					<div class="info-item">
						<span class="info-label">First Name</span> <span
							class="info-value">${personalInfo.firstName}</span>
					</div>

					<div class="info-item">
						<span class="info-label">Last Name</span> <span class="info-value">${personalInfo.lastName}</span>
					</div>

					<div class="info-item">
						<span class="info-label">Middle Name</span> <span
							class="info-value">${not empty personalInfo.middleName ? personalInfo.middleName : 'N/A'}</span>
					</div>

					<div class="info-item">
						<span class="info-label">Birth Date</span> <span
							class="info-value">${personalInfo.formattedBirthDate}</span>
					</div>

					<div class="info-item">
						<span class="info-label">Nationality</span> <span
							class="info-value">${personalInfo.nationality}</span>
					</div>

					<div class="info-item">
						<span class="info-label">Passport ID</span> <span
							class="info-value">${personalInfo.passportId}</span>
					</div>
				</div>
			</div>

			<div style="margin-bottom: 25px;">
				<h3 style="color: #6b7280; font-size: 14px; margin-bottom: 15px;">Contact
					Information</h3>

				<div class="info-grid">
					<div class="info-item">
						<span class="info-label">Email</span> <span class="info-value">${personalInfo.email}</span>
					</div>

					<div class="info-item">
						<span class="info-label">Mobile Number</span> <span
							class="info-value">${personalInfo.mobileNumber}</span>
					</div>

					<div class="info-item">
						<span class="info-label">Seat #</span> <span class="info-value">${personalInfo.seatNumber}</span>
					</div>
				</div>
			</div>

			<hr class="divider">

			<div class="booking-section">
				<h2 class="section-title" style="margin-bottom: 20px;">Booking
					Details</h2>

				<div class="booking-grid">
					<div class="booking-column">
						<div class="booking-item">
							<span class="booking-label">From</span> <span
								class="booking-value">${bookingDetails.from}</span>
						</div>

						<div class="booking-item">
							<span class="booking-label">Departure Date</span> <span
								class="booking-value">${bookingDetails.departureDate}</span>
						</div>

						<div class="booking-item">
							<span class="booking-label">Departure Time</span> <span
								class="booking-value">${bookingDetails.departureTime}</span>
						</div>

						<div class="booking-item">
							<span class="booking-label">Airlines</span> <span
								class="booking-value">${bookingDetails.airlines}</span>
						</div>

						<div class="booking-item">
							<span class="booking-label">Baggage Allowance</span> <span
								class="booking-value">${bookingDetails.baggageAllowance}</span>
						</div>
					</div>

					<div class="booking-column">
						<div class="booking-item">
							<span class="booking-label">Destination</span> <span
								class="booking-value">${bookingDetails.destination}</span>
						</div>

						<div class="booking-item">
							<span class="booking-label">Return Date</span> <span
								class="booking-value">${bookingDetails.returnDate}</span>
						</div>

						<div class="booking-item">
							<span class="booking-label">Return Time</span> <span
								class="booking-value">${bookingDetails.returnTime}</span>
						</div>

						<div class="booking-item">
							<span class="booking-label">Flight Class</span> <span
								class="booking-value">${bookingDetails.flightClass}</span>
						</div>
					</div>
				</div>
			</div>

			<form action="${pageContext.request.contextPath}/Payment"
				method="POST">
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
						<span class="summary-label">DEPARTURE</span> <span
							class="summary-label">RETURN</span>
					</div>
					<div class="summary-row">
						<span class="summary-value">${bookingDetails.departureDate}</span>
						<span class="summary-value">${bookingDetails.returnDate}</span>
					</div>
				</div>

				<div class="summary-item">
					<div class="summary-row">
						<span class="summary-label">DEPARTURE TIME</span> <span
							class="summary-label">RETURN TIME</span>
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
							<div class="summary-value"
								style="font-weight: 400; font-size: 12px;">${bookingDetails.fromTerminal}</div>
							<div class="summary-value" style="margin-top: 5px;">${bookingDetails.flightClass}</div>
						</div>
						<div style="width: 100%; text-align: right;">
							<div class="summary-label">DESTINATION</div>
							<div class="summary-value">${bookingDetails.destination}</div>
							<div class="summary-value"
								style="font-weight: 400; font-size: 12px;">${bookingDetails.destinationTerminal}</div>
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
					<h3 style="color: #1e3a5f; font-size: 16px; margin-bottom: 15px;">Your
						Price Summary</h3>
					<div class="summary-row">
						<span style="font-size: 14px;">Travel Fare:</span> <span>${bookingDetails.travelFare}</span>
					</div>
					<div class="summary-row">
						<span style="font-size: 14px;">12% VAT:</span> <span>${bookingDetails.vat}</span>
					</div>

					<div class="total-row">
						<span class="total-label">Total Price</span> <span
							class="total-value">${bookingDetails.totalPrice}</span>
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