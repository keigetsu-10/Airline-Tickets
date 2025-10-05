<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>A4Lifers Flight Booking | Profile</title>

	<link rel="stylesheet" type="text/css" href="/css/navbar.css">
	
	
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap" rel="stylesheet">	
	<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700&display=swap" rel="stylesheet">		
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/Footer.css'/>">
    
	<style>
	
	html, body {
         margin: 0;
         padding: 0;
         width: 100%;
         min-height: 10vh; 
         overflow-x: hidden; 
    }
    
	   body {
	      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	      margin: 0;
	      padding: 0;
	      background: #f5f6fa;
	      color: #333;
	   }
	   
	   input[type="date"] {
		  text-transform: uppercase; 
		  letter-spacing: 1px;
		}
	
	   .account-container {
	      display: flex;
	      max-width: 1200px;
	      margin: 6rem auto 8rem;
	      background: #fff;
	      border-radius: 12px;
	      box-shadow: 0 4px 12px rgba(0,0,0,0.05);
	      overflow: hidden;
	   }
	
	   /* Sidebar */
	   .sidebar {
	      width: 220px;
	      background: #f0f2f5;
	      padding: 20px;
	      display: flex;
	      flex-direction: column;
	      gap: 15px;
	   }
	
	   .sidebar h3 {
	      margin-bottom: 10px;
	      font-size: 16px;
	      color: #555;
	   }
	
	   .sidebar button {
	      background: none;
	      border: none;
	      text-align: left;
	      padding: 10px 5px;
	      cursor: pointer;
	      font-size: 14px;
	      border-radius: 6px;
	      transition: background 0.2s;
	   }
	  
	   .profile-pic-container {
		  text-align: center;
		  margin-bottom: 15px;
	   }
		
	   .profile-pic {
		  width: 150px;
		  height: 150px;
		  border-radius: 50%;
		  object-fit: cover;
		  border: 2px solid #ccc;
	   }
		
	   .change-photo {
		  display: block;
		  margin-top: 5px;
		  font-style: 'Nunito', sans-serif;
		  font-size: 14px;
		  font-weight: 500;
		  color: #007bff;
		  cursor: pointer;
	   }
		
	   .user-name {
		  text-align: center;
		  font-size: 24px;
		  margin: -15px 0 20px;
		  color: #333;
	   }
	
	   .content {
	      flex: 1;
	      padding: 30px;
	   }
	
	   .content h2 {
	      margin-top: 0;
	      font-size: 24px;
	      margin-bottom: 20px;
	   }
	
	   /* Profile Section */
	   .profile-section {
	      background: #f9f9fb;
	      padding: 20px;
	      border-radius: 8px;
	      margin-bottom: 20px;
	   }
	
	   .profile-section h3 {
	      margin-top: 0;
	   }
	
	   .profile-info {
	      display: grid;
	      grid-template-columns: 1fr 1fr;
	      gap: 15px;
	   }
	
	   .profile-info div {
	      display: flex;
	      flex-direction: column;
	      margin-bottom: 10px;
	   }
	
	   .profile-info label {
	      font-weight: bold;
	      font-size: 12px;
	      margin-bottom: 5px;
	      color: #666;
	   }
	
	   .profile-info span {
	      font-size: 14px;
	   }
	  
	   .profile-info input {
		  padding: 6px;
		  font-size: 14px;
		  border: 1px solid #ccc;
		  border-radius: 6px;
		  margin-top: 3px;
	   }
	   
	   .edit-btn {
	      background: none;
	      border: 1px solid #ccc;
	      border-radius: 6px;
	      padding: 5px 10px;
	      font-size: 12px;
	      cursor: pointer;
	      align-self: flex-start;
	      margin-top: 10px;
	      transition: all 0.2s;
	   }
	   
	   .logout-btn {
		  background: #ff4d4d;
		  color: white;
		  border: 1px solid #ccc;       
		  border-radius: 6px;
		  padding: 5px 10px;            
		  font-size: 12px;              
		  cursor: pointer;
		  align-self: flex-start;
		  margin-top: 10px;
		  transition: background 0.2s;
		}
	   
	   /* Favorites Section */ 
	   .favorites-section {
	      background: #f9f9fb;
	      padding: 20px;
	      border-radius: 8px;
	      margin-bottom: 20px;
	   }
	
	   .favorites-section h3 {
	      margin-top: 0;
	   }
	
	  .favorites-info {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
        gap: 15px;
       }
	
	   .favorites-info div {
	      display: flex;
	      flex-direction: column;
	      margin-bottom: 10px;
	   }

	   /* History Section */ 
	   .history-section {
	      background: #f9f9fb;
	      padding: 20px;
	      border-radius: 8px;
	      margin-bottom: 20px;
	   }
	
	   .history-section h3 {
	      margin-top: 0;
	   }
	
	   .history-info {
	      display: grid;
	      grid-template-columns: 1fr 1fr;
	      gap: 15px;
	   }
	
	   .history-info div {
	      display: flex;
	      flex-direction: column;
	      margin-bottom: 10px;
	   }
	   
	   .save-password-btn {
	      background: #007bff;
	      color: white;
	      border: none;
	      border-radius: 6px;
	      padding: 8px 15px;
	      font-size: 14px;
	      cursor: pointer;
	      margin-top: 10px;
	      transition: background 0.2s;
		}

	   .change-section {
	      background: #f9f9fb;
	      padding: 20px;
	      border-radius: 8px;
	      margin-bottom: 20px;
	   }
	
	   .change-section h3 {
	      margin-top: 0;
	   }
	
	   .changepass-info {
	      display: grid;
	      grid-template-columns: 1fr 1fr; /* Adjust as needed for password fields */
	      gap: 15px;
	   }
	
	   .changepass-info div {
	      display: flex;
	      flex-direction: column;
	      margin-bottom: 10px;
	   }
	 
	   .changepass-info label {
	      font-weight: bold;
	      font-size: 12px;
	      margin-bottom: 5px;
	      color: #666;
	   }
	
	   .changepass-info input {
		  padding: 6px;
		  font-size: 14px;
		  border: 1px solid #ccc;
		  border-radius: 6px;
		  margin-top: 3px;
	   }
	   
	   /* SECTION: ACTIVE*/
	   .section {
		  display: none; /* Hide sections  */
		}
		
		.section.active {
		  display: block; /* Show the active section */
		}
	   
	   
	   /* EFFECTS */
	   .change-photo:hover {
		  color: #0056b3;
	   }
	 
	   .sidebar button:hover,
	   .sidebar button.active {
	      background: #e0e4f1;
	   }
	
	   .edit-btn:hover {
	      background: #e0e4f1;
	      border-color: #999;
	   }
	   
	   .logout-btn:hover {
		  background: #e60000;
		}
	   
		.save-password-btn:hover {
		  background: #0056b3;
		}

	</style>

