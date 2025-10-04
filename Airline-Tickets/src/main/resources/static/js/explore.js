document.querySelectorAll('.star-icon').forEach(star => {
	    star.addEventListener('click', (e) => {
	      e.stopPropagation();
	      star.classList.toggle('active');
	    });
	  });

document.addEventListener("DOMContentLoaded", function () {
  fetch("/json/destinations.json")
    .then((response) => response.json())
    .then((data) => {
      const exploreContainer = document.querySelector(".explore_container");

      // Exclude the Top Destinations
      const exploreDestinations = data.destinations.filter(
        (dest) =>
          !["Paris", "Beijing", "Jeju Island", "Marina Bay Sands", "London", "Mount Fuji"].includes(dest.name)
      );

      exploreDestinations.forEach((dest) => {
        const imageFile = `/images/${dest.name.replace(/\s+/g, '')}.jpg`;

        const card = document.createElement("div");
        card.classList.add("explore_card");

        card.innerHTML = `
          <svg class="star-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 640">
            <path d="M341.5 45.1C337.4 37.1 329.1 32 320.1 32C311.1 32 302.8 37.1 298.7 45.1L225.1 189.3L65.2 214.7C56.3 216.1 48.9 222.4 46.1 231C43.3 239.6 45.6 249 51.9 255.4L166.3 369.9L141.1 529.8C139.7 538.7 143.4 547.7 150.7 553C158 558.3 167.6 559.1 175.7 555L320.1 481.6L464.4 555C472.4 559.1 482.1 558.3 489.4 553C496.7 547.7 500.4 538.8 499 529.8L473.7 369.9L588.1 255.4C594.5 249 596.7 239.6 593.9 231C591.1 222.4 583.8 216.1 574.8 214.7L415 189.3L341.5 45.1z"/>
          </svg>
          <p class="explore_txt">${dest.name}</p>
          <img class="explore_img" src="${imageFile}" alt="${dest.name}">
        `;
		
		// Clickable image
		card.addEventListener("click", () => {
			const departureInput = document.getElementById("to");
				if (departureInput) {
					departureInput.value = dest.name + ', ' + dest.country; // or dest.name, if you prefer
				} else {
					console.warn("Departure input not found!");
				}
		});

        exploreContainer.appendChild(card);
      });
    })
    .catch((error) => console.error("Error loading destinations:", error));
});
