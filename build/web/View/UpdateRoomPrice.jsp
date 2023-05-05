<%-- 
    Document   : UpdateRoomPrice
    Created on : Feb 15, 2022, 5:34:48 PM
    Author     : Acer
--%>

<%@page import="java.util.List"%>
<%@page import="model.Room"%>
<%@page import="DAO.RoomDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" crossorigin="anonymous">       
        <title>Update Price</title>
    </head>
    <body>
        <div class="container">
            <h1>Update one of the following Rooms: </h1>
            <jsp:include page="displayRooms.jsp"/>
            

            <form class="well form-horizontal" action="../UpdateRoomController" method="post">

                <div class="form-group">
                    <label class="col-md-4 control-label">Type of Room</label>  
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                            <select name="roomtype" class="form-control">  
                                <%
                                    //List<Room> rl = (List<Room>)session.getAttribute("rl");
                                    RoomDAO rdao = new RoomDAO();
                                    List<Room> rl = rdao.getAllRooms();

                                    for (int i = 0; i < rl.size(); i++) {

                                %>       
                                <option><%=rl.get(i).getBeds()%></option>

                                <% }%>      
                            </select>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label">New Price: </label>  
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                            <input name="price" placeholder="Price of room per night" class="form-control" type="text" required>
                        </div>
                    </div>
                </div>

                <!-- Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label"></label>
                    <div class="col-md-4">
                        <button type="submit" class="btn btn-success" >Update</button>

                    </div>
                </div>
                            
            </form>
        </div>
    </body>
</html>