</head>
<body>
<nav class="navbar">
	  <div class="nav-center">
	    <ul class="nav-links">
	      <li><a href="/Home">Home</a></li>
	      <li><a href="/Home#explore">Explore</a></li>
	      <li><a href="/Flight/Options">Book</a></li>
	      <li><a  class="active" href="/Manage/Profile">Manage</a></li>
	    </ul>
	  </div>
	  <div class="nav-right">
  <ul class="nav-links">
    <c:choose>
      <c:when test="${not empty log}">
        <li><span>Hi, ${log.firstname}!</span></li>
        <li><a href="/logout">Log Out</a></li>
      </c:when>
      <c:otherwise>
        <li><a href="/login">Login / Sign-up</a></li>
      </c:otherwise>
    </c:choose>
  </ul>
</div>
	</nav>




	<div id="account_container" class="account-container">
	  <div class="sidebar">
	  	<div class="profile-pic-container">
	    <img src="/images/default-profile.jpg" alt="Profile Photo" class="profile-pic" id="profileImage">
	    <span class="change-photo" onclick="document.getElementById('fileInput').click();">
	      Change Photo
	    </span>
	    <input type="file" id="fileInput" accept="image/*" style="display:none;" onchange="previewImage(event)">
	  </div>
	
	  <h3 class="user-name">Hi, <span id="userNameSpan">${user.firstname}</span>!</h3>
	  	
	    <button class="active">Profile</button>
	    <button>Favorites</button>
	    <button>Booking History</button>
	    <button>Change Password</button>
	  </div>
	
	  <div class="content">
	    <h2>Account Settings</h2>
	
	    <div class="profile-section section active">
	      <h3>My Profile</h3>
	      <div class="profile-info">
	        <div>
	          <label>First Name</label>
	          <span id="firstNameSpan">${user.firstname}</span>
	          <input type="text" id="firstNameInput" value="${user.firstname}" style="display:none;">
	        
	        </div>
	        <div>
	          <label>Last Name</label>
	          <span id="lastNameSpan">${user.lastname}</span>
	          <input type="text" id="lastNameInput" value="${user.lastname}" style="display:none;">
	          
	        </div>
	        <div>
	          <label>Middle Name</label>
	          <span id="middleNameSpan">${user.middlename}</span>
	          <input type="text" id="middleNameInput" value="${user.middlename}" style="display:none;">
	          
	        </div>
	        <div>
	          <label>Birth Date</label>
	          <span id="birthDateSpan">${user.bday}</span>
			  <input type="date" id="birthDateInput" value="${user.bday}" style="display:none;" placeholder="DD/MM/YYYY">
	          
	        </div>
	        <div>
	          <label>Phone</label>
	          <span id="phoneNumSpan">${user.phonenum}</span>
	          <input type="text" id="phoneNumInput" value="${user.phonenum}" style="display:none;">
	          
	        </div>
	        <div>
	          <label>Email</label>
	          <span id="emailSpan">${user.email}</span>
	          <input type="email" id="emailInput" value="${user.email}" style="display:none;">
	          
	        </div>
	        </div>
	      <button id="editBtn" class="edit-btn" onclick="enableEdit()">Edit</button>
  		  <button id="saveBtn" class="edit-btn" onclick="saveChanges()" style="display:none;">Save</button>
  		  <button id="logoutBtn" class="logout-btn" onclick="logoutUser()">Log Out</button>
	    </div>
	    <div class="favorites-section section">
	    	<h3>Favorites</h3>
	      <div class="favorites-info">
	       
	      </div>
	
	    </div>
	    
	    <div class="history-section section">
	    	<h3>Booking History</h3>
	      <div class="history-info">
	      </div>
			
	    </div>
	      <div class="change-section section">
	    	<h3>Change Password</h3>
	      <div class="changepass-info">
	      	 <div>
	          <label>Current Password</label>
	          <input type="password" id="currentPasswordInput">
	        </div>
	      	 <div>
	          </div>
	        <div>
	          <label>New Password</label>
	          <input type="password" id="newPasswordInput">
	        </div>
	        <div>
	          <label>Confirm New Password</label>
	          <input type="password" id="confirmPasswordInput">
	        </div>
	       </div>
	       <button id="savePasswordBtn" class="save-password-btn" onclick="changePassword()">Change Password</button>
	      </div>
	    
	  </div>
	 
	</div>
	<jsp:include page="Footer.jsp" />
	
	 
	<script>
