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
        <title>ppl2018 mcq</title>
        <link rel="icon" href="image/ppl_logo.jpg" type="image/x-icon">
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
                <div class="col-2 text-left mt-2"><img src="image/ppl_logo.jpg" alt="logo"></div>
                <div class="col-10 text-left px-5">PPL MCQ of AKU</div>
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
                    <a href="ppl2018.jsp" class="active"><i class="fa fa-pencil active"></i> ppl_18</a>
                    <a href="ppl2017.jsp" ><i class="fa fa-pencil"></i> ppl_17</a>
                    <a href="ppl2016.jsp" ><i class="fa fa-pencil"></i> ppl_16</a>
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
        <form action="TestPPL2018" method="get">
            <div class="container text-left">
                <div class="row">
                    <div class="col text-center mb-3">
                        <h1> *** PPL 2018 mcqs *** </h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>1. Program subroutines are</h2>

                        <h4>
                            <input type="radio" name="answer1" value="a">(a) called by other programs<br>
                            <input type="radio" name="answer1" value="b">(b) fixed variables<br>
                            <input type="radio" name="answer1" value="c">(c) default constants<br>
                            <input type="radio" name="answer1" value="d">(d) default variables
                        </h4>
                        <script></script>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>2.  Statement "130 num(subs) = 2*subs-1" is an example of </h2>

                        <h4> 
                            <input type="radio" name="answer2" value="a">(a) Array in C<br>
                            <input type="radio" name="answer2" value="b">(b) Array in COBOL<br>
                            <input type="radio" name="answer2" value="c">(c) Array in PASCAL<br>
                            <input type="radio" name="answer2" value="d">(d) Array in BASIC
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>3. Instruction which tells assembler how to deal with whole program is classified as</h2>
                        <h4>
                            <input type="radio" name="answer3" value="a" >(a) direction<br>
                            <input type="radio" name="answer3" value="b" >(b) directive<br>
                            <input type="radio" name="answer3" value="c" >(c) director<br>
                            <input type="radio" name="answer3" value="d" >(d) compiler
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>4. The sequence of instructions that are carried out for a particular task is classified as </h2>

                        <h4>
                            <input type="radio" name="answer4" value="a" >(a) routine<br>
                            <input type="radio" name="answer4" value="b" >(b) subroutine<br>
                            <input type="radio" name="answer4" value="c" >(c) procedure<br>
                            <input type="radio" name="answer4" value="d" >(d) function
                        </h4>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <h2>5. A special quantity named in a program and its value can be changed is called</h2>
                        <h4>
                            <input type="radio" name="answer5" value="a" >(a) exponent<br>
                            <input type="radio" name="answer5" value="b" >(b) mantissa<br>
                            <input type="radio" name="answer5" value="c" >(c) constant<br>
                            <input type="radio" name="answer5" value="d" >(d) variable
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>6. In programming language, 'identifier' can be</h2>
                        <h4><input type="radio" name="answer6" value="a" >(a) variable<br>
                            <input type="radio" name="answer6" value="b" >(b) constant<br>
                            <input type="radio" name="answer6" value="c" >(c) array<br>
                            <input type="radio" name="answer6" value="d" >(d) All of the above
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>7. Word or set of letters that can be used to represent a specific function and are easily memorable is classified as </h2>
                        <h4>
                            <input type="radio" name="answer7" value="a" >(a) symbolic address<br>
                            <input type="radio" name="answer7" value="b" >(b) line address<br>
                            <input type="radio" name="answer7" value="c" >(c) mnemonics<br>
                            <input type="radio" name="answer7" value="d" >(d) None of the above
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>8. Aliasing in the context of programming languages refers to</h2>
                        <h4 class="mx-10">
                            <input type="radio" name="answer8" value="a" >(a) multiple variables having the same memory location<br>
                            <input type="radio" name="answer8" value="b" >(b) multiple variables having the same value<br>
                            <input type="radio" name="answer8" value="c" >(c) multiple variables having the same identifier<br>
                            <input type="radio" name="answer8" value="d" >(d) multiple uses of the same variable
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>9. Consider the following program :</h2>
                        <h3>
                            Program P2 <br> 
                            var n: int:  <br>
                            procedure W(var x: int) <br> 
                            begin <br>
                            x=x+1;  <br>
                            print x;   <br> 
                            end <br>

                            procedure D  <br>
                            begin  <br>
                            var n: int;  <br>
                            n=3;  <br>
                            W(n);   <br>
                            end <br>
                            begin //beginP2  <br>
                            n=10;  <br>
                            D;  <br>
                            end <br><br>

                            If the language has dynamic scoping and parameters are passed by reference, what will be printed by the program?
                        </h3>
                        <h4>
                            <input type="radio" name="answer9" value="a" >(a) 10<br>
                            <input type="radio" name="answer9" value="b" >(b) 3<br>
                            <input type="radio" name="answer9" value="c" >(c) 11<br>
                            <input type="radio" name="answer9" value="d" >(d) 4
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>10. What is printed by the print statements in the program P1 assuming call by reference parameter passing?</h2>
                        <h3>
                            Program P1()<br>
                            {<br>
                            x = 10;<br>
                            y = 3;<br>
                            func1(y,x,x);<br>
                            print x;<br>
                            print y;<br>
                            }<br>
                            func1(x,y,z)<br>
                            {<br>
                            y = y+4;<br>
                            z = x+y+z;<br>
                            }
                        </h3>
                        <h4>
                            <input type="radio" name="answer10" value="a" >(a) 10, 3<br>
                            <input type="radio" name="answer10" value="b" >(b) 31, 3<br>
                            <input type="radio" name="answer10" value="c" >(c) 27, 7<br>
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
