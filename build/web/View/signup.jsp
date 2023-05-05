<%-- 
    Document   : signup
    Created on : Feb 18, 2022, 9:08:39 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" crossorigin="anonymous">
        <title>Sign Up</title>
    </head>
    <body>
        <div class="container">
             
            <h1>Welcome to Ayu Hotel Booking System</h1>
            
            <form class="well form-horizontal" action="../SignupController" method="post">
                <fieldset>

                    <!-- Form Name -->
                    <legend>Sign Up</legend>
                    
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label">Full Name</label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"></span>
                                <input  name="name" placeholder="John Doe" class="form-control"  type="text" required>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-4 control-label">Email</label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"></span>
                                <input  name="email" placeholder="johnd@gmail.com" class="form-control"  type="email" required>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-4 control-label" >Phone Number</label> 
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"></span>
                                <input name="phone" placeholder="0123456789" class="form-control"  type="tel" pattern="[01]{2}[0-9]{8}" required>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-4 control-label">Password</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"></span>
                                <input name="password" placeholder="Use a Strong Password" class="form-control" type="password" required>
                            </div>
                        </div>
                    </div>

                    <!-- Button -->
                    <div class="form-group">
                        <label class="col-md-4 control-label"></label>
                        <div class="col-md-4">
                            <button type="submit" class="btn btn-success" >Sign Up</button>
                            <button type="reset" class="btn btn-warning" >Reset</button>
                        </div>
                    </div>
                    
                    <!--Link to Login Page-->
                    <div>
                        <br><h6>Already have an account. <a href="login.jsp">Login here!</a></h6>
                    </div>
                </fieldset>
            </form>
        </div>
    </body>
</html>