// NAVBAR JS 
document.addEventListener("DOMContentLoaded", () => {
  const navLinks = document.querySelectorAll(".nav-links a");
  const currentUrl = window.location.pathname;

  navLinks.forEach(link => {
    if (link.getAttribute("href") === currentUrl) {
      link.classList.add("active");
    }

    link.addEventListener("click", () => {
      navLinks.forEach(l => l.classList.remove("active"));
      link.classList.add("active");
    });
  });
  
  // Load favorites immediately on page load
  loadFavorites();
});

function formatDateToDisplay(dateStr) {
  if (!dateStr || dateStr.indexOf("-") === -1) {
    return "";
  }

  var parts = dateStr.trim().split("-");

  if (parts.length === 3 && parts[0] && parts[1] && parts[2]) {
    return parts[2] + "/" + parts[1] + "/" + parts[0];
  }

  return "";
}

// Sidebar navigation
document.querySelectorAll(".sidebar button").forEach((button, index) => {
  button.addEventListener("click", () => {
    document.querySelectorAll(".sidebar button").forEach(btn => btn.classList.remove("active"));
    button.classList.add("active");

    document.querySelectorAll(".section").forEach(sec => sec.classList.remove("active"));

    if (button.textContent === "Profile") {
      document.querySelector(".profile-section").classList.add("active");
    } else if (button.textContent === "Favorites") {
      document.querySelector(".favorites-section").classList.add("active");
      loadFavorites();
    } else if (button.textContent === "Booking History") {
    	  document.querySelector(".history-section").classList.add("active");
    	  loadBookingHistory(); 
    }
    // Logic for Change Password button
    else if (button.textContent === "Change Password") {
      document.querySelector(".change-section").classList.add("active");
    }
  }); 
});

