<%-- 
    Document   : adminLogin
    Created on : Feb 18, 2022, 1:55:41 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" crossorigin="anonymous">       
        <title>Admin Login</title>
        <h3 style="color: red">${requestScope.msg}</h3>
    </head>
    <body>
        
        <div class="container">
            <br>
            <h1>Admin Login In</h1>
            <form class="well form-horizontal" action="../AdminLoginController" method="post">
            <div class="form-group">
                    <label class="col-md-4 control-label">Admin Email: </label>  
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                            <input name="ademail" placeholder="@gmail.com" class="form-control" type="text" required>
                        </div>
                    </div>
                </div>
            <div class="form-group">
                    <label class="col-md-4 control-label">Password: </label>  
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                            <input name="password" placeholder="password" class="form-control" type="password" required>
                        </div>
                    </div>
                </div>
            <div class="form-group">
                    <label class="col-md-4 control-label"></label>
                    <div class="col-md-4">
                        <button type="submit" class="btn btn-success" >Login</button>
                        
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
