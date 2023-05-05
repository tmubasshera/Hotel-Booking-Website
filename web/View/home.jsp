<%-- 
    Document   : home.jsp
    Created on : Feb 9, 2022, 9:06:34 PM
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
            <jsp:include page="GenNavBar.jsp"/>
            <jsp:include page="displayRooms.jsp"/> 
            
            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                <a href="/Hotel_Booking_Website/View/userLogin.jsp" class="btn btn-primary btn-lg">Book</a>
            </div>
        </div>

    </body>
</html>
