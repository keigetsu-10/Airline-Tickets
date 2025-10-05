document.addEventListener("DOMContentLoaded", () => {
  const departureInput = document.getElementById("departureDate");
  const returnInput = document.getElementById("returnDate");
  const tripTypeSelect = document.getElementById("tripType");

  if (!departureInput || !returnInput || !tripTypeSelect) return;

  // Get date today (disable past dates)
  const today = new Date();
  const yyyy = today.getFullYear();
  const mm = String(today.getMonth() + 1).padStart(2, "0");
  const dd = String(today.getDate()).padStart(2, "0");
  const todayStr = `${yyyy}-${mm}-${dd}`;

  // Apply min date to both inputs
  departureInput.min = todayStr;
  returnInput.min = todayStr;

  // Update return date range when departure changes
  departureInput.addEventListener("change", () => {
    const depDate = departureInput.value;

    if (depDate) {
      returnInput.min = depDate;

      if (returnInput.value && returnInput.value < depDate) {
        alert("⚠️ Return date cannot be earlier than your departure date.");
        returnInput.value = "";
      }
    } else {
      returnInput.min = todayStr;
    }
  });

  // Prevent selecting past dates manually
  departureInput.addEventListener("input", () => {
    if (departureInput.value < todayStr) {
      alert("⚠️ You cannot select a past departure date.");
      departureInput.value = "";
    }
  });

  returnInput.addEventListener("input", () => {
    if (returnInput.value < todayStr) {
      alert("⚠️ You cannot select a past return date.");
      returnInput.value = "";
    }
  });

  // Handle trip type (Round Trip vs One Way)
  function handleTripTypeChange() {
    const tripType = tripTypeSelect.value;

    if (tripType === "One Way") {
      returnInput.disabled = true;
      returnInput.value = "";
      returnInput.classList.add("disabled-field");
    } else {
      returnInput.disabled = false;
      returnInput.classList.remove("disabled-field");
    }
  }

  // Run once on load & whenever trip type changes
  handleTripTypeChange();
  tripTypeSelect.addEventListener("change", handleTripTypeChange);
});
