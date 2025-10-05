document.addEventListener("DOMContentLoaded", function () {
  fetch("/json/destinations.json")
    .then((response) => response.json())
    .then((data) => {
      const exploreContainer = document.querySelector(".explore_container");

      // 🧩 Load saved favorites
      const favorites = JSON.parse(localStorage.getItem("favorites")) || [];

      // 🧭 Exclude Top Destinations
      const excluded = ["Paris", "Beijing", "Jeju Island", "Marina Bay Sands", "London", "Mount Fuji"];
      const exploreDestinations = data.destinations.filter(dest => !excluded.includes(dest.name));

      // 🧱 Build destination cards
      exploreDestinations.forEach((dest) => {
        const imageFile = `/images/${dest.name.replace(/\s+/g, "")}.jpg`;
        const card = document.createElement("div");
        card.classList.add("explore_card");

        // ✅ Check if destination is already favorited
        const isActive = favorites.some(fav => fav.name === dest.name) ? "active" : "";

        card.innerHTML = `
          <svg class="star-icon ${isActive}" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 640">
            <path d="M341.5 45.1C337.4 37.1 329.1 32 320.1 32C311.1 32 302.8 37.1 298.7 45.1L225.1 189.3L65.2 214.7C56.3 216.1 48.9 222.4 46.1 231C43.3 239.6 45.6 249 51.9 255.4L166.3 369.9L141.1 529.8C139.7 538.7 143.4 547.7 150.7 553C158 558.3 167.6 559.1 175.7 555L320.1 481.6L464.4 555C472.4 559.1 482.1 558.3 489.4 553C496.7 547.7 500.4 538.8 499 529.8L473.7 369.9L588.1 255.4C594.5 249 596.7 239.6 593.9 231C591.1 222.4 583.8 216.1 574.8 214.7L415 189.3L341.5 45.1z"/>
          </svg>
          <p class="explore_txt">${dest.name}</p>
          <img class="explore_img" src="${imageFile}" alt="${dest.name}">
        `;

        exploreContainer.appendChild(card);
      });

      // ⭐ STAR CLICK HANDLER
      document.querySelectorAll(".star-icon").forEach((star) => {
        star.addEventListener("click", function (e) {
          e.stopPropagation();

          const card = star.closest(".explore_card");
          const destinationName = card.querySelector(".explore_txt").innerText;
          const img = card.querySelector(".explore_img");

          // 🖼️ Get full image URL
          let imageUrl = img.getAttribute("src");
          if (imageUrl && !imageUrl.startsWith("http")) {
            imageUrl = window.location.origin + imageUrl;
          }

          // 🚫 Block guests before toggling
          if (typeof isLoggedIn === "undefined" || !isLoggedIn) {
            alert("Please log in to add favorites.");
            window.location.href = "/login";
            return;
          }

          // ✅ Logged-in: toggle favorite
          const isNowActive = !star.classList.contains("active");

          if (isNowActive) {
            star.classList.add("active");
            addToFavorites(destinationName, imageUrl);
          } else {
            star.classList.remove("active");
            removeFromFavorites(destinationName);
          }
        });
      });

      // ✈️ CARD CLICK HANDLER — autofill “To” input
      document.querySelectorAll(".explore_card").forEach((card) => {
        card.addEventListener("click", function (e) {
          // Ignore clicks on stars
          if (e.target.closest(".star-icon")) return;

          const destinationName = card.querySelector(".explore_txt").innerText;
          const toInput = document.getElementById("to");

          if (toInput) {
            toInput.value = destinationName;
          } else {
            console.warn("⚠️ Destination input not found!");
          }
        });
      });

      console.log(`✅ Explore cards loaded: ${document.querySelectorAll(".explore_card").length}`);
    })
    .catch((error) => console.error("❌ Error loading destinations:", error));
});
