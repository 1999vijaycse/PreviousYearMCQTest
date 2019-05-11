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
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>wadd2015 mcq</title>
        <link rel="icon" href="image/wadd_logo.jpg" type="image/x-icon">
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
                <div class="col-10 text-left px-5">WADD MCQ of AKU</div>
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
                    <a href="wadd2018.jsp" ><i class="fa fa-pencil"></i> wadd18</a>
                    <a href="wadd2015.jsp" class="active"><i class="fa fa-pencil active"></i> wadd15</a>
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
        <form action="TestWADD2015" method="get">
            <div class="container text-left">
                <div class="row">
                    <div class="col text-center mb-3">
                        <h1> *** WADD 2015 mcqs *** </h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>1.</h2></div>
                    <div class="col">
                        <h2>Which class is used to make a connection?</h2>

                        <h4>
                            <input type="radio" name="answer1" value="a" >(a) Driver<br>
                            <input type="radio" name="answer1" value="b" >(b) DriverManager<br>
                            <input type="radio" name="answer1" value="c" >(c) Connection<br>
                            <input type="radio" name="answer1" value="d" >(d) Resultset
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>2.</h2></div>
                    <div class="col">
                        <h2>How do you register a driver?</h2>

                        <h4> 
                            <input type="radio" name="answer2" value="a">(a) Class.for Name()<br>
                            <input type="radio" name="answer2" value="b">(b) DriverManager. registerDriver()<br>
                            <input type="radio" name="answer2" value="c">(c) (a) and (b)<br>
                            <input type="radio" name="answer2" value="d">(d) (a)or(b)<br>
                            <input type="radio" name="answer2" value="e">(e) None of the above
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>3.</h2></div>
                    <div class="col">
                        <h2>The init parameter name and value pairs that are defined in web.xml file are handled by</h2>
                        <h4>
                            <input type="radio" name="answer3" value="a" >(a) servlet config object<br>
                            <input type="radio" name="answer3" value="b" >(b) servlet cotext object<br>
                            <input type="radio" name="answer3" value="c" >(c) servlet request object<br>
                            <input type="radio" name="answer3" value="d" >(d) servlet response object
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>4.</h2></div>
                    <div class="col">
                        <h2>Life cycle of servlet is managed by</h2>

                        <h4>
                            <input type="radio" name="answer4" value="a" >(a) servlet context<br>
                            <input type="radio" name="answer4" value="b" >(b) servlet container<br>
                            <input type="radio" name="answer4" value="c" >(c) supporting protocol<br>
                            <input type="radio" name="answer4" value="d" >(d) All of the above
                        </h4>
                    </div>
                </div>

                <div class="row">
                    <div class="col-0.5"><h2>5.</h2></div>
                    <div class="col">
                        <h2>Session bean is responsible for</h2>

                        <h4>
                            <input type="radio" name="answer5" value="a" >(a) representing persistent data and behaviour of data<br>
                            <input type="radio" name="answer5" value="b" >(b) representing a work flow on behalf of the client<br>
                            <input type="radio" name="answer5" value="c" >(c) Two client layers and one server layer<br>
                            <input type="radio" name="answer5" value="d" >(d) findable permanent object
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>6.</h2></div>
                    <div class="col">
                        <h2>When method is called on stub object, it does not perform which of the following?</h2>

                        <h4><input type="radio" name="answer6" value="a" >(a) It reads the return value<br>
                            <input type="radio" name="answer6" value="b" >(b) It initiates a connection with remote virtual machine<br>
                            <input type="radio" name="answer6" value="c" >(c) It reads the parameter for the remote method<br>
                            <input type="radio" name="answer6" value="d" >(d) It supports distributed application

                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>7.</h2></div>
                    <div class="col">
                        <h2>In J2EE JavaServlet and JavaServer pages are </h2>

                        <h4>
                            <input type="radio" name="answer7" value="a" >(a) business components<br>
                            <input type="radio" name="answer7" value="b" >(b) adaptor components<br>
                            <input type="radio" name="answer7" value="c" >(c) web components<br>
                            <input type="radio" name="answer7" value="d" >(d) client components
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>8.</h2></div>
                    <div class="col">
                        <h2>Servlet mapping defines</h2>
                        <h4>
                            <input type="radio" name="answer8" value="a" >(a) an association between URL pattern and servlet<br>
                            <input type="radio" name="answer8" value="b" >(b) an association between URL pattern and request page<br>
                            <input type="radio" name="answer8" value="c" >(c) an association between URL pattern and response object<br>
                            <input type="radio" name="answer8" value="d" >(d) All of the above
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>9.</h2></div>
                    <div class="col">
                        <h2>RMI stands for</h2>

                        <h4>
                            <input type="radio" name="answer9" value="a" >(a) Resource Method Invocation<br>
                            <input type="radio" name="answer9" value="b" >(b) Remote Method Invocation<br>
                            <input type="radio" name="answer9" value="c" >(c) Right Method Invocation<br>
                            <input type="radio" name="answer9" value="d" >(d) None of the above
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>10.</h2></div>
                    <div class="col">

                        <h2>Web application contains</h2>

                        <h4>
                            <input type="radio" name="answer10" value="a" >(a) images<br>
                            <input type="radio" name="answer10" value="b" >(b) heper class<br>
                            <input type="radio" name="answer10" value="c" >(c) libraries<br>
                            <input type="radio" name="answer10" value="d" >(d) all static file

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
