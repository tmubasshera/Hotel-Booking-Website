<%-- 
    Document   : deleteOneRoom
    Created on : Feb 14, 2022, 10:17:53 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <h1>Select type of room to delete: </h1>

            <form class="well form-horizontal" action="../DeleteRoomController" method="post">
                
                <div class="form-group">
                    <label class="col-md-4 control-label">Type of Room</label>  
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                            <select name="roomtype" class="form-control">  
                                <%
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
                            
                            <!-- Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label"></label>
                    <div class="col-md-4">
                        <button type="submit" class="btn btn-success" >Delete Room</button>
                        
                    </div>
                </div>
                            
            </form>
        </div>               
    </body>
</html>
