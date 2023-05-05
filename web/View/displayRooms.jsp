<%-- 
    Document   : displayRooms
    Created on : Feb 9, 2022, 9:12:08 PM
    Author     : Acer
--%>

<%@page import="DAO.RoomDAO"%>
<%@page import="java.util.List"%>
<%@page import="model.Room"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" crossorigin="anonymous">
        <title>Home</title>
    </head>
    <body>
        
        <div class="container">
            <h1>Available Rooms</h1>
            <div class="row">
                <div class="row justify-content-evenly">
                    <%
                        //List<Room> rl = (List<Room>)session.getAttribute("rl");
                        
                        RoomDAO rdao = new RoomDAO();
                        List<Room> rl = rdao.getAllRooms();

                        for (int i = 0; i < rl.size(); i++) {

                    %>
                    <div class="col-6">
                        <div class="card text-white bg-dark mb-3" style="max-width: 18rem;" >
                            <div class="card-body">
                                <h5 class="card-title"><%=rl.get(i).getBeds()%></h5>
                                <p class="card-text">Price: <%=rl.get(i).getPrice()%> per night</p>
                                
                            </div>
                        </div>
                    </div>
                    <% }%>
                    
                    
                    
                   </div>

            </div> 
            
        </div>
      
    </body>
</html>
