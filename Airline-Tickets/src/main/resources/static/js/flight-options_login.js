
function handleSelect() {

  const isLoggedIn = window.isLoggedIn;

  if (!isLoggedIn) {
    alert("⚠️ You must log in first before selecting a flight.");
    window.location.href = "/login";
  } else {
    window.location.href = "/book/confirm";
  }
}
