<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>New Registration</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    
    <style>
        body {
            font-family: Andale Mono, monospace;
            background-image: url('img/bus_001.jpg'); /* Specify the path to your background image */
            background-size: cover; /* Ensure the image covers the entire background */
            background-repeat: no-repeat; /* Prevent the image from repeating */
            background-attachment: fixed; /* Keep the image fixed while scrolling */
            text-align: center;
        }

     .registration-container {
		    max-width: 400px;
		    margin: 0 auto;
		    padding: 20px;
		    background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
		    border-radius: 5px;
		    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
		}



        h2 {
            color: #333;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 90%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

		       
		input[type="submit"] {
		    background-color: #007bff;
		    color: #fff;
		    border: none;
		    border-radius: 4px;
		    padding: 5px 10px;
		    font-size: 16px;
		    cursor: pointer;
		    transition: background-color 0.3s, color 0.3s;
		    display: block; /* Make the button a block-level element */
		    margin: 0 auto; /* Center the button horizontally */
		}
		
		

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="registration-container">
        <h2><i class="fas fa-user-plus"></i>Create New Account</h2>
        <form action="saveReg" method="post">
           <div class="form-group">
			    <label for="firstName"><i class="fas fa-user"></i> First Name:</label>
			    <input type="text" id="firstName" name="firstName" required>
			</div>
			<div class="form-group">
			    <label for="lastName"><i class="fas fa-user"></i> Last Name:</label>
			    <input type="text" id="lastName" name="lastName" required>
			</div>
			
			<div class="form-group">
			    <label for="email"><i class="fas fa-envelope"></i> Email:</label>
			    <input type="email" id="email" name="email" required>
			</div>
			
			<div class="form-group">
			    <label for="password"><i class="fas fa-lock"></i> Password:</label>
			    <input type="password" id="password" name="password" required>
			</div>
			
			<div class="form-group">
			    <input type="submit" value="Save">
			</div>
			
			<div class="form-group">
			    <a href="index.html" class="home-button" style="margin-top: 10px; display: block; text-align: center;">Go Back to Home</a>
			</div>

        </form>
    </div>
</body>
</html>
