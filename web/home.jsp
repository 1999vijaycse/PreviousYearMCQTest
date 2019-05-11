<%-- 
    Document   : home
    Created on : Mar 15, 2019, 8:34:51 PM
    Author     : VIJAY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (session.isNew() || session.getAttribute("uname") == null) {
        response.sendRedirect("login.jsp");
    }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>home</title>
        <link rel="icon" href="image/collegelogo.jpg" type="image/x-icon">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="style/home.css">
        <script src="script/home.js"></script>
    </head>
    <body>
        <!--for header -->
        <div class="container-fluid header">
            <div class="row">
                <div class="col-2 text-left p-4"><img src="image/collegelogo.jpg" alt="logo"></div>
                <div class="col-10 text-center"><p>BHAGALPUR COLLEGE OF ENGINEERING</p></div>
            </div></div>
        <!-- for top navigation -->
        <div class=" topnav" id="myTopnav">

            <div class="row">
                <div class="col-3 text-left">
                    <a style="color:lightgreen; cursor: pointer; float: left;" onclick="openNav()">
                        <i class="fa fa-user-circle"></i><% out.println("  " + session.getAttribute("uname"));%><!--&#9776-->
                    </a>
                </div>
                <div class="col-9">

                    <a  class="active" href="home.jsp"><i class="fa fa-fw fa-home active"></i> Home</a>
                    <a href="mcq.jsp"><i class="fa fa-fw fa-search"></i> MCQ Test</a>

                    <a href="contact.jsp"><i class="fa fa-fw fa-envelope"></i> Contact/About</a>
                    <a href="logout.jsp"><i class="fa fa-fw fa-user"></i> Log out</a>
                    <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                        <i class="fa fa-bars"></i>
                    </a></div>
            </div>

        </div>

        <!-- for side navigation -->

        <div id="mySidenav" class="sidenav">


            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>

            <div class="container text-left">
                <div class="row">
                    <div class="col"> <a><h2>Hi,<% out.println("" + session.getAttribute("uname"));%></h2></a></div></div>
                <div class="row">
                    <div class="col"><a><% out.println("" + session.getAttribute("email"));%></a></div></div>
                <div class="row">
                    <div class="col"><a><% out.println("" + session.getAttribute("mobile"));%></a></div></div>
                <div class="row">
                    <div class="col"><a href="change_password.jsp">Change Password</a></div></div>
                <div class="row">
                    <div class="col"><a href="logout.jsp">Log Out</a></div></div>
            </div>
        </div>
        <!-- for slide Image -->
        <div class="container-fluid">

            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                    <li data-target="#myCarousel" data-slide-to="4"></li>
                    <li data-target="#myCarousel" data-slide-to="5"></li>
                    <li data-target="#myCarousel" data-slide-to="6"></li>
                    <li data-target="#myCarousel" data-slide-to="7"></li>
                    <li data-target="#myCarousel" data-slide-to="8"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">

                    <div class="item active">
                        <img src="image/bcebhagalpur.jpg" alt="College_image" style="height: 100vh; width:100vw;">
                        <div class="carousel-caption">
                            <h3>Welcome<br>To<br>"Bhagalpur College of Engineering"</h3>
                        </div>
                    </div>

                    <div class="item">
                        <img src="image/college_background.jpg" alt="college" style="height: 100vh; width:100vw;">
                        <div class="carousel-caption">
                            <h3>"Technority 2K19"</h3>
                        </div>
                    </div>
                    <div class="item">
                        <img src="image/cse.jpg" alt="cse" style="height: 100vh; width:100vw;">
                        <div class="carousel-caption">
                            <h3>"CSE/ECE Building"</h3>
                        </div>
                    </div>
                    
                    <div class="item">
                        <img src="image/class_image1.jpg" alt="class_image1" style="height:100vh; width:100vw;">
                        <div class="carousel-caption">
                            <h3>"CSE Class Study"</h3>
                        </div>
                    </div>

                    <div class="item">
                        <img src="image/group_photo1.jpg" alt="group_photo1" style="height:100vh; width:100vw;">
                        <div class="carousel-caption">
                            <h3>"During Full Stack Development Seminar"</h3>
                        </div>
                    </div>
                    <div class="item">
                        <img src="image/gh.jpg" alt="gh" style="height:100vh; width:100vw;">
                        <div class="carousel-caption">
                            <h3>"Kalpna Chawla Girls Hostel"</h3>
                        </div>
                    </div>
                    <div class="item">
                        <img src="image/hostel__1.jpg" alt="hostel_1" style="height:100vh; width:100vw;">
                        <div class="carousel-caption">
                            <h3>"Boys Hostel 01"</h3>
                        </div>
                        </div>
                        <div class="item">
                        <img src="image/hostel_2.jpg" alt="hostel2" style="height:100vh; width:100vw;">
                        <div class="carousel-caption">
                            <h3>"Boys Hostel 02"</h3>
                        </div>
                    </div>
                    
                    <div class="item">
                        <img src="image/hostel_4.jpg" alt="hostel4" style="height:100vh; width:100vw;">
                        <div class="carousel-caption">
                            <h3>"Aryabhatta Boys Hostel 04"</h3>
                        </div>
                    </div>

                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <div class="container-fluid footer">
            <div class="row">

                <div class="col text-center"><h4>Thank You For Visiting !</h4></div>
            </div></div>

    </body>
</html>
