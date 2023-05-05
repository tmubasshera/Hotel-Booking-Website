<%-- 
    Document   : bookingForm
    Created on : Feb 10, 2022, 12:14:15 AM
    Author     : Acer
--%>

<%@page import="model.User"%>
<%@page import="DAO.RoomDAO"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.List"%>
<%@page import="model.Room"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" crossorigin="anonymous">
        <title>Booking</title>
    </head>
    <body>
        <div class="container">
             <jsp:include page="UserNavBar.jsp"/>
            <%
                User u = (User)session.getAttribute("customer");
                
              %>
              <h1>Welcome <%=u.getName()%> </h1>
            <h1>Make a Booking for your room: </h1>

            <form class="well form-horizontal" action="../BookingController" method="post">
                
                <div class="form-group">
                    <label class="col-md-4 control-label">Check-In Date</label>  
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                            <input name="date" placeholder="Check-In Date" class="form-control" type="date" min="<%=LocalDateTime.now()%>">
                        </div>
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-md-4 control-label">Number of Days</label>  
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                            <input name="numdays" placeholder="No. of Days" class="form-control" type="number" min="0">
                        </div>
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-md-4 control-label">Type of Room</label>  
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                            <select name="roomtype" class="form-control">  
                                <%
                                    //List<Room> rl = (List<Room>) session.getAttribute("rl");
                                    
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
                        <button type="submit" class="btn btn-success" >Book</button>
                        
                    </div>
                </div>

            </form>
        </div>
        
        
    </body>
</html>
