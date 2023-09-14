<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Reservation Details</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
             font-family: Andale Mono, monospace;
            background-image: url('img/21200687.jpg'); /* Specify the path to your background image */
            background-size: cover; /* Ensure the image covers the entire background */
            background-repeat: no-repeat; /* Prevent the image from repeating */
            background-attachment: fixed; /* Keep the image fixed while scrolling */
            text-align: center;
        }

        .container {
            max-width: 400px;
		    margin: 0 auto;
		    padding: 20px;
		    background-color:rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
		    border-radius: 5px;
		    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        h2 {
            color: #333;
        }

        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }

        input[type="text"] {
            width: 90%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="hidden"] {
            display: none; /* Hidden input for busId */
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .icon {
            margin-right: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2><i class="fas fa-bus icon"></i> Your Bus Details</h2>
        <p><i class="fas fa-bus icon"></i> Bus Number: ${bus.busNumber}</p>
        <p><i class="fas fa-bus icon"></i> Bus Name: ${bus.busName}</p>
        <p><i class="fas fa-map-marker-alt icon"></i> Departure City: ${bus.departureCity}</p>
        <p><i class="fas fa-map-marker-alt icon"></i> Arrival City: ${bus.arrivalCity}</p>
        <p><i class="fas fa-calendar-alt icon"></i> Departure Date: ${bus.dateOfDeparture}</p>
        <p><i class="fas fa-clock icon"></i> Estimated Duration: ${bus.estimatedDuration}</p>

        <h2><i class="fas fa-user icon"></i> Enter Passenger Details</h2>
        <form action="confirmReservation" method="post">
            <label for="firstName"><i class="fas fa-user icon"></i> First Name</label>
            <input type="text" id="firstName" name="firstName" required>

            <label for="lastName"><i class="fas fa-user icon"></i> Last Name</label>
            <input type="text" id="lastName" name="lastName" required>

            <label for="email"><i class="fas fa-envelope icon"></i> Email</label>
            <input type="text" id="email" name="email" required>

            <label for="phone"><i class="fas fa-phone icon"></i> Phone</label>
            <input type="text" id="phone" name="phone" required>

            <input type="hidden" name="busId" value="${bus.id}">

            <h2><i class="fas fa-credit-card icon"></i> Enter Payment Details</h2>
            <label for="cardNumber"><i class="fas fa-credit-card icon"></i> Card Number</label>
            <input type="text" id="cardNumber" name="cardNumber" required>

            <label for="nameOnTheCard"><i class="fas fa-user icon"></i> Name on the Card</label>
            <input type="text" id="nameOnTheCard" name="nameOnTheCard" required>

            <label for="cvv"><i class="fas fa-lock icon"></i> CVV</label>
            <input type="text" id="cvv" name="cvv" required>

            <label for="expiryDate"><i class="fas fa-calendar-alt icon"></i> Expiry Date</label>
            <input type="text" id="expiryDate" name="expiryDate" required>

            <input type="submit" value="Complete Reservation">
            
            <div class="form-group">
			    <a href="index.html" class="home-button" style="margin-top: 10px; display: block; text-align: center;">Go Back to Home</a>
			</div>
        </form>
    </div>
</body>
</html>