// Load and display favorites
function loadFavorites() {
  const favorites = JSON.parse(localStorage.getItem('favorites')) || [];
  const favoritesContainer = document.querySelector('.favorites-info');
  
  console.log('Loading favorites from Profile page:', favorites);
  
  if (favorites.length === 0) {
    favoritesContainer.innerHTML = '<p style="grid-column: 1 / -1; text-align: center; color: #999; padding: 40px; font-family: Poppins, sans-serif;">No favorites yet. Visit the Explore section to add destinations!</p>';
    return;
  }
  
  favoritesContainer.innerHTML = '';
  
  favorites.forEach((fav, index) => {
    console.log(`Favorite ${index}:`, fav);
    
    const favCard = document.createElement('div');
    favCard.className = 'favorite-card';
    favCard.setAttribute('data-destination', fav.name);
    favCard.style.cssText = `
      position: relative;
      width: 100%;
      height: 200px;
      border-radius: 8px;
      overflow: hidden;
      box-shadow: 0 2px 8px rgba(0,0,0,0.1);
      transition: transform 0.3s ease;
      background: #f0f0f0;
      cursor: pointer;
    `;
    
    const img = document.createElement('img');
    img.src = fav.image;
    img.alt = fav.name;
    img.style.cssText = 'width: 100%; height: 100%; object-fit: cover; display: block;';
    
    // Add error handler to debug image loading issues
    img.onerror = function() {
      console.error('Failed to load image:', fav.image);
      this.style.background = '#ddd';
      this.alt = 'Image not found: ' + fav.name;
    };
    
    img.onload = function() {
      console.log('Successfully loaded image:', fav.image);
    };
    
    const nameDiv = document.createElement('div');
    nameDiv.style.cssText = `
      position: absolute;
      top: 10px;
      left: 10px;
      color: white;
      font-weight: 600;
      font-size: 14px;
      text-shadow: 2px 2px 4px rgba(0,0,0,0.8);
      font-family: Poppins, sans-serif;
      pointer-events: none;
    `;
    nameDiv.textContent = fav.name;
    
    const svg = document.createElementNS('http://www.w3.org/2000/svg', 'svg');
    svg.setAttribute('class', 'unfavorite-star');
    svg.setAttribute('viewBox', '0 0 640 640');
    svg.style.cssText = `
      position: absolute;
      top: 10px;
      right: 10px;
      width: 30px;
      height: 30px;
      fill: #fbca41;
      opacity: 1;
      cursor: pointer;
      transition: fill 0.3s ease, opacity 0.3s ease;
      z-index: 10;
    `;
    
    const path = document.createElementNS('http://www.w3.org/2000/svg', 'path');
    path.setAttribute('d', 'M341.5 45.1C337.4 37.1 329.1 32 320.1 32C311.1 32 302.8 37.1 298.7 45.1L225.1 189.3L65.2 214.7C56.3 216.1 48.9 222.4 46.1 231C43.3 239.6 45.6 249 51.9 255.4L166.3 369.9L141.1 529.8C139.7 538.7 143.4 547.7 150.7 553C158 558.3 167.6 559.1 175.7 555L320.1 481.6L464.4 555C472.4 559.1 482.1 558.3 489.4 553C496.7 547.7 500.4 538.8 499 529.8L473.7 369.9L588.1 255.4C594.5 249 596.7 239.6 593.9 231C591.1 222.4 583.8 216.1 574.8 214.7L415 189.3L341.5 45.1z');
    svg.appendChild(path);
    
    favCard.appendChild(img);
    favCard.appendChild(nameDiv);
    favCard.appendChild(svg);
    
    favoritesContainer.appendChild(favCard);
    

    svg.addEventListener('click', (e) => {
      e.stopPropagation();
      if (confirm('Are you sure you want to remove "' + fav.name + '" from your favorites?')) {
        unfavoriteDestination(fav.name);
      }
    });
    
    // Hover effects
    svg.addEventListener('mouseenter', () => {
      svg.style.fill = '#808080';
      svg.style.opacity = '0.7';
    });
    
    svg.addEventListener('mouseleave', () => {
      svg.style.fill = '#fbca41';
      svg.style.opacity = '1';
    });
    
    favCard.addEventListener('mouseenter', () => {
      favCard.style.transform = 'scale(1.03)';
    });
    
    favCard.addEventListener('mouseleave', () => {
      favCard.style.transform = 'scale(1)';
    });
  });
}

