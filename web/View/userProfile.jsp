<%-- 
    Document   : userProfile
    Created on : Feb 18, 2022, 10:07:40 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Profile Page</title>
        <style>
            .card {
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
                max-width: 300px;
                margin: auto;
                text-align: center;
                font-family: arial;
            }

            .title {
                color: grey;
                font-size: 18px;
            }

            button {
                border: none;
                outline: 0;
                display: inline-block;
                padding: 8px;
                color: white;
                background-color: #000;
                text-align: center;
                cursor: pointer;
                width: 100%;
                font-size: 18px;
            }

            a {
                text-decoration: none;
                font-size: 22px;
                color: black;
            }

            button:hover, a:hover {
                opacity: 0.7;
            }
        </style>
    </head>
    <body>
        <div class="container">
        <jsp:include page="UserNavBar.jsp"/>
        <h2 style="text-align:center"></h2>
        <div class="card">
            <h1>Welcome, ${sessionScope.customer.name}</h1>
            <p class="title">${sessionScope.customer.email}</p>
            <p>${sessionScope.customer.phoneNo}</p>        
        </div>
        <br>
        <div class="d-flex justify-content-center">
        <h1>Your Booking</h1>
        </div>
            <h3>${requestScope.msg}</h3>
            <div class="card text-white bg-dark mb-3" style="max-width: 18rem;">
                <div class="card-header">Boooked by: ${sessionScope.customer.name}</div>
                <div class="card-body">
                    <h5 class="card-title">${sessionScope.booking.beds}</h5>
                    <p class="card-text">Check in date: ${sessionScope.booking.date}</p>
                    <p class="card-text">Booked for: ${sessionScope.booking.days} days</p>
                    <p class="card-text">Total payment ${sessionScope.booking.payment}</p>
                </div>
            </div>
                <div class="col-md-4">
                    <a href="../AddBookingController" class="btn btn-success btn-lg" role="button" data-bs-toggle="button">Confirm Booking</a>     
                </div>
                <br>
                <div class="col-md-4">
                    <a href="../RemoveBookingController" class="btn btn-secondary btn-lg" role="button" data-bs-toggle="button">Cancel Booking</a>     
                </div>
        </div>
    </body>
</html>
