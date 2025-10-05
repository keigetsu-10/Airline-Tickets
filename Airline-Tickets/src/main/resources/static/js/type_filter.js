document.addEventListener("DOMContentLoaded", function () {
  let destinationsData = [];

  const fromInput = document.getElementById("from");
  const toInput = document.getElementById("to");
  const fromSuggestions = document.getElementById("from-suggestions");
  const toSuggestions = document.getElementById("to-suggestions");

  // Disable inputs until JSON is loaded
  fromInput.disabled = true;
  toInput.disabled = true;

  // Fetch destination list - API TO BE INSERTED
  fetch("/json/destinations.json")
    .then(res => res.json())
    .then(data => {
      destinationsData = data.destinations;
      console.log("Destinations loaded:", destinationsData);
      fromInput.disabled = false;
      toInput.disabled = false;
    })
    .catch(err => console.error("❌ Error loading destinations:", err));

  function showSuggestions(inputElem, suggestionsElem, value) {
    const search = value.trim().toLowerCase();
    suggestionsElem.innerHTML = "";

    if (!search || destinationsData.length === 0) return;

    // Filter destination names or countries starting with the search term
    const results = destinationsData
      .filter(d =>
        d.name.toLowerCase().startsWith(search) ||
        d.country.toLowerCase().startsWith(search)
      )
      .slice(0, 5);

    console.log("Filtered results:", results);

    if (results.length === 0) {
      const li = document.createElement("li");
      li.textContent = "No results found";
      li.style.color = "#aaa";
      li.style.pointerEvents = "none";
      suggestionsElem.appendChild(li);
      return;
    }

    // Generate highlighted suggestion list
    results.forEach(dest => {
      const name = dest.name || "(Unknown Name)";
      const country = dest.country || "(Unknown Country)";

      // Highlight match in name/country
      const highlight = (text) => {
        if (text.toLowerCase().startsWith(search)) {
          return `<strong>${text.substring(0, search.length)}</strong>${text.substring(search.length)}`;
        }
        return text;
      };

      const nameHighlighted = highlight(name);
      const countryHighlighted = highlight(country);

      const li = document.createElement("li");
      li.innerHTML = `${nameHighlighted}, ${countryHighlighted}`;
      li.addEventListener("click", () => {
        inputElem.value = `${name}, ${country}`;
        suggestionsElem.innerHTML = "";
      });
      suggestionsElem.appendChild(li);
    });
  }

  fromInput.addEventListener("input", e => {
    showSuggestions(fromInput, fromSuggestions, e.target.value);
  });

  toInput.addEventListener("input", e => {
    showSuggestions(toInput, toSuggestions, e.target.value);
  });

  // Hide suggestions when clicking outside
  document.addEventListener("click", e => {
    if (!fromInput.contains(e.target)) fromSuggestions.innerHTML = "";
    if (!toInput.contains(e.target)) toSuggestions.innerHTML = "";
  });
});

// Flight search validation + redirect
document.addEventListener("DOMContentLoaded", function () {
  const searchBtn = document.getElementById("search-btn");
  const fromInput = document.getElementById("from");
  const toInput = document.getElementById("to");
  const departureInput = document.getElementById("departureDate");
  const returnInput = document.getElementById("returnDate");

  searchBtn.addEventListener("click", function (e) {
    e.preventDefault();

    const from = fromInput.value.trim();
    const to = toInput.value.trim();
    const departureDate = departureInput.value.trim();
    const returnDate = returnInput.value.trim();

    // Validate all fields
    if (!from || !to || !departureDate || !returnDate) {
      alert("⚠️ Please complete all fields before proceeding.");
      return;
    }

    // Redirect to /Flight/Options with query parameters
    const params = new URLSearchParams({
      from: from,
      to: to,
      departureDate: departureDate,
      returnDate: returnDate
    });

    window.location.href = `/Flight/Options?${params.toString()}`;
  });
});