// Remove destination from favorites
function unfavoriteDestination(destination) {
  console.log('Unfavoriting:', destination);
  
  let favorites = JSON.parse(localStorage.getItem('favorites')) || [];
  favorites = favorites.filter(fav => fav.name !== destination);
  localStorage.setItem('favorites', JSON.stringify(favorites));
  
  console.log('Remaining favorites:', favorites);
  
  // Immediately reload the display
  loadFavorites();
}

//Load and display booking history
function loadBookingHistory() {
  const history = JSON.parse(localStorage.getItem('bookingHistory')) || [];
  const historyContainer = document.querySelector('.history-info');
  
  console.log('Loading booking history:', history);
  
  if (history.length === 0) {
    historyContainer.innerHTML = `
      <p style="grid-column: 1 / -1; text-align: center; color: #999; padding: 40px; font-family: Poppins, sans-serif;">
        No transactions yet. Book a flight to see your history here!
      </p>`;
    return;
  }

  historyContainer.innerHTML = '';

  history.forEach((item, index) => {
    console.log(`Transaction ${index}:`, item);

    const card = document.createElement('div');
    card.className = 'history-card';
    card.style.cssText = `
      background: white;
      border-radius: 8px;
      box-shadow: 0 2px 6px rgba(0,0,0,0.1);
      padding: 15px;
      display: flex;
      flex-direction: column;
      gap: 5px;
    `;

    // Example fields
    card.innerHTML = `
      <strong>Flight:</strong> ${item.flight || 'N/A'}<br>
      <strong>Date:</strong> ${item.date || 'N/A'}<br>
      <strong>Destination:</strong> ${item.destination || 'N/A'}<br>
      <strong>Amount:</strong> ${item.amount ? '$' + item.amount : 'N/A'}
    `;

    historyContainer.appendChild(card);
  });
}


// Change Photo 
function previewImage(event) {
  const reader = new FileReader();
  reader.onload = function() {
    const imageData = reader.result;
    document.getElementById('profileImage').src = imageData;
    localStorage.setItem("profileImage", imageData);
  }
  reader.readAsDataURL(event.target.files[0]);
}

// Edit Profile 
function enableEdit() {
  const spans = document.querySelectorAll('.profile-info span');
  const inputs = document.querySelectorAll('.profile-info input');
  
  spans.forEach(span => span.style.display = "none");
  inputs.forEach(input => input.style.display = "block");

  document.getElementById('editBtn').style.display = "none";
  document.getElementById('saveBtn').style.display = "inline-block";
}

function saveChanges() {
  let firstName = document.getElementById('firstNameInput').value;
  let lastName = document.getElementById('lastNameInput').value;
  let middleName = document.getElementById('middleNameInput').value;
  let birthDateIso = document.getElementById("birthDateInput").value;
  let formattedBirthDate = formatDateToDisplay(birthDateIso);
  let phoneNum = document.getElementById('phoneNumInput').value;
  let email = document.getElementById('emailInput').value;
  // password removed from here

  document.getElementById('firstNameSpan').innerText = firstName;
  document.getElementById('lastNameSpan').innerText = lastName;
  document.getElementById('middleNameSpan').innerText = middleName;
  document.getElementById('birthDateSpan').innerText = formattedBirthDate || "Not set";
  document.getElementById('phoneNumSpan').innerText = phoneNum;
  document.getElementById('emailSpan').innerText = email;
  document.getElementById('userNameSpan').innerText = firstName;

  localStorage.setItem("firstName", firstName);
  localStorage.setItem("lastName", lastName);
  localStorage.setItem("middleName", middleName);
  localStorage.setItem("birthDateIso", birthDateIso);
  localStorage.setItem("birthDateFormatted", formattedBirthDate);
  localStorage.setItem("phoneNum", phoneNum);
  localStorage.setItem("email", email);
  localStorage.setItem("username", firstName);

  const spans = document.querySelectorAll('.profile-info span');
  const inputs = document.querySelectorAll('.profile-info input');
  
  spans.forEach(span => span.style.display = "block");
  inputs.forEach(input => input.style.display = "none");

  document.getElementById('editBtn').style.display = "inline-block";
  document.getElementById('saveBtn').style.display = "none";
}

