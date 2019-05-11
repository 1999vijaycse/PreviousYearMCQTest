<%-- 
    Document   : iea2018
    Created on : Apr 8, 2019, 12:27:43 PM
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
        <title>iea2016 mcq</title>
        <link rel="icon" href="image/iea_logo.jpg" type="image/x-icon">
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
                <div class="col-2 text-left mt-2"><img src="image/wadd_logo.jpg" alt="logo"></div>
                <div class="col-10 text-left px-5">IEA MCQ of AKU</div>
            </div></div>
        <!-- for top navigation -->
        <div class="topnav" id="myTopnav">

            <div class="row">
                <div class="col-3 text-left">
                    <a style="color:lightgreen; cursor: pointer; float: left;" onclick="openNav()">
                        <i class="fa fa-user-circle"></i><% out.println("  " + session.getAttribute("uname"));%>
                    </a>
                </div>
                <div class="col">

                    <a href="home.jsp"><i class="fa fa-fw fa-home"></i> Home</a>
                    <a href="mcq.jsp"><i class="fa fa-fw fa-search"></i> MCQ Test</a>
                    <a href="iea2018.jsp" ><i class="fa fa-pencil"></i> iea18</a>
                    <a href="iea2016.jsp" class="active"><i class="fa fa-pencil active"></i> iea16</a>
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
        <form action="TestIEA2016" method="get">
            <div class="container text-left">
                <div class="row">
                    <div class="col text-center mb-3">
                        <h1> *** IEA 2016 mcqs *** </h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>1. Which of the following is not a type of elasticity in economics?</h2>

                        <h4>
                            <input type="radio" name="answer1" value="a" >(a) Income elasticity<br>
                            <input type="radio" name="answer1" value="b" >(b) Price elasticity<br>
                            <input type="radio" name="answer1" value="c" >(c) Utility elasticity<br>
                            <input type="radio" name="answer1" value="d" >(d) Cross elasticity<br>
                            <input type="radio" name="answer1" value="e" >(e) None of the above
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>2. Demand of salt is inelastic </h2>

                        <h4> 
                            <input type="radio" name="answer2" value="a">(a) due to low price<br>
                            <input type="radio" name="answer2" value="b">(b) because there is no substitute<br>
                            <input type="radio" name="answer2" value="c">(c) because its absence makes food tasteless<br>
                            <input type="radio" name="answer2" value="d">(d) All of the above
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>3. Tea and coffee are</h2>
                        <h4>
                            <input type="radio" name="answer3" value="a" >(a) complementary goods<br>
                            <input type="radio" name="answer3" value="b" >(b) related goods<br>
                            <input type="radio" name="answer3" value="c" >(c) unrelated goods <br>
                            <input type="radio" name="answer3" value="d" >(d) None of the above
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>4. Which one of the following is exception to law of demand</h2>

                        <h4>
                            <input type="radio" name="answer4" value="a" >(a) Giffen goods<br>
                            <input type="radio" name="answer4" value="b" >(b) Future change in price<br>
                            <input type="radio" name="answer4" value="c" >(c) Change in fashion<br>
                            <input type="radio" name="answer4" value="d" >(d) All of the above<br>
                            <input type="radio" name="answer1" value="e" >(e) None of the above
                        </h4>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <h2>5. Which one of the following is a real account?</h2>

                        <h4>
                            <input type="radio" name="answer5" value="a" >(a) Salary A/c<br>
                            <input type="radio" name="answer5" value="b" >(b) Bank A/c <br>
                            <input type="radio" name="answer5" value="c" >(c) Building A/c<br>
                            <input type="radio" name="answer5" value="d" >(d) Goodwill A/c
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>6. Which one of the following is known as Book of Original Entry?</h2>

                        <h4><input type="radio" name="answer6" value="a" >(a) Cash Book<br>
                            <input type="radio" name="answer6" value="b" >(b) Journal<br>
                            <input type="radio" name="answer6" value="c" >(c) Ledge<br>
                            <input type="radio" name="answer6" value="d" >(d) Sales Book

                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>7. Discounting method is used for cash flow of </h2>

                        <h4>
                            <input type="radio" name="answer7" value="a" >(a) future worth<br>
                            <input type="radio" name="answer7" value="b" >(b) present worth

                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>8. In a cash-flow diagram, the profits, revenues and salvage value are all considered as </h2>
                        <h4>
                            <input type="radio" name="answer8" value="a" >(a) inflow<br>
                            <input type="radio" name="answer8" value="b" >(b) outflow

                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>9. _____ is the price of which demand for a commodity is equal to its supply.</h2>

                        <h4>
                            <input type="radio" name="answer9" value="a" >(a) Normal price<br>
                            <input type="radio" name="answer9" value="b" >(b) Equilibrium price<br>
                            <input type="radio" name="answer9" value="c" >(c) Short-run price<br>
                            <input type="radio" name="answer9" value="d" >(d) Secular price
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>10. In a competitive market, ______ is a price marker. </h2>

                        <h4>
                            <input type="radio" name="answer10" value="a" >(a) firm<br>
                            <input type="radio" name="answer10" value="b" >(b) industry<br>
                            <input type="radio" name="answer10" value="c" >(c) consumer<br>
                            <input type="radio" name="answer10" value="d" >(d) trade association

                        </h4>
                    </div>
                </div>
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
