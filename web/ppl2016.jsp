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
        <title>ppl2016 mcq</title>
        <link rel="icon" href="image/ppl_logo.jpg" type="image/x-icon">
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
                <div class="col-2 text-center mt-2"><img src="image/ppl_logo.jpg" alt="logo"></div>
                <div class="col-10 text-center px-5">PPL MCQ of AKU</div>
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
                    <a href="ppl2017.jsp" ><i class="fa fa-pencil"></i> ppl_17</a>
                    <a href="ppl2016.jsp" class="active"><i class="fa fa-pencil active"></i> ppl_16</a>
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
        <form action="TestPPL2016" method="get">
            <div class="container text-left">
                <div class="row">
                    <div class="col text-center mb-3">
                        <h1> *** PPL 2016 mcqs *** </h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>1. What is printed by the print statements in the program P1 assuming call by reference parameter passing?</h2>
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
                            <input type="radio" name="answer1" value="a" >(a) 10, 3<br>
                            <input type="radio" name="answer1" value="b" >(b) 31, 3<br>
                            <input type="radio" name="answer1" value="c" >(c) 27, 7<br>
                            <input type="radio" name="answer1" value="d" >(d) None of the above
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>2. Which of the following is the functionality of ‘Data Abstraction’? </h2>

                        <h4> 
                            <input type="radio" name="answer2" value="a">(a) Reduce Complexity<br>
                            <input type="radio" name="answer2" value="b">(b) Binds together code and data<br>
                            <input type="radio" name="answer2" value="c">(c) Parallelism<br>
                            <input type="radio" name="answer2" value="d">(d) None of the mentioned
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>3. Which languages necessarily need heap allocation in the runtime environment?</h2>
                        <h4>
                            <input type="radio" name="answer3" value="a" >(a) Those that support recursion<br>
                            <input type="radio" name="answer3" value="b" >(b) Those that use dynamic scoping<br>
                            <input type="radio" name="answer3" value="c" >(c) Those that allow dynamic data structures<br>
                            <input type="radio" name="answer3" value="d" >(d) Those that use global variables
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>4. Which of the following statements are CORRECT? </h2>
                        <h3>
                            (i)    Static allocation of all data areas by a compiler makes it impossible to implement recursion. <br>
                            (ii)   Automatic garbage collection is essential to implement recursion. <br>
                            (iii)  Dynamic allocation of activation records is essential to implement recursion.<br>
                            (iv)   Both heap and stack are essential to implement recursion.
                        </h3>
                        <h4>
                            <input type="radio" name="answer4" value="a" >(a) (i) and (ii)<br>
                            <input type="radio" name="answer4" value="b" >(b) (ii) and (iii)<br>
                            <input type="radio" name="answer4" value="c" >(c) (iii) and (iv)<br>
                            <input type="radio" name="answer4" value="d" >(d) (i) and (iii)
                        </h4>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <h2>5. The most appropriate matching for the following pairs is</h2>
                        <table border="0" style="font-size: 18px">
                            <tr>
                                <th>X:&nbsp;</th>
                                <td> m=malloc(5); m= NULL;&nbsp;</td>
                                <th>1.&nbsp;</th>
                                <td>using dangling pointers&nbsp;</td>
                            </tr>
                            <tr>
                                <th>Y:&nbsp;</th>
                                <td>free(n); n->value=5;&nbsp;</td>
                                <th>2.&nbsp;</th>
                                <td>using uninitialized pointers&nbsp;</td>
                            </tr>
                            <tr>
                                <th>Z:&nbsp;</th>
                                <td>char *p; *p = ’a’;&nbsp;</td>
                                <th>3.&nbsp;</th>
                                <td>lost memory is:&nbsp;</td>
                            </tr>
                        </table>
                        <h4>
                            <input type="radio" name="answer5" value="a" >(a) X—1, Y—3, Z-2<br>
                            <input type="radio" name="answer5" value="b" >(b) X—2, Y—1, Z–3<br>
                            <input type="radio" name="answer5" value="c" >(c) X—3, Y—2, Z–1<br>
                            <input type="radio" name="answer5" value="d" >(d) X—3, Y—1, Z–2
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>6. The following program fragment is written in a programming language that allows variables and does not allow nested declarations of functions.</h2>
                        <h3>
                            global int i = 100, j = 5; <br>
                            void P(x) <br>
                            { <br>
                            int i = 10; <br>
                            print(x + 10); <br>
                            i = 200; <br>
                            j = 20; <br>
                            print(x); <br>
                            } <br>
                            main() <br>
                            { <br>
                            P(i + j); <br>
                            } <br><br>
                            If the programming language uses dynamic scoping and call by name parameter passing mechanism, the values printed by the above program are :<br>
                        </h3>
                        <h4><input type="radio" name="answer6" value="a" >(a) 115, 220<br>
                            <input type="radio" name="answer6" value="b" >(b) 25, 220<br>
                            <input type="radio" name="answer6" value="c" >(c) 25, 15<br>
                            <input type="radio" name="answer6" value="d" >(d) 115, 105
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>7. The attributes of three arithmetic operators in some programming language are given below. </h2>
                        <table border='1'>
                            <tr>
                                <th>Operator&nbsp;</th><th>Precedence&nbsp;</th><th>Associativity&nbsp;</th><th>Arity&nbsp;</th>
                            </tr>
                            <tr>
                                <td>+&nbsp;</td><td>High&nbsp;</td><td>Left&nbsp;</td><td>Binary&nbsp;</td>
                            </tr>
                            <tr>
                                <td>-&nbsp;</td><td>Medium&nbsp;</td><td>Right&nbsp;</td><td>Binary&nbsp;</td>
                            </tr>
                            <tr>
                                <td>*&nbsp;</td><td>Low&nbsp;</td><td>Left&nbsp;</td><td>Binary&nbsp;</td>
                            </tr>
                        </table>
                        <h4>
                            <input type="radio" name="answer7" value="a" >(a) 1<br>
                            <input type="radio" name="answer7" value="b" >(b) 2<br>
                            <input type="radio" name="answer7" value="c" >(c) 3<br>
                            <input type="radio" name="answer7" value="d" >(d) 9
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>8. Operator associativity generally applies to</h2>
                        <h4>
                            <input type="radio" name="answer8" value="a" >(a) Only prefix operators<br>
                            <input type="radio" name="answer8" value="b" >(b) Only infix operators<br>
                            <input type="radio" name="answer8" value="c" >(c) Only postfix operator<br>
                            <input type="radio" name="answer8" value="d" >(d) prefix, infix, postfix operators
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>9. In Java Script, the expression A?B:C is the equivalent to</h2>

                        <h4>
                            <input type="radio" name="answer9" value="a" >(a) if (A) {B} else {C}<br>
                            <input type="radio" name="answer9" value="b" >(b) if (A==B) C;<br>
                            <input type="radio" name="answer9" value="c" >(c) if (A!=B) C;<br>
                            <input type="radio" name="answer9" value="d" >(d) if (A) {B; C};
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>10. In an object-oriented language, when an object has several methods have the same name but different signatures, we call this</h2>

                        <h4>
                            <input type="radio" name="answer10" value="a" >(a) inheritance<br>
                            <input type="radio" name="answer10" value="b" >(b) overriding<br>
                            <input type="radio" name="answer10" value="c" >(c) overloading<br>
                            <input type="radio" name="answer10" value="d" >(d) signature clash
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
