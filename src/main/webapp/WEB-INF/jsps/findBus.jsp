<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Bus</title>
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

        h2 {
            color: #333;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }

        input[type="text"] {
            width: 90%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
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
    <h2>Find Bus <i class="fas fa-bus icon"></i></h2>
    <form action="findBus" method="post">
        <label for="from">From <i class="fas fa-map-marker-alt icon"></i>:</label>
        <input type="text" id="from" name="from" required>

        <label for="to">To <i class="fas fa-map-marker-alt icon"></i>:</label>
        <input type="text" id="to" name="to" required>

        <label for="departureDate">Departure Date <i class="fas fa-calendar-alt icon"></i>:</label>
        <input type="text" id="departureDate" name="departureDate" required>

        <input type="submit" name="search" value="Search">
        
        
			<div class="form-group">
			    <a href="index.html" class="home-button" style="margin-top: 10px; display: block; text-align: center;">Go Back to Home</a>
			</div>
    </form>
</body>
</html>
