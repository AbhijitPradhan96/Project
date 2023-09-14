<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bus Information</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        /* Add background image */
        body {
            background-image: url('img/bus-004.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
            font-family: Andale Mono, monospace;
        }

        /* Style the table */
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.8); /* Add a semi-transparent white background */
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 10px;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f5f5f5;
        }

        /* Style the buttons */
        .action-button {
            background-color: #4CAF50; /* Green background color */
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 5px;
        }

        /* Adjust button styles as needed */
    </style>
</head>
<body>
    <h1>Lists of Buses for your Selected destination</h1>
    <table>
        <thead>
            <tr>
                <th><i class="fas fa-bus"></i> Bus Number</th>
            <th><i class="fas fa-bus"></i> Bus Name</th>
            <th><i class="fas fa-map-marker-alt"></i> Departure City</th>
            <th><i class="fas fa-map-marker-alt"></i> Arrival City</th>
            <th><i class="fas fa-calendar-alt"></i> Date of Departure</th>
            <th><i class="fas fa-clock"></i> Estimated Duration</th>
            <th><i class="fas fa-cogs"></i> Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${findBus}" var="bus">
                <tr>
                    <td>${bus.busNumber}</td>
                    <td>${bus.busName}</td>
                    <td>${bus.departureCity}</td>
                    <td>${bus.arrivalCity}</td>
                    <td>${bus.dateOfDeparture}</td>
                    <td>${bus.estimatedDuration}</td>
                    <td><a href="showCompleteReservation?busId=${bus.id}" class="action-button">Select</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
