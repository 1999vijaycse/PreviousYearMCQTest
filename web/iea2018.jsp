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
        <title>iea2018 mcq</title>
        <link rel="icon" href="image/iea_logo.jpg" type="image/x-icon">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="style/mcq.css">
        <script src="script/home.js"></script>
    </head>

    <body style="background-image: url(image/ques_back.jpg)">
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
                    <a href="iea2018.jsp" class="active"><i class="fa fa-pencil active"></i> iea18</a>
                    <a href="iea2016.jsp" ><i class="fa fa-pencil"></i> iea16</a>
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
        <form action="TestIEA2018" method="get">
            <div class="container text-left">
                <div class="row">
                    <div class="col text-center mb-3">
                        <h1> *** IEA 2018 mcqs *** </h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>1. Which of the method of capital budgeting is called benefit-cost ratio?</h2>

                        <h4>
                            <input type="radio" name="answer1" value="a" >(a) Payback period method<br>
                            <input type="radio" name="answer1" value="b" >(b) Net present value method<br>
                            <input type="radio" name="answer1" value="c" >(c) Payout period method<br>
                            <input type="radio" name="answer1" value="d" >(d) Profitability index method;
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>2. Which are the determinants of capital structure? </h2>

                        <h4> 
                            <input type="radio" name="answer2" value="a">(a) Government policy<br>
                            <input type="radio" name="answer2" value="b">(b) Control<br>
                            <input type="radio" name="answer2" value="c">(c) Tax<br>
                            <input type="radio" name="answer2" value="d">(d) Requirement of investors<br>
                            <input type="radio" name="answer2" value="e">(e) All of the above
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>3. The significance of capital budgeting arises mainly due to the</h2>
                        <h4>
                            <input type="radio" name="answer3" value="a" >(a) complicacies of investment decisions<br>
                            <input type="radio" name="answer3" value="b" >(b) irreversible in nature<br>
                            <input type="radio" name="answer3" value="c" >(c) large investment <br>
                            <input type="radio" name="answer3" value="d" >(d) All of the above
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>4. Which is the traditional method of capital budgeting?</h2>

                        <h4>
                            <input type="radio" name="answer4" value="a" >(a) Accounting method<br>
                            <input type="radio" name="answer4" value="b" >(b) Payout method<br>
                            <input type="radio" name="answer4" value="c" >(c) Payback method<br>
                            <input type="radio" name="answer4" value="d" >(d) All of the above
                        </h4>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <h2>5. Profit maximization is</h2>

                        <h4>
                            <input type="radio" name="answer5" value="a" >(a) indicator of economics efficiency<br>
                            <input type="radio" name="answer5" value="b" >(b) primary objective of business <br>
                            <input type="radio" name="answer5" value="c" >(c) measurement of success of business decisions<br>
                            <input type="radio" name="answer5" value="d" >(d) All of the above
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>6. Which one of the following is not the objective of fiscal policy of Government of India?</h2>

                        <h4><input type="radio" name="answer6" value="a" >(a) Full employment<br>
                            <input type="radio" name="answer6" value="b" >(b) Price stability<br>
                            <input type="radio" name="answer6" value="c" >(c) Regular of inter-State trade<br>
                            <input type="radio" name="answer6" value="d" >(d) Economic growth

                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>7. Balance of payments on capital account includes </h2>

                        <h4>
                            <input type="radio" name="answer7" value="a" >(a) balance of private direct investments<br>
                            <input type="radio" name="answer7" value="b" >(b) private portfolio investments<br>
                            <input type="radio" name="answer7" value="c" >(c) government loans to foreign governments<br>
                            <input type="radio" name="answer7" value="d" >(d) All of the above
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>8. _____ unemployment may when some workers are temporarily out of work while changing job.</h2>
                        <h4>
                            <input type="radio" name="answer8" value="a" >(a) Seasonal<br>
                            <input type="radio" name="answer8" value="b" >(b) Frictional<br>
                            <input type="radio" name="answer8" value="c" >(c) Disguised<br>
                            <input type="radio" name="answer8" value="d" >(d) Technical
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>9. Which among the following is not an assumption of Pareto optimality?</h2>

                        <h4>
                            <input type="radio" name="answer9" value="a" >(a) Every consumer wishes to maximize his level of satisfaction<br>
                            <input type="radio" name="answer9" value="b" >(b) All the factor of production are used in the production of every commodity<br>
                            <input type="radio" name="answer9" value="c" >(c) Conditions of perfect competition exist making all the factors of production perfectly mobile<br>
                            <input type="radio" name="answer9" value="d" >(d) The concept of utility is cardinal and cardinal utility function of ever consumer is given
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>10. "Money is matter of functions four, a medium, a measure, a standard and _____." What is the fourth function of money indicated in this popular phrase? </h2>

                        <h4>
                            <input type="radio" name="answer10" value="a" >(a) stock<br>
                            <input type="radio" name="answer10" value="b" >(b) flow<br>
                            <input type="radio" name="answer10" value="c" >(c) store<br>
                            <input type="radio" name="answer10" value="d" >(d) payment

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
