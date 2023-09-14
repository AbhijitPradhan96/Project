<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Confirmation</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            font-family: Andale Mono, monospace;
            background-color: #f4f4f4;
            background-image: url('img/bus_001.jpg'); /* Specify the path to your background image */
            background-size: cover; /* Ensure the image covers the entire background */
            background-repeat: no-repeat; /* Prevent the image from repeating */
            background-attachment: fixed; /* Keep the image fixed while scrolling */
            text-align: center;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            background-color: rgba(255, 255, 255, 0.7);
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        h2 {
            color: #333;
        }

        .confirmation-message {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .home-button {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            font-size: 16px;
            
        }

        .home-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Confirmation</h2>
        <p class="confirmation-message"><i class="far fa-check-circle"></i>Your ticket is booked. Your Reservation ID is: ${reservationId}</p>
        
        <a href="index.html" class="home-button">Go Back to Home</a>
    </div>
</body>
</html>
