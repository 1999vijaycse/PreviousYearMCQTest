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
        <title>ppl2017 mcq</title>
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
                    <a href="ppl2018.jsp" ><i class="fa fa-pencil"></i> ppl_18</a>
                    <a href="ppl2017.jsp" class="active"><i class="fa fa-pencil active"></i> ppl_17</a>
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
        <form action="TestPPL2017" method="get">
            <div class="container text-left">
                <div class="row">
                    <div class="col text-center mb-3">
                        <h1> *** PPL 2017 mcqs *** </h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>1. The results returned by functions under value-result and reference parameter passing conventions</h2>

                        <h4>
                            <input type="radio" name="answer1" value="a">(a) Do not differ<br>
                            <input type="radio" name="answer1" value="b">(b) Differ in the presence of loops<br>
                            <input type="radio" name="answer1" value="c">(c) Differ in all cases<br>
                            <input type="radio" name="answer1" value="d">(d) May differ in the presence of exceptions

                        </h4>
                        <script></script>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>2.  Consider this C code to swap two integers and these five statements:</h2>
                        <h3>
                            void swap(int *px, int *py)  <br>
                            {  <br>
                            *px = *px - *py;  <br>
                            *py = *px + *py;  <br>
                            *px = *py - *px;  <br>
                            }<br><br>
                            S1: will generate a compilation error<br>
                            S2: may generate a segmentation fault at runtime depending on the arguments passed<br>
                            S3: correctly implements the swap procedure for all input pointers referring to integers stored in memory locations accessible to the process<br>
                            S4: implements the swap procedure correctly for some but not all valid input pointers<br>
                            S5: may add or subtract integers and pointers.
                        </h3>
                        <h4> 
                            <input type="radio" name="answer2" value="a">(a) S1<br>
                            <input type="radio" name="answer2" value="b">(b) S2 and S3<br>
                            <input type="radio" name="answer2" value="c">(c) S2 and S4<br>
                            <input type="radio" name="answer2" value="d">(d) S2 and S5
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>3. Which one of the following is NOT performed during compilation?</h2>
                        <h4>
                            <input type="radio" name="answer3" value="a" >(a) Dynamic memory allocation<br>
                            <input type="radio" name="answer3" value="b" >(b) Type checking<br>
                            <input type="radio" name="answer3" value="c" >(c) Symbol table management<br>
                            <input type="radio" name="answer3" value="d" >(d) Inline expansion
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col text-left">
                        <h2>4. Choose the best matching between the programming styles in Group 1 and their characteristics in Group 2 </h2>
                        <table border="0" style="font-size: 18px">
                            <tr >
                                <th colspan="2" class="text-center">Group-1</th>
                                <th colspan="2" class="text-center">Group-2</th>
                            </tr>
                            <tr>
                                <th>P.&nbsp;</th>
                                <td> Functional&nbsp;</td>
                                <th>1.&nbsp;</th>
                                <td>Command-based, procedural&nbsp;</td>
                            </tr>
                            <tr>
                                <th>Q.&nbsp;</th>
                                <td>Logic&nbsp;</td>
                                <th>2.&nbsp;</th>
                                <td>Imperative, abstract data type&nbsp;</td>
                            </tr>
                            <tr>
                                <th>R.&nbsp;</th>
                                <td>Object-oriented&nbsp;</td>
                                <th>3.&nbsp;</th>
                                <td>Side-effect free, declarative, expression evaluation &nbsp;</td>
                            </tr>
                            <tr>
                                <th>S.&nbsp;</th>
                                <td>Imperative&nbsp;</td>
                                <th>4.&nbsp;</th>
                                <td>Declarative, clausal representation, theorem &nbsp;</td>
                            </tr>
                        </table>
                        <h4>
                            <input type="radio" name="answer4" value="a" >(a) P-2, Q-3, R-4, S-1<br>
                            <input type="radio" name="answer4" value="b" >(b) P-4, Q-3, R-2, S-1<br>
                            <input type="radio" name="answer4" value="c" >(c) P-3, Q-4, R-1, S-2<br>
                            <input type="radio" name="answer4" value="d" >(d) P-3, Q-4, R-2, S-1
                        </h4>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <h2>5. Scheme macros are primarily used to define :</h2>
                        <h4>
                            <input type="radio" name="answer5" value="a" >(a) Dynamically scoped environments<br>
                            <input type="radio" name="answer5" value="b" >(b) Closures<br>
                            <input type="radio" name="answer5" value="c" >(c) Functions that don't evaluate all of their arguments<br>
                            <input type="radio" name="answer5" value="d" >(d) Reflective programs
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>6. In Scheme, a tail-recursion algorithm is generally better than a non-tail recursion algorithm because </h2>
                        <h4><input type="radio" name="answer6" value="a" >(a) It can be run without growing the stack<br>
                            <input type="radio" name="answer6" value="b" >(b) It is easier to understand<br>
                            <input type="radio" name="answer6" value="c" >(c) It has no side effects<br>
                            <input type="radio" name="answer6" value="d" >(d) All of the above
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>7. Most modern programming languages use the following schemes for their variable scoping </h2>
                        <h4>
                            <input type="radio" name="answer7" value="a" >(a) Lexical scoping<br>
                            <input type="radio" name="answer7" value="b" >(b) Dynamic scoping<br>
                            <input type="radio" name="answer7" value="c" >(c) Both lexical and dynamic scoping<br>
                            <input type="radio" name="answer7" value="d" >(d) Scope inferencing
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>8. Attribute grammars are used to specify </h2>
                        <h4>
                            <input type="radio" name="answer8" value="a" >(a) Basic syntax of a programming language<br>
                            <input type="radio" name="answer8" value="b" >(b) Non-finite state machines<br>
                            <input type="radio" name="answer8" value="c" >(c) Static semantics of a programming language<br>
                            <input type="radio" name="answer8" value="d" >(d) Dynamic semantics of a programming language
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>9. What will be the output of the following pseudo-code when parameters are passed by reference and dynamic scoping is assumed</h2>
                        <h3>
                            a=3;<br>
                            void n(x) {x = x * a; print(x);}<br>
                            void m(y) {a = 1; a = y - a; n(a); print(a);}<br>
                            void main() {m(a);}<br>
                        </h3>
                        <h4>
                            <input type="radio" name="answer9" value="a" >(a) 6,2<br>
                            <input type="radio" name="answer9" value="b" >(b) 6,6<br>
                            <input type="radio" name="answer9" value="c" >(c) 4,2<br>
                            <input type="radio" name="answer9" value="d" >(d) 4,4
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>10. A common property of logic programming languages and functional languages is:</h2>

                        <h4>
                            <input type="radio" name="answer10" value="a" >(a) both are procedural languages<br>
                            <input type="radio" name="answer10" value="b" >(b) both are based on λ-calculus<br>
                            <input type="radio" name="answer10" value="c" >(c) both are declarative<br>
                            <input type="radio" name="answer10" value="d" >(d) both use Horn-clauses
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
