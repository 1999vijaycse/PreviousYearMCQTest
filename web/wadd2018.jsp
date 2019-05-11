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
        <title>wadd2018 mcq</title>
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
                    <a href="wadd2018.jsp" class="active"><i class="fa fa-pencil active"></i> wadd18</a>
                    <a href="wadd2015.jsp" ><i class="fa fa-pencil"></i> wadd15</a>
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
        <form action="TestWADD2018" method="get">
            <div class="container text-left">
                <div class="row">
                    <div class="col text-center mb-3">
                        <h1> *** WADD 2018 mcqs *** </h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>1.</h2></div>
                    <div class="col">
                        <h2>Which of the following headers must be included in Java program to establish database connectivity using JDBC?</h2>

                        <h4>
                            <input type="radio" name="answer1" value="a" >(a) Import java.sql.*;<br>
                            <input type="radio" name="answer1" value="b" >(b) Import java.sql.odbc.jdbc.*;<br>
                            <input type="radio" name="answer1" value="c" >(c) Import java.jdbc.*;<br>
                            <input type="radio" name="answer1" value="d" >(d) Import java.sql.jdbc.*;
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>2.</h2></div>
                    <div class="col">
                        <h2>DriveManage.getConnectionr (_____,_____,_____).<br> What are the parameters that are included ? </h2>

                        <h4> 
                            <input type="radio" name="answer2" value="a">(a) URL or machine name where server runs, Password, User ID<br>
                            <input type="radio" name="answer2" value="b">(b) URL or machine name where server runs, User ID, Password<br>
                            <input type="radio" name="answer2" value="c">(c) User ID, Password, URL or machine name where server runs<br>
                            <input type="radio" name="answer2" value="d">(d) Password, URL or machine name where server runs, User ID
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>3.</h2></div>
                    <div class="col">
                        <h2>Database server is responsible for which of the following?</h2>
                        <h4>
                            <input type="radio" name="answer3" value="a" >(a) Database storage<br>
                            <input type="radio" name="answer3" value="b" >(b) Data processing logic<br>
                            <input type="radio" name="answer3" value="c" >(c) Data presentation logic<br>
                            <input type="radio" name="answer3" value="d" >(d) All of the above
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>4.</h2></div>
                    <div class="col">
                        <h2>An application program interface (API) is which of the following?</h2>

                        <h4>
                            <input type="radio" name="answer4" value="a" >(a) The same things as ODBC<br>
                            <input type="radio" name="answer4" value="b" >(b) Middleware that does not provides access to a database<br>
                            <input type="radio" name="answer4" value="c" >(c) Middleware that  provides access to a database<br>
                            <input type="radio" name="answer4" value="d" >(d) The same things as ODBC
                        </h4>
                    </div>
                </div>

                <div class="row">
                    <div class="col-0.5"><h2>5.</h2></div>
                    <div class="col">
                        <h2>Three-tier architecture includes which of the following ?</h2>

                        <h4>
                            <input type="radio" name="answer5" value="a" >(a) Three server layers<br>
                            <input type="radio" name="answer5" value="b" >(b) A client layer and two server layers<br>
                            <input type="radio" name="answer5" value="c" >(c) Two client layers and one server layer<br>
                            <input type="radio" name="answer5" value="d" >(d) Three client layers
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>6.</h2></div>
                    <div class="col">
                        <h2>When a remote session bean is used in EJB? </h2>

                        <h4><input type="radio" name="answer6" value="a" >(a) If EJB client is in same environment where ejb session bean is to be deployed, then we use remote session bean<br>
                            <input type="radio" name="answer6" value="b" >(b) If EJB client is in different environment where ejb session bean is to be deployed, then we use remote session bean<br>
                            <input type="radio" name="answer6" value="c" >(c) By default we use remote session bean<br>
                            <input type="radio" name="answer6" value="d" >(d) None of the above

                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>7.</h2></div>
                    <div class="col">
                        <h2>Which of the following is true for EJB ? </h2>

                        <h4>
                            <input type="radio" name="answer7" value="a" >(a) EJB is server-side component architecture for distributed application in Java<br>
                            <input type="radio" name="answer7" value="b" >(b) EJB facilitates scalable, secure and transaction-oriented application<br>
                            <input type="radio" name="answer7" value="c" >(c) EJB specification allows different vendor implementations of it<br>
                            <input type="radio" name="answer7" value="d" >(d) All of the above
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>8.</h2></div>
                    <div class="col">
                        <h2>Give the full form of BSD.</h2>
                        <h4>
                            <input type="radio" name="answer8" value="a" >(a) Berkeley Software Distribution<br>
                            <input type="radio" name="answer8" value="b" >(b) Berkeley Socket Distribution<br>
                            <input type="radio" name="answer8" value="c" >(c) Berkeley System Distribution<br>
                            <input type="radio" name="answer8" value="d" >(d) None of the above
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>9.</h2></div>
                    <div class="col">
                        <h2>Which steps occur when establishing a TCP connection between two computers using sockets?</h2>

                        <h4>
                            <input type="radio" name="answer9" value="a" >(a) The server instantiates a ServerSocket object, denoting which port number communication is to occur on<br>
                            <input type="radio" name="answer9" value="b" >(b) The server invokes the accept() method of the ServerSocket class. This method waits until a client connects to the server on the given port<br>
                            <input type="radio" name="answer9" value="c" >(c) After the server is waiting, a client instantiates a socket object, specifying the server name and port number to connect to<br>
                            <input type="radio" name="answer9" value="d" >(d) ALL of the above
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>10.</h2></div>
                    <div class="col">
                        <h2>What is remote method invocation (RMI)? </h2>

                        <h4>
                            <input type="radio" name="answer10" value="a" >(a) RMI allows us to invoke a method of Java object that executes on another machine<br>
                            <input type="radio" name="answer10" value="b" >(b) RMI allows us to invoke a method of Java object that executes on another thread in multithreaded programming<br>
                            <input type="radio" name="answer10" value="c" >(c) RMI allows us to invoke a method of Java object that executes on parallely in same machine<br>
                            <input type="radio" name="answer10" value="d" >(d) None of the above

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
