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
	
	  .sidebar button:hover,
	  .sidebar button.active {
	    background: #e0e4f1;
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
	    <button class="active">Profile</button>
	    <button>Favorites</button>
	    <button>Booking History</button>
	  </div>
	
	  <div class="content">
	    <h2>Account Settings</h2>
	
	    <div class="profile-section">
	      <h3>My Profile</h3>
	      <div class="profile-info">
	        <div>
	          <label>First Name</label>
	          <span>Zoe Claudette</span>
	        </div>
	        <div>
	          <label>Last Name</label>
	          <span>Reynaldo</span>
	        </div>
	        <div>
	          <label>Middle Name</label>
	          <span>Nocum</span>
	        </div>
	        <div>
	          <label>Email</label>
	          <span>reynaldozn@students.nu-moa.edu.ph</span>
	        </div>
	        <div>
	          <label>Phone</label>
	          <span>+639123456789</span>
	        </div>
	        <div>
	          <label>Password</label>
	          <span>******</span>
	        </div>
	      </div>
	      <button class="edit-btn">Edit</button>
	    </div>
	  </div>
	</div>

</body>
</html>