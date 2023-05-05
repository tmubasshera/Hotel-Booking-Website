<%-- 
    Document   : UserNavBar
    Created on : Feb 18, 2022, 10:19:12 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" crossorigin="anonymous">       
        
        <title>Home Page</title>
    </head>
    <body>

        <br>

        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" >AYU HOTELS</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="/Hotel_Booking_Website/View/HomeAfterLogin.jsp">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/Hotel_Booking_Website/View/userProfile.jsp">My Profile</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/Hotel_Booking_Website/View/home.jsp">Log out</a>
                        </li>
                </div>
            </nav>
        </div>

    </body>
</html>


