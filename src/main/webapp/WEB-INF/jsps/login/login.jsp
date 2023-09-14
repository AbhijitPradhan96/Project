<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    
    <style>
			    
        body {
            font-family: Andale Mono, monospace;
            background-image: url('img/bus-009.jpg'); /* Specify the path to your background image */
            background-size: cover; /* Ensure the image covers the entire background */
            background-repeat: no-repeat; /* Prevent the image from repeating */
            background-attachment: fixed; /* Keep the image fixed while scrolling */
            text-align: center;
        }
        
        .login-container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.7); /* Semi-transparent white background */
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        
        h2 {
            color: #333;
        }
        
        .error-message {
            color: #ff0000; /* Red color for error message */
        }
        
        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }
        
        label {
            font-weight: bold;
        }
        
        input[type="text"],
        input[type="password"] {
            width: 90%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        
        button {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 25px;
            cursor: pointer;
            transition: background-color 0.3s, color 0.3s;
            display: block; /* Make the button a block-level element */
            margin: 0 auto; /* Center the button horizontally */
        }
        
        button:hover {
            background-color: #0056b3;
        }
        
        .home-button {
            background-color: #007bff;
            color: #fff;
            padding: 10px 25px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            font-size: 16px;
            transition: background-color 0.3s, color 0.3s;
            display: block; /* Make the button a block-level element */
            margin: 0 auto; /* Center the button horizontally */
            margin-top: 10px;
            text-align: center;
        }
        
        .home-button:hover {
            background-color: #0056b3;
        }
    
    </style>
   
</head>
<body>
    <div class="login-container">
        <h2>Login Here</h2>
        <p class="error-message">${error}</p>
        <form action="verifyLogin" method="post">
            <div class="form-group">
                <label for="emailId"><i class="fas fa-envelope"></i> Email:</label>
                <input type="text" id="emailId" name="emailId" required>
            </div>
            <div class="form-group">
                <label for="password"><i class="fas fa-lock"></i> Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <button type="submit"><i class="fas fa-sign-in-alt"></i> Login</button>
            </div>
            
            <div class="form-group">
			    <a href="index.html" class="home-button" style="margin-top: 10px; display: block; text-align: center;">Go Back to Home</a>
			</div>
        </form>
    </div>
</body>
</html>
