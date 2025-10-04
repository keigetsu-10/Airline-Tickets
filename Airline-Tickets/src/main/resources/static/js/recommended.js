document.addEventListener("DOMContentLoaded", function () {
  fetch("/json/destinations.json")
    .then((response) => response.json())
    .then((data) => {
      const recommendedContainer = document.querySelector(".recommendations_destination");

      const recommendedDestinations = data.destinations.filter((dest) =>
        ["Paris", "Beijing", "Jeju Island", "Marina Bay Sands", "London", "Mount Fuji"].includes(dest.name)
      );

      recommendedDestinations.forEach((dest) => {
        const card = document.createElement("div");
        card.classList.add("recommendations_card");

        const imageFile = `/images/${dest.name.replace(/\s+/g, '')}.jpg`;

        card.innerHTML = `
          <p class="recommendations_txt">${dest.name},<br>${dest.country}</p>
          <img class="recommendations_img" src="${imageFile}" alt="${dest.name}">
        `;

        // Clickable Image
        card.addEventListener("click", () => {
          const departureInput = document.getElementById("to");
          if (departureInput) {
            departureInput.value = dest.name + ', ' + dest.country;
          } else {
            console.warn("Departure input not found!");
          }
        });

        recommendedContainer.appendChild(card);
      });
    })
    .catch((error) => console.error("Error loading recommended:", error));
});
