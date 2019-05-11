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
        <title>ooad2018 mcq</title>
        <link rel="icon" href="image/ooad_logo.jpg" type="image/x-icon">
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
                    <a href="ooad2018.jsp" class="active"><i class="fa fa-pencil active"></i> ooad18</a>
                    <a href="ooad2017.jsp" ><i class="fa fa-pencil"></i> ooad17</a>
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
        <form action="TestOOAD2018" method="get">
            <div class="container text-left">
                <div class="row">
                    <div class="col text-center mb-3">
                        <h1> *** OOAD 2018 mcqs *** </h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>1. A subsystem of a complex system</h2>
                        <h3 class="text-left mx-5">
                            (i). should be reusable in other complex system<br>
                            (ii). must not be able to inherit the properties of other subsystems<br>
                            (iii). must have clearly specified responsibilities<br>
                            (iv). must know the stimuli to which it should respond
                        </h3>
                        <h4>
                            <input type="radio" name="answer1" value="a">(a) (i),(ii),(iii)<br>
                            <input type="radio" name="answer1" value="b">(b) (ii),(iii),(iv)<br>
                            <input type="radio" name="answer1" value="c">(c) (i),(iii),(iv)<br>
                            <input type="radio" name="answer1" value="d">(d) (i),(ii),(iv)
                        </h4>
                        <script></script>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>2. In object-oriented design</h2>

                        <h4> <input type="radio" name="answer2" value="a">(a) operation and method are identical<br>
                            <input type="radio" name="answer2" value="b">(b) method specify algorithms whereas operations only state what is to be done<br>
                            <input type="radio" name="answer2" value="c">(c) method do not values of attributes<br>
                            <input type="radio" name="answer2" value="d">(d) method and constructor are same
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>3. When a subclass is created using inheritance the resulting class may have</h2>

                        <h4><input type="radio" name="answer3" value="a" >(a) only attributes of parent class<br>
                            <input type="radio" name="answer3" value="b" >(b) only operations of parent class<br>
                            <input type="radio" name="answer3" value="c" >(c) new operations only in addition to those in parent class<br>
                            <input type="radio" name="answer3" value="d" >(d) new attributes and new operations in addition to those of the parent class
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>4. A polymorphic operation</h2>
                        <h4>
                            <input type="radio" name="answer4" value="a" >(a) has same name<br>
                            <input type="radio" name="answer4" value="b" >(b) has same name but uses different method depending on class<br>
                            <input type="radio" name="answer4" value="c" >(c) uses different method to perform on the same class<br>
                            <input type="radio" name="answer4" value="d" >(d) uses polymorphic method
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>5. Which of the following is an abstract class?</h2>
                        <h4>
                            <input type="radio" name="answer5" value="a" >(a) A class that has direct instances, but whose descendants may have direct instances.<br>
                            <input type="radio" name="answer5" value="b" >(b) A class that has no direct instances, but whose descendants may have direct instances.<br>
                            <input type="radio" name="answer5" value="c" >(c) A class that has direct instances, but whose descendants may not have direct instances.<br>
                            <input type="radio" name="answer5" value="d" >(d) A class that has not direct instances, but whose descendants may not have direct instances.
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>6. In component diagrams, building block which is represented with two rectangles laid on left side is classified as</h2>
                        <h4><input type="radio" name="answer6" value="a" >(a) type of components<br>
                            <input type="radio" name="answer6" value="b" >(b) interfaces<br>
                            <input type="radio" name="answer6" value="c" >(c) dependency relationships<br>
                            <input type="radio" name="answer6" value="d" >(d) all of above
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>7. By abstraction in object-oriented modeling we mean picking</h2>
                        <h4>
                            <input type="radio" name="answer7" value="a" >(a) only attributes appropriate to model an object<br>
                            <input type="radio" name="answer7" value="b" >(b) only operations<br>
                            <input type="radio" name="answer7" value="c" >(c) both operation and attributes with operations appropriate to model an object<br>
                            <input type="radio" name="answer7" value="d" >(d) the appropriate abstract data type
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>8. An instance of an object is created by a/an</h2>
                        <h4 class="mx-10">
                            <input type="radio" name="answer8" value="a" >(a) query operation<br>
                            <input type="radio" name="answer8" value="b" >(b) update operation<br>
                            <input type="radio" name="answer8" value="c" >(c) constructor operation<br>
                            <input type="radio" name="answer8" value="d" >(d) open operation
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
