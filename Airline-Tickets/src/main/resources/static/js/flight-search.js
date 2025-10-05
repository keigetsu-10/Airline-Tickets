// Search button logic
	  document.addEventListener("DOMContentLoaded", function () {
	    const searchBtn = document.getElementById("search-btn");
	    const fromInput = document.getElementById("from");
	    const toInput = document.getElementById("to");
	    const departureInput = document.getElementById("departureDate");
	    const returnInput = document.getElementById("returnDate");

	    searchBtn.addEventListener("click", function (e) {
	      e.preventDefault(); // prevent accidental reload

	      const from = fromInput.value.trim();
	      const to = toInput.value.trim();
	      const departureDate = departureInput.value;
	      const returnDate = returnInput.value;

	      if (!from || !to || !departureDate || !returnDate) {
	        alert("⚠️ Please complete all booking fields before continuing.");
	        return;
	      }

	      const params = new URLSearchParams({
	        from,
	        to,
	        departureDate,
	        returnDate
	      }).toString();

	      const targetUrl = `/Flight/Options?${params}`;
	      window.location.href = targetUrl;
	    });
	  });