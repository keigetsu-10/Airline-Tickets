<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style> 
          * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
         }
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #ededed;
            margin: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        
        .progressbar {
         display: flex;
         align-items: center;
         justify-content: center;
         margin: 110px auto;
         font-family: Arial, sans-serif;
         }

         .step {
          display: flex;
          flex-direction: column;
          align-items: center;
          position: relative;
          margin: 0 10px;
        }

         .circle {
         width: 30px;
         height: 30px;
         border-radius: 50%;
         background: #ccc;
         color: white;
         display: flex;
         align-items: center;
         justify-content: center;
         font-weight: bold;
      }

         .step p {
         margin-top: 5px;
         font-size: 14px;
         color: #333;
      }

         .line {
         width: 60px;
         height: 2px;
         background: #ccc;
  }

        .step.completed .circle {
        background: #28a745; /* Green */
  }

       .step.completed p {
        color: #28a745;
  }

        .step.active .circle {
         background: #0d2c54; /* Dark Blue */
  }

        .step.active p {
        color: #0d2c54;
  }

        .line.completed {
         background: #28a745;
   }
        .container {
            display: flex;
            gap: 30px;
            padding: 30px 50px;
            max-width: 1400px;
            margin: 0 auto;
        }

        .form {
            flex: 2;
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
         .return-link {
            display: flex;
            align-items: center;
            font-weight: bold;
            gap: 5px;
            color: #5a7a94;
            text-decoration: none;
            margin-bottom: 20px;
            font-size: 14px;
        }

        h1 {
            color: #1e3a5f;
            font-size: 28px;
            margin-bottom: 10px;
        }
        .passenger-tag {
            color: #9ca3af;
            font-size: 20px;
            margin-bottom: 30px;
        }
        .identi {
            color: #c4cbd8;
            font-size: 12px;
            font-weight: 600;
            letter-spacing: 1px;
            margin-bottom: 20px;
            text-transform: uppercase;
        }
        .form-row {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            margin-bottom: 20px;
        }

        .form-row.two-col {
            grid-template-columns: repeat(2, 1fr);
        }

        .form-row.single-col {
            grid-template-columns: 1fr;
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        label {
            font-size: 14px;
            font-weight: 600;
            color: #1e3a5f;
            margin-bottom: 8px;
        }

        label .required {
            color: #ff3131;
        }
        
        label .optional {
            color: #b4b4b4;
            font-weight: 400;
            font-style: italic;
        }
        input, select {
            padding: 12px;
            border: 1px solid #d1d5db;
            border-radius: 10px;
            width: 170px;
            font-size: 10px;
            font-family: inherit;
        }

        input:focus, select:focus {
            outline: none;
            border-color: #5a7a94;
        }

        input::placeholder {
            font-size: 12px;
            color: #c8c4c4;
        }
        

</style>
</head>
<body> 
 
       
       <div class="progressbar">
       <div class="step completed">
       <div class="circle">1</div>
        <p>Destination & Date</p>
     </div>
    <div class="line completed"></div>

    <div class="step completed">
        <div class="circle">2</div>
        <p>Seat Map</p>
    </div>
    <div class="line completed"></div>

    <div class="step active">
        <div class="circle">3</div>
        <p>Personal Information</p>
    </div>
    <div class="line"></div>

    <div class="step">
        <div class="circle">4</div>
        <p>Confirmation</p>
    </div>
    <div class="line"></div>

    <div class="step">
        <div class="circle">5</div>
        <p>Payment</p>
    </div>
 </div>

    <div class="container">
    <div class ="form">
    
    <a href="#" class="return-link">← Return</a>
    
     <h1>Personal Information <span class="passenger-tag">(Passenger 1)</span></h1>
     
     <form action = "/PersonInfo" method = "POST"> 
     <div class="identi">IDENTIFICATION</div>
     
     <div class="form-row">
     <div class="form-group">
     <label>First Name <span class="required">*</span></label>
     <input type = "text" value = "${user.getFirstName()}" name = "firstName" placeholder = " First Name"/>
    </div>
    
    <div class="form-group">
    <label>Last Name <span class="required">*</span></label>
    <input type = "text" value = "${user.getLastName()}" name = "lastName" placeholder = " Last Name"/>
    </div>
    <div class="form-group">
    <label>Middle Name <span class="optional">(Optional)</span></label>
    <input type = "text" value = "${user.getMiddleName()}" name = "middleName" placeholder = " Middle Name "/>
    </div>
    </div>

    <div class="form-row">
    <div class="form-group">
    <label>Birth Date <span class="required">*</span></label>
    <input type = "date" value = "${user.getBirthDate()}" name = "birthDate"/>
    <div>
</div>
</body>
</html>