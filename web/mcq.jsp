<%-- 
    Document   : mcq
    Created on : Mar 28, 2019, 9:15:36 PM
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
        <title>mcq</title>
        <link rel="icon" href="image/collegelogo.jpg" type="image/x-icon">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="style/home.css">
        <script src="script/home.js"></script>
    </head>
    <body style="background-image: url(image/signup_background.gif);">

        <!--for header -->
        <div class="container-fluid header">
            <div class="row p-2">
                <div class="col-2 text-left p-4"><img src="image/collegelogo.jpg" alt="logo"></div>
                <div class="col-10 text-center"><p>MCQ Questions Asked By AKU, Patna</p></div>
            </div></div>
        <!-- for top navigation -->
        <div class="topnav" id="myTopnav">

            <div class="row">
                <div class="col-3 text-left">
                    <a style="color:lightgreen; cursor: pointer; float: left;" onclick="openNav()">
                        <i class="fa fa-user-circle"></i><% out.println("  " + session.getAttribute("uname"));%><!--&#9776-->
                    </a>
                </div>
                <div class="col">

                    <a href="home.jsp"><i class="fa fa-fw fa-home"></i> Home</a>
                    <a  class="active" href="mcq.jsp"><i class="fa fa-fw fa-search active"></i> MCQ Test</a>

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
        <div class="container-fluid text-center">
            <div class="row"><div class="col"><h1 style="color: wheat"><u>OOAD Objective Type  Previous Year Questions :</u></h1><br></div></div>
            <div class="row">
                <div class="col"><a href="ooad2018.jsp"><img src="image/ooad18.png" class="rounded" alt="ooad18" width="300" height="300" ><br><p style=" color: yellow">OOAD 2018</p></a></div>

                <div class="col"><a href="ooad2017.jsp"><img src="image/ooad17.png" class="rounded" alt="ooad17" width="300" height="300"><br><p style=" color: yellow">OOAD 2017</p></a></div>7
                <div class="col"><a href="ooad2016.jsp"><img src="image/ooad16.png" class="rounded" alt="ooad16" width="300" height="300"><br><p style=" color: yellow">OOAD 2016</p></a></div>
            </div><hr>
          
          <div class="row"><div class="col"><h1 style="color: wheat"><u>PPL Objective Type  Previous Year Questions :</u></h1><br></div></div>
            <div class="row">
                <div class="col"><a href="ppl2018.jsp"><img src="image/ppl18.png" class="rounded" alt="ppl8" width="300" height="300"><br><p style=" color: yellow">PPL 2018</p></a></div>

                <div class="col"><a href="ppl2017.jsp"><img src="image/ppl17.png" class="rounded" alt="ppl7" width="300" height="300"><br><p style=" color: yellow">PPL 2017</p></a></div>
                <div class="col"><a href="ppl2016.jsp"><img src="image/ppl16.png" class="rounded" alt="ppl6" width="300" height="300"><br><p style=" color: yellow">PPL 2016</p></a></div>
            </div><hr>
            <div class="row"><div class="col"><h1 style="color: wheat"><u>Software Engg. Objective Type  Previous Year Questions :</u></h1><br></div></div>
            <div class="row">
                <div class="col"><a href="swe2018.jsp"><img src="image/swe18.png" class="rounded" alt="swe18" width="300" height="300"><br><p style=" color: yellow">S/W Engg 2018</p></a></div>

                <div class="col"><a href="swe2017.jsp"><img src="image/swe17.png" class="rounded" alt="swe17" width="300" height="300"><br><p style=" color: yellow">S/W Engg 2017</p></a></div>
                <div class="col"><a href="swe2016.jsp"><img src="image/swe16.png" class="rounded" alt="swe16" width="300" height="300"><br><p style=" color: yellow">S/W Engg 2016</p></a></div>
            </div><hr>
            
            <div class="row"><div class="col"><h1 style="color: wheat"><u>FLAT Objective Type  Previous Year Questions :</u></h1><br></div></div>
            <div class="row">
                <div class="col"><a href="flat2018.jsp"><img src="image/flat18.png" class="rounded" alt="flat18" width="300" height="300"><br><p style=" color: yellow">FLAT 2018</p></a></div>

                <div class="col"><a href="flat2017.jsp"><img src="image/flat17.png" class="rounded" alt="flat17" width="300" height="300"><br><p style=" color: yellow">FLAT 2017</p></a></div>
                <div class="col"><a href="flat2016.jsp"><img src="image/flat16.png" class="rounded" alt="flat16" width="300" height="300"><br><p style=" color: yellow">FLAT 2016</p></a></div>
            </div><hr>
            <div class="row"><div class="col"><h1 style="color: wheat"><u>WADD Objective Type  Previous Year Questions :</u></h1><br></div></div>
            <div class="row">
                <div class="col"><a href="wadd2018.jsp"><img src="image/wadd18.png" class="rounded" alt="wadd18" width="300" height="300"><br><p style=" color: yellow">WADD 2018</p></a></div>
                <div class="col"><h3 style="color: wheat">Anyone has WADD 2016 and 2017 question.<br>Please send me.</h3></div>
                <div class="col"><a href="wadd2015.jsp"><img src="image/wadd15.png" class="rounded" alt="wadd15" width="300" height="300"><br><p style=" color: yellow">WADD 2015</p></a></div>
            </div><hr>
            <div class="row"><div class="col"><h1 style="color: wheat"><u>CD Objective Type  Previous Year Questions :</u></h1><br></div></div>
            <div class="row">
                <div class="col"><h3 style="color: wheat">Anyone has CD 2018 and 2017 question.<br>Please send me.</h3></div>
                <div class="col"><a href="cd2016.jsp"><img src="image/cd16.png" class="rounded" alt="cd16" width="300" height="300"><br><p style=" color: yellow">CD 2016</p></a></div>
            </div><hr>
            <div class="row"><div class="col"><h1 style="color: wheat"><u>IEA Objective Type  Previous Year Questions :</u></h1><br></div></div>
            <div class="row">
                <div class="col"><a href="iea2018.jsp"><img src="image/iea18.png" class="rounded" alt="iea18" width="300" height="300"><br><p style=" color: yellow">IEA 2018</p></a></div>
                <div class="col"><a href="iea2016.jsp"><img src="image/iea16.png" class="rounded" alt="iea16" width="300" height="300"><br><p style=" color: yellow">IEA 2016</p></a></div>
            </div>
        </div>

        <div class="container-fluid footer">
            <div class="row">

                <div class="col text-center"><h4>Thank You For Visiting !</h4></div>
            </div></div>

    </body>
</html>
