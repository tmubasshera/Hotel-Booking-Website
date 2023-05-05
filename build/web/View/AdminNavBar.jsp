<%-- 
    Document   : AdminNavBar
    Created on : Feb 18, 2022, 10:49:56 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" crossorigin="anonymous">       
        
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" >AYU HOTELS</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="/Hotel_Booking_Website/View/adminhome.jsp">Home <span class="sr-only">(current)</span></a>
                        </li>
                        
                       
                        <li class="nav-item">
                            <a href="/Hotel_Booking_Website/View/insertOneRoom.jsp" class="btn btn-sm btn-outline-secondary" role="button" data-bs-toggle="button">Enter New Room</a>
                        </li>
                        <li class="nav-item">
                            <a href="/Hotel_Booking_Website/View/UpdateRoomPrice.jsp" class="btn btn-sm btn-outline-secondary" role="button" data-bs-toggle="button">Update Room Price</a>          
                        </li>
                        <li class="nav-item">
                           <a href="/Hotel_Booking_Website/View/deleteOneRoom.jsp" class="btn btn-sm btn-outline-secondary" role="button" data-bs-toggle="button">Delete Room</a> 
                        </li>
                        
                        
                        <li class="nav-item">
                            <a class="nav-link" href="/Hotel_Booking_Website/View/home.jsp">Log Out</a>
                        </li>
                </div>
            </nav>
    </body>
</html>

