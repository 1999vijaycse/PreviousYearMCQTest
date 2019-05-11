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
        <title>cd2016 mcq</title>
        <link rel="icon" href="image/cd_logo.jpg" type="image/x-icon">
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
                <div class="col-2 text-left mt-2"><img src="image/cd_logo.jpg" alt="logo"></div>
                <div class="col-10 text-left px-5">CD MCQ of AKU</div>
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
                    <a href="cd2016.jsp" class="active"><i class="fa fa-pencil active"></i> cd16</a>
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
        <form action="TestCD2016" method="get">
            <div class="container text-left">
                <div class="row">
                    <div class="col text-center mb-3">
                        <h1> *** CD 2016 mcqs *** </h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>1.</h2></div>
                    <div class="col">
                        <h2>Right side of three-address code has how many numbers of operator at most?</h2>

                        <h4>
                            <input type="radio" name="answer1" value="a" >(a) 1<br>
                            <input type="radio" name="answer1" value="b" >(b) 2<br>
                            <input type="radio" name="answer1" value="c" >(c) 3<br>
                            <input type="radio" name="answer1" value="d" >(d) 4
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>2.</h2></div>
                    <div class="col">
                        <h2>Token is</h2>

                        <h4> 
                            <input type="radio" name="answer2" value="a">(a) a logically cohesive sequence of characters<br>
                            <input type="radio" name="answer2" value="b">(b) always same as lexeme<br>
                            <input type="radio" name="answer2" value="c">(c) non-terminal<br>
                            <input type="radio" name="answer2" value="d">(d) just string
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>3.</h2></div>
                    <div class="col">
                        <h2>The regular expression for the language of all strings that have zero or more a's followed by zero or more b's is</h2>
                        <h4>
                            <input type="radio" name="answer3" value="a" >(a) (a+b)<br>
                            <input type="radio" name="answer3" value="b" >(b) ab<br>
                            <input type="radio" name="answer3" value="c" >(c) a*b*<br>
                            <input type="radio" name="answer3" value="d" >(d) (ab)<sup>+</sup>
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>4.</h2></div>
                    <div class="col">
                        <h2>Cross-compiler is a compiler</h2>

                        <h4>
                            <input type="radio" name="answer4" value="a" >(a) which is written in a language that is different from the source language<br>
                            <input type="radio" name="answer4" value="b" >(b) that generates object code for its host machine<br>
                            <input type="radio" name="answer4" value="c" >(c) which is written in a language that is same as the source language<br>
                            <input type="radio" name="answer4" value="d" >(d) that runs on the machine but produces object code for another machine
                        </h4>
                    </div>
                </div>

                <div class="row">
                    <div class="col-0.5"><h2>5.</h2></div>
                    <div class="col">
                        <h2>A dangling reference is a</h2>

                        <h4>
                            <input type="radio" name="answer5" value="a" >(a) pointer pointing to storage which freed<br>
                            <input type="radio" name="answer5" value="b" >(b) pointer pointing to nothing<br>
                            <input type="radio" name="answer5" value="c" >(c) pointer pointing to storage which is still in use<br>
                            <input type="radio" name="answer5" value="d" >(d) pointer pointing to uninitialized storage
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>6.</h2></div>
                    <div class="col">
                        <h2>If a grammar is LALR(1), then it is necessarily</h2>

                        <h4><input type="radio" name="answer6" value="a" >(a) SLR(1)<br>
                            <input type="radio" name="answer6" value="b" >(b) LR(1)<br>
                            <input type="radio" name="answer6" value="c" >(c) LL(1)<br>
                            <input type="radio" name="answer6" value="d" >(d) None of the above

                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>7.</h2></div>
                    <div class="col">
                        <h2>After removing left recursion from A → Aα|β, the resulting grammar will be</h2>

                        <h4>
                            <input type="radio" name="answer7" value="a" >(a) A → βA'<br>
                            <input type="radio" name="answer7" value="b" >(b) A → αA'<br>
                            <input type="radio" name="answer7" value="c" >(c) A → αβA'<br>
                            <input type="radio" name="answer7" value="d" >(d) A → βαA'
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>8.</h2></div>
                    <div class="col">
                        <h2>The traversal method translation schema adapted to execute the action is</h2>
                        <h4>
                            <input type="radio" name="answer8" value="a" >(a) depth first search<br>
                            <input type="radio" name="answer8" value="b" >(b) breath first search<br>
                            <input type="radio" name="answer8" value="c" >(c) depth breath first search<br>
                            <input type="radio" name="answer8" value="d" >(d) long first search
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>9.</h2></div>
                    <div class="col">
                        <h2>Consider the following grammar :<br> S → cAd<br> A → ab|ac|a<br>For input string cad, how many times the recursive descent parser will backtrack?</h2>

                        <h4>
                            <input type="radio" name="answer9" value="a" >(a) 2<br>
                            <input type="radio" name="answer9" value="b" >(b) 3<br>
                            <input type="radio" name="answer9" value="c" >(c) 4<br>
                            <input type="radio" name="answer9" value="d" >(d) 5
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-0.5"><h2>10.</h2></div>
                    <div class="col">
                        <h2>Activation of procedures can be implemented by run-time storage that is responsible for this is</h2>

                        <h4>
                            <input type="radio" name="answer10" value="a" >(a) data object<br>
                            <input type="radio" name="answer10" value="b" >(b) target code<br>
                            <input type="radio" name="answer10" value="c" >(c) stack pointer<br>
                            <input type="radio" name="answer10" value="d" >(d) control stack

                        </h4>
                    </div>
                </div>
            </div>

            <div class="container-fluid">
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
