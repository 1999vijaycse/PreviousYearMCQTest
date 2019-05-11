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
        <title>ooad2017 mcq</title>
        <link rel="icon" href="image/ooad_logo.jpg" type="image/x-icon">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="style/mcq.css">
        <script src="script/home.js"></script>
    </head>

    <body style="background-image: url(image/signup_background.gif); color: wheat">
        <!--for header -->
        <div class="container-fluid header">
            <div class="row">
                <div class="col-2 text-left mt-2"><img src="image/ooad_logo.jpg" alt="logo"></div>
                <div class="col-10 text-left px-5">OOAD MCQ of AKU</div>
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
                    <a href="ooad2018.jsp" ><i class="fa fa-pencil"></i> ooad18</a>
                    <a href="ooad2017.jsp" class="active"><i class="fa fa-pencil active"></i> ooad17</a>
                    <a href="ooad2016.jsp" ><i class="fa fa-pencil"></i> ooad16</a>
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
        <form action="TestOOAD2017" method="get">
            <div class="container text-left">
                <div class="row">
                    <div class="col text-center mb-3">
                        <h1> *** OOAD 2017 mcqs *** </h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>1.  What among these is true ?</h2>
                        <h4>
                            <input type="radio" name="answer1" value="a">(a) Associations may also correspond to relation between instances of three or more classes<br>
                            <input type="radio" name="answer1" value="b">(b) Association lines may be unlabeled or they may show association name<br>
                            <input type="radio" name="answer1" value="c">(c) All of the mentioned<br>
                            <input type="radio" name="answer1" value="d">(d) None of the mentioned
                        </h4>

                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>2.  What is multiplicity for an association?</h2>

                        <h4> <input type="radio" name="answer2" value="a">(a) The multiplicity at the target class end of an association is the number of instances that can be associated with a single instance of source class<br>
                            <input type="radio" name="answer2" value="b">(b) The multiplicity at the target class end of an association is the number of instances that can be associated with a number instance of source class<br>
                            <input type="radio" name="answer2" value="c">(c) All of the mentioned<br>
                            <input type="radio" name="answer2" value="d">(d) None of the mentioned
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>3. An operation can be described as?</h2>

                        <h4>
                            <input type="radio" name="answer3" value="a" >(a) Object behavior<br>
                            <input type="radio" name="answer3" value="b" >(b) Class behavior<br>
                            <input type="radio" name="answer3" value="c" >(c) Functions<br>
                            <input type="radio" name="answer3" value="d" >(d) Object & Class behavior
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>4.  Which of these are part of class operation specification format ?</h2>
                        <h4>
                            <input type="radio" name="answer4" value="a" >(a) name<br>
                            <input type="radio" name="answer4" value="b" >(b) parameter list<br>
                            <input type="radio" name="answer4" value="c" >(c) return-type list<br>
                            <input type="radio" name="answer4" value="d" >(d) all of the mentioned
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>5. A class is divided into which of these compartments ?</h2>
                        <h4>
                            <input type="radio" name="answer5" value="a" >(a) Name Compartment<br>
                            <input type="radio" name="answer5" value="b" >(b) Attribute Compartment<br>
                            <input type="radio" name="answer5" value="c" >(c) Operation Compartment<br>
                            <input type="radio" name="answer5" value="d" >(d) All of the mentioned
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>6. An attribute is a data item held by which of the following ?</h2>
                        <h4><input type="radio" name="answer6" value="a" >(a) Class<br>
                            <input type="radio" name="answer6" value="b" >(b) Object<br>
                            <input type="radio" name="answer6" value="c" >(c)  All of the mentioned<br>
                            <input type="radio" name="answer6" value="d" >(d)  None of the mentioned
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>7. What should be mentioned as attributes for conceptual modelling ?</h2>
                        <h4>
                            <input type="radio" name="answer7" value="a" >(a) Initial Values<br>
                            <input type="radio" name="answer7" value="b" >(b)  Names<br>
                            <input type="radio" name="answer7" value="c" >(c) All of the mentioned<br>
                            <input type="radio" name="answer7" value="d" >(d) None of the mentioned
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>8. Which among these are the rules to be considered to form Class diagrams?</h2>
                        <h4>
                            <input type="radio" name="answer8" value="a" >(a) Class symbols must have at least a name compartment<br>
                            <input type="radio" name="answer8" value="b" >(b) Compartment can be in random order<br>
                            <input type="radio" name="answer8" value="c" >(c) Attributes and operations can be listed at any suitable place<br>
                            <input type="radio" name="answer8" value="d" >(d) None of the mentioned
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>9. Which of these are the heuristics ?</h2>
                        <h4>
                            <input type="radio" name="answer9" value="a" >(a) Name classes, attributes, and roles with noun phrases<br>
                            <input type="radio" name="answer9" value="b" >(b) Name operations and associations with verb phrases<br>
                            <input type="radio" name="answer9" value="c" >(c) Stick to binary associations<br>
                            <input type="radio" name="answer9" value="d" >(d) All of the mentioned
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>10. An object symbol is divided into what parts ?</h2>
                        <h4>
                            <input type="radio" name="answer10" value="a" >(a) Top compartment<br>
                            <input type="radio" name="answer10" value="b" >(b) Bottom Compartment<br>
                            <input type="radio" name="answer10" value="c" >(c) All of the mentioned<br>
                            <input type="radio" name="answer10" value="d" >(d) None of the mentioned
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
