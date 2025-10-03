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

	<style>
	
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
	      margin: 6rem auto 20px;
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
	      grid-template-columns: 1fr 1fr;
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
	
	</style>

</head>
<body>

	<nav class="navbar">
	  <div class="nav-center">
	    <ul class="nav-links">
	      <li><a href="/Home">Home</a></li>
	      <li><a href="/Home#explore">Explore</a></li>
	      <li><a href="/Flight/Options">Book </a></li>
	      <li><a class="active" href="account_container">Manage</a></li>
	    </ul>
	  </div>
	  <div class="nav-right">
		<ul class="nav-links">
	      <li><a href="/login">Login / Sign-up</a></li>
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
	
	  <h3 class="user-name">Hi, <span id="userNameSpan"></span>!</h3>
	  	
	    <button class="active">Profile</button>
	    <button>Favorites</button>
	    <button>Booking History</button>
	  </div>
	
	  <div class="content">
	    <h2>Account Settings</h2>
	
	    <div class="profile-section section active">
	      <h3>My Profile</h3>
	      <div class="profile-info">
	        <div>
	          <label>First Name</label>
	          <span id="firstNameSpan"></span>
	          <input type="text" id="firstNameInput" value="" style="display:none;">
	        
	        </div>
	        <div>
	          <label>Last Name</label>
	          <span id="lastNameSpan"></span>
	          <input type="text" id="lastNameInput" value="" style="display:none;">
	          
	        </div>
	        <div>
	          <label>Middle Name</label>
	          <span id="middleNameSpan"></span>
	          <input type="text" id="middleNameInput" value="" style="display:none;">
	          
	        </div>
	        <div>
	          <label>Birth Date</label>
	          <span id="birthDateSpan"></span>
			  <input type="date" id="birthDateInput" value="" style="display:none;" placeholder="DD/MM/YYYY">
	          
	        </div>
	        <div>
	          <label>Phone</label>
	          <span id="phoneNumSpan"></span>
	          <input type="text" id="phoneNumInput" value="" style="display:none;">
	          
	        </div>
	        <div>
	          <label>Email</label>
	          <span id="emailSpan"></span>
	          <input type="email" id="emailInput" value="" style="display:none;">
	          
	        </div>
	        <div>
	          <label>Password</label>
	          <span id="passwordSpan"></span>
	          <input type="password" id="passwordInput" value="" style="display:none;">
	          
	        </div>
	      </div>
	      <button id="editBtn" class="edit-btn" onclick="enableEdit()">Edit</button>
  		  <button id="saveBtn" class="edit-btn" onclick="saveChanges()" style="display:none;">Save</button>
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
	    
	  </div>
	  
	</div>
	
	<script>
	
	//  NAVBAR JS 
	  document.addEventListener("DOMContentLoaded", () => {
		  const navLinks = document.querySelectorAll(".nav-links a");
		  const currentUrl = window.location.pathname;

		  // Highlight the link that matches current URL
		  navLinks.forEach(link => {
		    if (link.getAttribute("href") === currentUrl) {
		      link.classList.add("active");
		    }

		    // Add click event listener for manual switching
		    link.addEventListener("click", () => {
		      navLinks.forEach(l => l.classList.remove("active"));
		      link.classList.add("active");
		    });
		  });
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
	      // Remove active class from all buttons
	      document.querySelectorAll(".sidebar button").forEach(btn => btn.classList.remove("active"));
	      button.classList.add("active");

	      // Hide all sections
	      document.querySelectorAll(".section").forEach(sec => sec.classList.remove("active"));

	      // Show the section based on which button is clicked
	      if (button.textContent === "Profile") {
	        document.querySelector(".profile-section").classList.add("active");
	      } else if (button.textContent === "Favorites") {
	        document.querySelector(".favorites-section").classList.add("active");
	      } else if (button.textContent === "Booking History") {
	        document.querySelector(".history-section").classList.add("active");
	      }
	    });
	  });
	
	//  Change Photo 
	function previewImage(event) {
		const reader = new FileReader();
		reader.onload = function() {
			const imageData = reader.result;
			document.getElementById('profileImage').src = imageData;
	
			// Save image to localStorage
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
		  let password = document.getElementById('passwordInput').value;


		  document.getElementById('firstNameSpan').innerText = firstName;
		  document.getElementById('lastNameSpan').innerText = lastName;
		  document.getElementById('middleNameSpan').innerText = middleName;
		  document.getElementById('birthDateSpan').innerText = formattedBirthDate || "Not set";
		  document.getElementById('phoneNumSpan').innerText = phoneNum;
		  document.getElementById('emailSpan').innerText = email;
		  document.getElementById('passwordSpan').innerText = "******";

		  // Username = firstName
		  document.getElementById('userNameSpan').innerText = firstName;

		  // Save to localStorage
		  localStorage.setItem("firstName", firstName);
		  localStorage.setItem("lastName", lastName);
		  localStorage.setItem("middleName", middleName);
		  localStorage.setItem("birthDateIso", birthDateIso);
		  localStorage.setItem("birthDateFormatted", formattedBirthDate);
		  localStorage.setItem("phoneNum", phoneNum);
		  localStorage.setItem("email", email);
		  localStorage.setItem("password", password);
		  localStorage.setItem("username", firstName); 

		  // Hide inputs and show spans
		  const spans = document.querySelectorAll('.profile-info span');
		  const inputs = document.querySelectorAll('.profile-info input');
		  
		  spans.forEach(span => span.style.display = "block");
		  inputs.forEach(input => input.style.display = "none");

		  document.getElementById('editBtn').style.display = "inline-block";
		  document.getElementById('saveBtn').style.display = "none";
		}
	
	window.onload = function() {
		 if (localStorage.getItem("profileImage")) {
		    document.getElementById('profileImage').src = localStorage.getItem("profileImage");
		  }
		  if (localStorage.getItem("firstName")) {
		    document.getElementById('firstNameSpan').innerText = localStorage.getItem("firstName");
		    document.getElementById('firstNameInput').value = localStorage.getItem("firstName");
		    document.getElementById('userNameSpan').innerText = localStorage.getItem("firstName"); // ✅ load username
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
		  if (localStorage.getItem("password")) {
			  document.getElementById('passwordSpan').innerText = "******";
			  document.getElementById('passwordInput').value = localStorage.getItem("password");
			}
		};
	
	</script>
	

</body>
</html>