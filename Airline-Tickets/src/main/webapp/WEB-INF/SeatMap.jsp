<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>A4Lifers Flight Booking | Seat Map</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/format.css'/>">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/navbar.css">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/Footer.css'/>">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap" rel="stylesheet">	
	<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700&display=swap" rel="stylesheet">
<style>
  

    /* Left Panel */
    .left-panel {
        flex: 2;
        background-color: white;
        border-radius: 12px;
        padding: 40px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
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
    .left-panel h1 {
        color: #1e3a5f;
        font-size: 28px;
        margin-bottom: 10px;
    }

    .identi {
        color: #c4cbd8;
        font-size: 12px;
        font-weight: 600;
        letter-spacing: 1px;
        margin-bottom: 20px;
        text-transform: uppercase;
    }

    .legend {
        display: flex;
        gap: 15px;
        margin-bottom: 20px;
         align-items: center;
    }

    .legend-item {
        display: flex;
        align-items: center;
        gap: 6px;
        font-size: 14px;
        color: #555;
    }

    .legend-box {
        width: 18px;
        height: 18px;
        border-radius: 3px;
        border: 1px solid #ccc;
    }

    .legend-box.occupied { background-color: #1e3a5f; }
    .legend-box.unoccupied { background-color: #fff; }

    /* Seat Map */
    .seat-map-grid {
        display: flex;
        justify-content: space-evenly;
        gap: 60px;
        margin-bottom: 40px;
        flex-wrap: wrap;
    }
    button.seat.selected {
	    background-color: #1e3a5f;
	    border-color: #1e3a5f;
	    color: white;
	}	

    .seat-column {
        display: flex;
        flex-direction: column;
        gap: 10px;
    }

    .seat-row {
        display: flex;
        justify-content: center;
        gap: 10px;
    }

    button.seat {
        width: 45px;
        height: 45px;
        border: 1px solid #ccc;
        border-radius: 6px;
        background-color: #fff;
        color: #333;
        font-weight: 600;
        cursor: pointer;
        transition: all 0.2s;
    }

    button.seat.occupied {
        background-color: #1e3a5f;
        color: white;
        cursor: not-allowed;
    }

    button.seat:hover:not(.occupied) {
        background-color: #c6ccda;
        border-color: #c6ccda;
    }

    /* Passenger form */
    .passenger-info {
        margin-top: 0px;
        margin-bottom: 20px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    .form-group label {
        font-weight: 600;
        color: #1e3a5f;
        display: block;
        margin-bottom: 8px;
    }

    .form-group input {
        width: 100%;
        padding: 10px;
        border-radius: 6px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    .form-group input[readonly] {
        background-color: #eee;
    }

    .next-button-container {
        display: flex;
        justify-content: flex-end;
        margin-top: 25px;
    }

    .btn-next {
        background-color: #1e3a5f;
        color: white;
        padding: 12px 40px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        font-weight: 600;
        font-size: 15px;
        transition: 0.3s;
    }

    .btn-next:hover {
        background-color: #2a4e7e;
    }
</style>
</head>
<body>

<nav class="navbar">
    <div class="nav-center">
        <ul class="nav-links">
           <li><a  href="#header">Home</a></li>
	      <li><a href="/Home#explore">Explore</a></li>
	      <li><a class="active" href="/Flight/Options">Book</a></li>
	      <li><a href="#">Manage</a></li>
        </ul>
    </div>
    <div class="nav-right">
		<ul class="nav-links">
	      <li><a href="/login">Login / Sign-up</a></li>
	    </ul>
	    </div>
</nav>

<!-- Progress bar -->
<div class="progress-bar">
        <div class="step">
            <div class="step-number completed">1</div>
            <span class="step-label">Destination & Date</span>
        </div>
        <div class="step-connector"></div>
        
        <div class="step">
            <div class="step-number active">2</div>
            <span class="step-label">Seat Map</span>
        </div>
        <div class="step-connector inactive"></div>
        
        <div class="step">
            <div class="step-number inactive">3</div>
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
    <div class="left-panel">
        <a href="/BookingDetails" class="return-link">⮜  Return</a>
        <h1>Seat Map</h1>
        <div class="identi">SELECT YOUR SEAT</div>

        <div class="legend">
            <div class="legend-item"><div class="legend-box occupied"></div> Occupied</div>
            <div class="legend-item"><div class="legend-box unoccupied"></div> Unoccupied</div>
        </div>

        <div class="seat-map-grid">
            <!-- LEFT SIDE -->
            <div class="seat-column">
                <div class="seat-row">
                    <button class="seat">A1</button>
                    <button class="seat">B1</button>
                    <button class="seat">C1</button>
                    <button class="seat">D1</button>
                </div>
                <div class="seat-row">
                    <button class="seat">A2</button>
                    <button class="seat">B2</button>
                    <button class="seat">C2</button>
                    <button class="seat">D2</button>
                </div>
                <div class="seat-row">
                    <button class="seat">A3</button>
                    <button class="seat">B3</button>
                    <button class="seat">C3</button>
                    <button class="seat">D3</button>
                </div>
                <div class="seat-row">
                    <button class="seat">A4</button>
                    <button class="seat">B4</button>
                    <button class="seat">C4</button>
                    <button class="seat">D4</button>
                </div>
                <div class="seat-row">
                    <button class="seat">A5</button>
                    <button class="seat">B5</button>
                    <button class="seat">C5</button>
                    <button class="seat">D5</button>
                </div>
                <div class="seat-row">
                    <button class="seat">A6</button>
                    <button class="seat">B6</button>
                    <button class="seat">C6</button>
                    <button class="seat">D6</button>
                </div>
                <div class="seat-row">
                    <button class="seat">A7</button>
                    <button class="seat">B7</button>
                    <button class="seat">C7</button>
                    <button class="seat">D7</button>
                </div>
                <div class="seat-row">
                    <button class="seat">A8</button>
                    <button class="seat">B8</button>
                    <button class="seat">C8</button>
                    <button class="seat">D8</button>
                </div>
                <div class="seat-row">
                    <button class="seat">A9</button>
                    <button class="seat">B9</button>
                    <button class="seat">C9</button>
                    <button class="seat">D9</button>
                </div>
            </div>

            <!-- RIGHT SIDE -->
            <div class="seat-column">
                <div class="seat-row">
                    <button class="seat">E1</button>
                    <button class="seat">F1</button>
                    <button class="seat">G1</button>
                    <button class="seat">H1</button>
                </div>
                <div class="seat-row">
                    <button class="seat">E2</button>
                    <button class="seat">F2</button>
                    <button class="seat">G2</button>
                    <button class="seat">H2</button>
                </div>
                <div class="seat-row">
                    <button class="seat">E3</button>
                    <button class="seat">F3</button>
                    <button class="seat">G3</button>
                    <button class="seat">H3</button>
                </div>
                <div class="seat-row">
                    <button class="seat">E4</button>
                    <button class="seat">F4</button>
                    <button class="seat">G4</button>
                    <button class="seat">H4</button>
                </div>
                <div class="seat-row">
                    <button class="seat">E5</button>
                    <button class="seat">F5</button>
                    <button class="seat">G5</button>
                    <button class="seat">H5</button>
                </div>
                <div class="seat-row">
                    <button class="seat">E6</button>
                    <button class="seat">F6</button>
                    <button class="seat">G6</button>
                    <button class="seat">H6</button>
                </div>
                <div class="seat-row">
                    <button class="seat">E7</button>
                    <button class="seat">F7</button>
                    <button class="seat">G7</button>
                    <button class="seat">H7</button>
                </div>
                <div class="seat-row">
                    <button class="seat">E8</button>
                    <button class="seat">F8</button>
                    <button class="seat">G8</button>
                    <button class="seat">H8</button>
                </div>
                <div class="seat-row">
                    <button class="seat">E9</button>
                    <button class="seat">F9</button>
                    <button class="seat">G9</button>
                    <button class="seat">H9</button>
                </div>
            </div>
            
            
        <!-- Replace the entire passenger-info div and form -->
<form action="${pageContext.request.contextPath}/SeatMap" method="POST">
    <div class="passenger-info">
        <div class="form-group">
            <label for="passengerCount">Passenger Count <span style="color: red;">*</span></label>
            <input type="number" id="passenger" name="passenger" placeholder="Number of Passengers" min="1" max="9" required>
        </div>
        <div class="form-group">
            <label for="seatsSelected">Seat(s) Selected</label>
            <input type="text" id="seatsSelected" name="seatsSelected" placeholder="Seat Number" readonly required>
        </div>
        <div class="next-button-container">
            <button type="submit" class="btn-next">Next</button>
        </div>
    </div>
</form>
        <!-- Passenger Info -->
       </div> 
    </div>

    <!-- RIGHT PANEL -->
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
<script>
document.addEventListener("DOMContentLoaded", () => {
    const seats = document.querySelectorAll(".seat:not(.occupied)");
    const seatInput = document.getElementById("seatsSelected");
    const passengerInput = document.getElementById("passenger");
    const form = document.querySelector("form");

    let selectedSeats = [];

    seats.forEach(seat => {
        seat.addEventListener("click", () => {
            const seatNumber = seat.textContent.trim();

            if (seat.classList.contains("selected")) {
                seat.classList.remove("selected");
                selectedSeats = selectedSeats.filter(s => s !== seatNumber);
            } else {
                const passenger = parseInt(passengerInput.value) || 0;
                if (passenger === 0) {
                    alert("Please enter the number of passengers first.");
                    return;
                }
                if (selectedSeats.length >= passenger) {
                    alert(`You can only select ${passenger} seat(s).`);
                    return;
                }
                seat.classList.add("selected");
                selectedSeats.push(seatNumber);
            }

            seatInput.value = selectedSeats.join(", ");
        });
    });

    form.addEventListener("submit", (e) => {
        const passenger = parseInt(passengerInput.value) || 0;
        
        if (passenger === 0) {
            e.preventDefault();
            alert("Please enter the number of passengers.");
            return;
        }
        
        if (selectedSeats.length === 0) {
            e.preventDefault();
            alert("Please select at least one seat.");
            return;
        }
        
        if (selectedSeats.length !== passenger) {
            e.preventDefault();
            alert(`Please select exactly ${passenger} seat(s). You have selected ${selectedSeats.length}.`);
            return;
        }
    });
});
</script>


</body>
</html>