//Get the password currently stored in local storage
function changePassword() {
    const currentPassword = document.getElementById('currentPasswordInput').value;
    const newPassword = document.getElementById('newPasswordInput').value;
    const confirmPassword = document.getElementById('confirmPasswordInput').value;
    
    
    const storedPassword = localStorage.getItem('password'); 

    if (currentPassword === '' || newPassword === '' || confirmPassword === '') {
        alert("Please fill in all password fields.");
        return;
    }
    
  
    if (currentPassword !== storedPassword) {
        alert("Current password is incorrect.");
        return;
    }

 
    if (newPassword.length < 6) {
        alert("New password must be at least 6 characters long.");
        return;
    }

    if (newPassword !== confirmPassword) {
        alert("New password and confirm password do not match.");
        return;
    }

   
    localStorage.setItem("password", newPassword);
    
    
    document.getElementById('currentPasswordInput').value = '';
    document.getElementById('newPasswordInput').value = '';
    document.getElementById('confirmPasswordInput').value = '';
    
    alert("Password changed successfully! You will need to use this new password for your next login.");
}

window.onload = function() {
  
  const initialJspPassword = "${user.password}".trim(); 
  if (!localStorage.getItem("password") && initialJspPassword) {
      localStorage.setItem("password", initialJspPassword);
      console.log("Password initialized from JSP variable.");
  }


  if (localStorage.getItem("profileImage")) {
    document.getElementById('profileImage').src = localStorage.getItem("profileImage");
  }
  if (localStorage.getItem("firstName")) {
    document.getElementById('firstNameSpan').innerText = localStorage.getItem("firstName");
    document.getElementById('firstNameInput').value = localStorage.getItem("firstName");
    document.getElementById('userNameSpan').innerText = localStorage.getItem("firstName");
  }
  if (localStorage.getItem("lastName")) {
    document.getElementById('lastNameSpan').innerText = localStorage.getItem("lastName");
    document.getElementById('lastNameInput').value = localStorage.getItem("lastName");
  }
  if (localStorage.getItem("middleName")) {
    document.getElementById('middleNameSpan').innerText = localStorage.getItem("middleName");
    document.getElementById('middleNameInput').value = localStorage.getItem("middleName");
  }
  let birthDateIso = localStorage.getItem("birthDateIso");
  if (birthDateIso) {
    document.getElementById("birthDateInput").value = birthDateIso;
    document.getElementById("birthDateSpan").innerText = localStorage.getItem("birthDateFormatted");
  } else {
    let defaultIso = document.getElementById("birthDateInput").value;
    let formattedDefault = formatDateToDisplay(defaultIso);
    document.getElementById("birthDateSpan").innerText = formattedDefault;
  }
  
  if (localStorage.getItem("phoneNum")) {
    document.getElementById('phoneNumSpan').innerText = localStorage.getItem("phoneNum");
    document.getElementById('phoneNumInput').value = localStorage.getItem("phoneNum");
  }
  if (localStorage.getItem("email")) {
    document.getElementById('emailSpan').innerText = localStorage.getItem("email");
    document.getElementById('emailInput').value = localStorage.getItem("email");
  }
  
};


function logoutUser() {
	  if (confirm("Are you sure you want to log out?")) {
	    
    
      let savedPassword = localStorage.getItem("password"); 


	    localStorage.clear();


      if (savedPassword) {
          localStorage.setItem("password", savedPassword);
      }

	    window.location.href = "/logout";
	  }
	}

</script>


</body>
</html>