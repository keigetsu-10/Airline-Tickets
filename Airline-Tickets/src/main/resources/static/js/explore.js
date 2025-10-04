document.addEventListener("DOMContentLoaded", function () {
  fetch("/json/destinations.json")
    .then((response) => response.json())
    .then((data) => {
      const exploreContainer = document.querySelector(".explore_container");

      // Load saved favorites
      const favorites = JSON.parse(localStorage.getItem('favorites')) || [];

      // Exclude the Top Destinations
      const exploreDestinations = data.destinations.filter(
        (dest) =>
          !["Paris", "Beijing", "Jeju Island", "Marina Bay Sands", "London", "Mount Fuji"].includes(dest.name)
      );

      exploreDestinations.forEach((dest) => {
        const imageFile = `/images/${dest.name.replace(/\s+/g, '')}.jpg`;

        const card = document.createElement("div");
        card.classList.add("explore_card");

        // Check if this destination is already favorited
        const isActive = favorites.some(fav => fav.name === dest.name) ? 'active' : '';

        card.innerHTML = `
          <svg class="star-icon ${isActive}" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 640">
            <path d="M341.5 45.1C337.4 37.1 329.1 32 320.1 32C311.1 32 302.8 37.1 298.7 45.1L225.1 189.3L65.2 214.7C56.3 216.1 48.9 222.4 46.1 231C43.3 239.6 45.6 249 51.9 255.4L166.3 369.9L141.1 529.8C139.7 538.7 143.4 547.7 150.7 553C158 558.3 167.6 559.1 175.7 555L320.1 481.6L464.4 555C472.4 559.1 482.1 558.3 489.4 553C496.7 547.7 500.4 538.8 499 529.8L473.7 369.9L588.1 255.4C594.5 249 596.7 239.6 593.9 231C591.1 222.4 583.8 216.1 574.8 214.7L415 189.3L341.5 45.1z"/>
          </svg>
          <p class="explore_txt">${dest.name}</p>
          <img class="explore_img" src="${imageFile}" alt="${dest.name}">
        `;

        exploreContainer.appendChild(card);
      });

      // IMPORTANT: Attach star click handlers AFTER all cards are created
      document.querySelectorAll('.star-icon').forEach(star => {
        star.addEventListener('click', function(e) {
          e.stopPropagation();
          
          console.log('Star clicked!'); // Debug
          
          // Toggle active class
          star.classList.toggle('active');
          
          // Get destination info
          const card = star.closest('.explore_card');
          const destinationName = card.querySelector('.explore_txt').innerText;
          const img = card.querySelector('.explore_img');
          
          // Get the image URL and convert to absolute
          let imageUrl = img.getAttribute('src');
          if (imageUrl && !imageUrl.startsWith('http')) {
            imageUrl = window.location.origin + imageUrl;
          }
          
          console.log('Destination:', destinationName);
          console.log('Image URL:', imageUrl);
          
          // Save/remove from favorites using functions from Home.jsp
          if (star.classList.contains('active')) {
            addToFavorites(destinationName, imageUrl);
          } else {
            removeFromFavorites(destinationName);
          }
        });
      });

      // Add click handlers for card navigation (to populate the "to" field)
      document.querySelectorAll('.explore_card').forEach(card => {
        card.addEventListener("click", function(e) {
          // Don't navigate if clicking the star
          if (e.target.closest('.star-icon')) {
            return;
          }
          
          const destinationName = card.querySelector('.explore_txt').innerText;
          const departureInput = document.getElementById("to");
          if (departureInput) {
            // You'll need to get country from your data
            departureInput.value = destinationName;
          } else {
            console.warn("Departure input not found!");
          }
        });
      });

      console.log('Explore cards loaded. Total stars:', document.querySelectorAll('.star-icon').length);
    })
    .catch((error) => console.error("Error loading destinations:", error));
});