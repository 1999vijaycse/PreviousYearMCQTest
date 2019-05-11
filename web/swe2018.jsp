<%-- 
    Document   : java_mcq
    Created on : Mar 17, 2019, 10:16:16 PM
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
        <title>S/W Engg 2018 mcq</title>
        <link rel="icon" href="image/swe_logo.jpg" type="image/x-icon">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="style/mcq.css">
        <script src="script/home.js"></script>
    </head>

    <body style="background-image: url(image/signup_background.gif);background:radial-gradient(#958548, #7de7a7)">
        <!--for header -->
        <div class="container-fluid header">
            <div class="row">
                <div class="col-2 text-left mt-2"><img src="image/swe_logo.jpg" alt="logo"></div>
                <div class="col-10 text-left px-5">S/W Engg MCQ of AKU</div>
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
                    <a href="mcq.jsp"><i class="fa fa-fw fa-search"></i> MCQ Test</a>
                    <a href="swe2018.jsp" class="active"><i class="fa fa-pencil active"></i> s/w18</a>
                    <a href="swe2017.jsp" ><i class="fa fa-pencil"></i> s/w17</a>
                    <a href="swe2016.jsp" ><i class="fa fa-pencil"></i> s/w16</a>
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
        <form action="TestSWE2018" method="get">
            <div class="container text-left">
                <div class="row">
                    <div class="col text-center mb-3">
                        <h1> *** S/W Engg 2018 mcqs *** </h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>1. What is the most popular model for student program ?</h2>

                        <h4>
                            <input type="radio" name="answer1" value="a">(a) Waterfall model<br>
                            <input type="radio" name="answer1" value="b">(b) Built-and-fix model<br>
                            <input type="radio" name="answer1" value="c">(c) Spiral model<br>
                            <input type="radio" name="answer1" value="d">(d) Rational unified model
                        </h4>
                        <script></script>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>2. which model is suitable for stable and known requirements ? </h2>

                        <h4> 
                            <input type="radio" name="answer2" value="a">(a) Spiral model<br>
                            <input type="radio" name="answer2" value="b">(b) Prototyping model<br>
                            <input type="radio" name="answer2" value="c">(c) Waterfall model<br>
                            <input type="radio" name="answer2" value="d">(d) Iterative enhancement model
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>3. All verification activities are</h2>
                        <h4>
                            <input type="radio" name="answer3" value="a" >(a) testing<br>
                            <input type="radio" name="answer3" value="b" >(b) dynamic testing<br>
                            <input type="radio" name="answer3" value="c" >(c) functional testing<br>
                            <input type="radio" name="answer3" value="d" >(d) structural testing
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>4. Boundary value analysis generates x test cases for n variables. Then value of x is </h2>

                        <h4>
                            <input type="radio" name="answer4" value="a" >(a) 8n+1<br>
                            <input type="radio" name="answer4" value="b" >(b) 6n+1<br>
                            <input type="radio" name="answer4" value="c" >(c) 4n+1<br>
                            <input type="radio" name="answer4" value="d" >(d) 2n+1
                        </h4>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <h2>5. Risk is defined as</h2>
                        <h4>
                            <input type="radio" name="answer5" value="a" >(a) probability * priority<br>
                            <input type="radio" name="answer5" value="b" >(b) probability * size<br>
                            <input type="radio" name="answer5" value="c" >(c) priority * size<br>
                            <input type="radio" name="answer5" value="d" >(d) probability * impact
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>6. A fault is nothing but a/an</h2>
                        <h4><input type="radio" name="answer6" value="a" >(a) error<br>
                            <input type="radio" name="answer6" value="b" >(b) defect<br>
                            <input type="radio" name="answer6" value="c" >(c) mistake<br>
                            <input type="radio" name="answer6" value="d" >(d) All of the above
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>Note: Remaining questions are subjective type.</h2>
                        <br>
                    </div></div>
            </div>

            <div class="container">
                <div class="row">
                    <div class="col text-right">
                        <input type="submit" name="submit" class="btn btn-info bg-success text-white" value="SUBMIT">
                    </div>
                    <div class="col text-left">
                        <input type="reset" name="reset"  class="btn btn-info bg-success text-white" value="RESET">
                    </div>
                </div>
            </div>

        </form>
        <div class="container-fluid footer">
            <div class="row">

                <div class="col text-center"><h4>Thank You For Visiting !</h4></div>
            </div></div>
    </body>
</html>
