<%-- 
    Document   : insertOneRoom
    Created on : Feb 15, 2022, 2:53:06 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" crossorigin="anonymous">
        <title>Insert Room</title>
    </head>
    <body>
        <div class="container">
            <h1>Insert new room: </h1>

            <form class="well form-horizontal" action="../InsertRoomController" method="post">
                
                <div class="form-group">
                    <label class="col-md-4 control-label">Room type: </label>  
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                            <input name="type" placeholder="Room beds type" class="form-control" type="text" required>
                        </div>
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-md-4 control-label">Price: </label>  
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                            <input name="price" placeholder="Price of room per night" class="form-control" type="text" required>
                        </div>
                    </div>
                </div>
                
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
