<%-- 
    Document   : contact
    Created on : May 9, 2019, 11:46:19 PM
    Author     : VIJAY
--%>
<%
    if (session.isNew() || session.getAttribute("uname") == null) {
        response.sendRedirect("login.jsp");
    }

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>contact</title>
        <link rel="icon" href="#" type="image/x-icon">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="style/mcq.css">
        <script src="script/home.js"></script>
    </head>
    <body>
        <!-- for top navigation -->
        <div class="topnav" id="myTopnav">

            <div class="row">

                <div class="col-3"></div>
                <div class="col">
                    <a href="home.jsp"><i class="fa fa-fw fa-home"></i> Home</a>
                    <a href="mcq.jsp"><i class="fa fa-fw fa-search"></i> MCQ Test</a>
                    <a href="contact.jsp" class="active"><i class="fa fa-fw fa-envelope active"></i> Contact/About</a>
                    <a href="logout.jsp"><i class="fa fa-fw fa-user"></i> Log out</a>
                    <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                        <i class="fa fa-bars"></i>
                    </a></div>
            </div>

        </div>
        <div class="container">
            <div class="row">
                <div class="col text-center">
                    <h1><strong style="color: brown">Hi,<% out.println("" + session.getAttribute("uname"));%></strong></h1>
                    <h2><strong style="color: brown">"Welcome To My Web site !"</strong></h2>
                </div>
            </div>
            <div class="row">
                <div class="col">

                    <div class="card text-center" style="width:350px">
                        <img class="card-img-top rounded" src="image/vijay.jpg" alt="Card image" height="500" >
                        <div class="card-body text-center">
                            <h3 class="card-title"> Vijay Kumar </h4>
                                <h4 class="card-text">Matriculation : 2013-2014<br>
                                    Diploma(C.S.E.) : 2014-2017<br>
                                    Govt. Polytechnic Barauni<br>
                                    B.Tech(C.S.E.) : 2017-2020<br>
                                    Bhagalpur College of Engineering</h4>
                        </div>
                    </div>
                </div>
                <div class="col text-center">
                    <h2><strong style="color: green"><u style="font-family:fantasy">"To achieve goal,See in the Mirror !<br>
                                What you want to be in the Future !!"</u><br>
                                Therefore,<u><br>"Inspire from others !<br>But, Follow yourself !!"<br>'#Like Yourself !'<br>'#Love Yourself !!'<br></u>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:- Vijay Kumar<br>
                        </strong>
                        <br><i><u>Once again, you are most welcome!</u></i>
                        <br>Please share your experience, suggestion, comment or feedback related to this website.<br>
                        Please inform me with explanation, if you find any mistake in objective type question like wrong answer is available.</h2>
                    <h2><strong>WhatsApp : 9939988130</strong></h2>
                    <h2><strong>Email Id : 1999vijaycse@gmail.com</strong></h2>
                </div>
            </div>
        </div>
        <br>
        <div class="container-fluid footer">
            <div class="row">

                <div class="col text-center"><h4>Thank You For Visiting !</h4></div>
            </div></div>
    </body>
</html>
