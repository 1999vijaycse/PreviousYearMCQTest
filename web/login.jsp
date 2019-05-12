

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>log in</title>
        <link rel="icon" href="#" type="image/x-icon">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="style/background.css" type="text/css">
        
    </head>
    <body style="background-image: url(image/bcebhagalpur.jpg);">
        <div class="background" style="background-image: url(image/login_background.jpg);">
        <form  action="TestLogin" method="POST" >
            <div class=" container-fluid  text-center p-5" >
                <div class="row">
                    <div class="col mb-3 p-2"><h1>Log in</h1></div>
                </div>
                <div class="row">
                    <div class="col box"><input type="text" name="mobile" placeholder="Mobile Number" required></div>
                </div>
            <div class="row">
                <div class="col box"><input type="password" name="password" placeholder="Password" required></div>
            </div>
                <div class="row">
                <div class="col box"><button type="submit">Log In</button></div>
            </div>
            <div class="row">
                <div class="col">
                    <h4 style="color: white;">Forget password?<a href="forget_password.jsp"> Click</a>, here.</h4>
            
                <h4 style="color: white;"> New user, Please <a href="signup.jsp">Sign up</a> now.</h4></div>
            </div>
            </div>
        </form>
        </div>
    </body>
</html>
