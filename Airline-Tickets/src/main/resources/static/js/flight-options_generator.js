document.addEventListener("DOMContentLoaded", function () {
  console.log("flight-options_generator.js loaded");

  const fltSearchBtn = document.getElementById("flight-search-btn");
  const fromInput = document.getElementById("from");
  const toInput = document.getElementById("to");
  const departureInput = document.getElementById("departureDate");
  const returnInput = document.getElementById("returnDate");
  const tripTypeSelect = document.getElementById("tripType");
  const resultsContainer = document.querySelector(".flight_results");
  const resultsCount = document.querySelector(".flight_options_results-num");

  if (
    !fltSearchBtn ||
    !fromInput ||
    !toInput ||
    !departureInput ||
    !returnInput ||
    !tripTypeSelect ||
    !resultsContainer ||
    !resultsCount
  ) {
    console.warn("⚠️ Missing required DOM elements in flight-options_generator.js");
    return;
  }

  // Function to capitalize words
  const capitalizeWords = (str) =>
    str
      .toLowerCase()
      .replace(/\b\w/g, (char) => char.toUpperCase())
      .trim();

  // Load destinations.json only once
  // INVALID WITH API
  let destinationsData = [];
  
  // REPLACE WITH API
  fetch("/json/destinations.json")
    .then((res) => res.json())
    .then((data) => {
      destinationsData = data.destinations;
      console.log("Destinations loaded:", destinationsData.length);
    })
    .catch((err) => console.error("❌ Failed to load destinations.json", err));

  fltSearchBtn.addEventListener("click", function (e) {
    e.preventDefault();

    // Trim and capitalize user input
    const fromValue = capitalizeWords(fromInput.value.trim());
    const toValue = capitalizeWords(toInput.value.trim());
    const departureValue = departureInput.value || "N/A";
    const returnValue = returnInput.value || "N/A";
    const tripTypeValue = tripTypeSelect.value;

    resultsContainer.innerHTML = "";

    if (!toValue || !fromValue) {
      resultsContainer.innerHTML = "<p>Please fill in both From and To ✈️</p>";
      resultsCount.textContent = "0 Results";
      return;
    }

	// Find matching airports from JSON 
	const fromDestination = destinationsData.find(
	  (d) =>
	    fromValue.toLowerCase().includes(d.name.toLowerCase()) ||
	    fromValue.toLowerCase().includes(d.country.toLowerCase())
	);

	const toDestination = destinationsData.find(
	  (d) =>
	    toValue.toLowerCase().includes(d.name.toLowerCase()) ||
	    toValue.toLowerCase().includes(d.country.toLowerCase())
	);

    const fromAirport = fromDestination
      ? fromDestination.airport
      : `${fromValue}`;
    const toAirport = toDestination
      ? toDestination.airport
      : `${toValue}`;

	  
	  // Avoid duplicating the country
	  const formatLocation = (value, destination) => {
	    if (!destination?.country) return value;
	    const country = destination.country;
	    return value.toLowerCase().includes(country.toLowerCase())
	      ? value // country already included
	      : `${value}, ${country}`;
	  };

	  // Flight data
	  const flight = {
	    from: formatLocation(fromValue, fromDestination),
	    to: formatLocation(toValue, toDestination),
	    airport: `${fromAirport} → ${toAirport}`,
	    departureDate: departureValue,
	    departureTime: fromDestination?.departureTime || "08:00 AM",
	    returnDate: returnValue,
	    returnTime: toDestination?.returnTime || "06:00 PM",
	    flightClass: "Economy",
	    tripType: tripTypeValue,
	    price: Math.floor(Math.random() * 500 + 100),
	  };

    // Create the flight result card
    const card = document.createElement("div");
    card.classList.add("flight_details-container");

    card.innerHTML = `
      <div class="flight_departure-details">
        <p><b>${flight.from} → ${flight.to}</b></p>
        <p>${flight.airport}</p>
        <p>Departure: ${flight.departureDate} ${flight.departureTime}</p>
      </div>

      <div class="flight_return-details">
        ${
          tripTypeValue === "Round Trip"
            ? `<p>Return: ${flight.returnDate} ${flight.returnTime}</p>`
            : ""
        }
        <p>Class: ${flight.flightClass} | ${flight.tripType}</p>
      </div>

      <div class="flight_price-details">
        <p style="color: green; font-weight: 600;">💲${flight.price}</p>
      </div>

      <div class="select-btn">
        <button type="button">Select</button>
      </div>
    `;

    resultsContainer.appendChild(card);
	
	//Number of results generated
    resultsCount.textContent = "??? Result";
  });
});
