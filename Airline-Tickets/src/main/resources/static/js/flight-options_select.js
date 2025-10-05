document.addEventListener("DOMContentLoaded", () => {
  // Attach click handlers to all "Select" buttons
  const selectButtons = document.querySelectorAll(".select-btn button");

  selectButtons.forEach((button) => {
    button.addEventListener("click", () => {
      handleSelect();
    });
  });
});