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
        <title>flat2017 mcq</title>
        <link rel="icon" href="image/flat_logo.jpg" type="image/x-icon">
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
                <div class="col-2 text-left mt-2"><img src="image/flat_logo.jpg" alt="logo"></div>
                <div class="col-10 text-left px-5">FLAT MCQ of AKU</div>
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
                    <a href="flat2018.jsp" ><i class="fa fa-pencil"></i> flat18</a>
                    <a href="flat2017.jsp" class="active"><i class="fa fa-pencil active"></i> flat17</a>
                    <a href="flat2016.jsp" ><i class="fa fa-pencil"></i> flat16</a>
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
        <form action="TestFLAT2017" method="get">
            <div class="container text-left">
                <div class="row">
                    <div class="col text-center mb-3">
                        <h1> *** FLAT 2017 mcqs *** </h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>1. The output of the Moore Machine depends</h2>

                        <h4>
                            <input type="radio" name="answer1" value="a" >(a) only on present state<br>
                            <input type="radio" name="answer1" value="b" >(b) only on current input symbol<br>
                            <input type="radio" name="answer1" value="c" >(c) both on present state and current input symbol<br>
                            <input type="radio" name="answer1" value="d" >(d) None of the above
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>2. The logic of pumping lemma is good example of </h2>

                        <h4> 
                            <input type="radio" name="answer2" value="a">(a) the pigeon – hole principle<br>
                            <input type="radio" name="answer2" value="b">(b) the divide and conquer principle<br>
                            <input type="radio" name="answer2" value="c">(c) recursion<br>
                            <input type="radio" name="answer2" value="d">(d) iteration
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>3. Recursively enumerable languages are not closed under</h2>
                        <h4>
                            <input type="radio" name="answer3" value="a" >(a) union<br>
                            <input type="radio" name="answer3" value="b" >(b) intersection<br>
                            <input type="radio" name="answer3" value="c" >(c) complementation<br>
                            <input type="radio" name="answer3" value="d" >(d) concatenation
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>4. The language L={a<sup>n</sup>b<sup>n</sup>a<sup>n</sup> where n=1,2,3,....} is a</h2>

                        <h4>
                            <input type="radio" name="answer4" value="a" >(a) regular language<br>
                            <input type="radio" name="answer4" value="b" >(b) context-free language<br>
                            <input type="radio" name="answer4" value="c" >(c) non context-free<br>
                            <input type="radio" name="answer4" value="d" >(d) none of the above
                        </h4>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <h2>5. A language L is denoted by a regular expression : L=(x)*(x|yx*),<br>then which of the following is not a legal string within L ?</h2>

                        <h4>
                            <input type="radio" name="answer5" value="a" >(a) x<br>
                            <input type="radio" name="answer5" value="b" >(b) xyxyx<br>
                            <input type="radio" name="answer5" value="c" >(c) xyx<br>
                            <input type="radio" name="answer5" value="d" >(d) None of the above
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>6. Context-free languages are not closed under</h2>

                        <h4><input type="radio" name="answer6" value="a" >(a) union<br>
                            <input type="radio" name="answer6" value="b" >(b) intersection<br>
                            <input type="radio" name="answer6" value="c" >(c) concatenation<br>

                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>7. Recursive languages are </h2>

                        <h4>
                            <input type="radio" name="answer7" value="a" >(a) a proper superset of CFLs<br>
                            <input type="radio" name="answer7" value="b" >(b) Always recognizable <br>
                            <input type="radio" name="answer7" value="c" >(c) Also called type 0 languages<br>
                            <input type="radio" name="answer7" value="d" >(d) Recognizable by Turing Machines
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>8. Choose the incorrect statements :</h2>
                        <h4>
                            <input type="radio" name="answer8" value="a" >(a) Every subset of countable set is countable.<br>
                            <input type="radio" name="answer8" value="b" >(b) The class of DPDA is not countable.<br>
                            <input type="radio" name="answer8" value="c" >(c) The class of TM is countable.<br>
                            <input type="radio" name="answer8" value="d" >(d) The class of LBA is countable
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>9. Which of the following statements is true ?</h2>

                        <h4>
                            <input type="radio" name="answer9" value="a" >(a) The language { a<sup>n</sup>|n is prime} is regular language.<br>
                            <input type="radio" name="answer9" value="b" >(b) The union of 2 recursive language is recursive.<br>
                            <input type="radio" name="answer9" value="c" >(c) Recursive enumerable languages are closed under complementation.<br>
                            <input type="radio" name="answer9" value="d" >(d) Recursive languages are not closed under complementation.
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>10. In case of TM, by reading input x. TM</h2>

                        <h4>
                            <input type="radio" name="answer10" value="a" >(a) may go to halt-final state <br>
                            <input type="radio" name="answer10" value="b" >(b) may go to halt-non-final state<br>
                            <input type="radio" name="answer10" value="c" >(c) may go to infinite loop<br>
                            <input type="radio" name="answer10" value="d" >(d) All of the above

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
