<%-- 
    Document   : signup
    Created on : Mar 15, 2019, 1:24:20 PM
    Author     : VIJAY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>sign up</title>
        <link rel="icon" href="#" type="image/x-icon">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="style/background.css" type="text/css">
        <style>
            .error{
                color: red;
                font-size: 24px;
                font-style: italic;
                font-family: cursive;
                font-weight: bolder;
            }
        </style>

    </head>
    <body style="background-image:url(image/college_background.jpg)">
        <div class="background" style="background-image:url(image/signup_background.gif)">
            <form class="box" onsubmit="return validateForm()" autocomplete="off" action="TestSignup" method="get" >
                <div class=" container-fluid   text-center ">
                    
                    <div class="row m-5">
                        <div class="col"><h1>Sign Up ,Now</h1></div>
                    </div>
                    
                    
                    <div class="row">
                        <div class="col"><h2>User Name :</h2></div>
                    </div>
                    <div class="row">
                        <div class="col"><input type="text" id="uname" name="uname" placeholder="User Name">
                            <span id="uname_error" class="error"></span>
                        </div>
                    </div>
                    
                    
                    <div class="row ">
                        <div class="col"><h2>Password :</h2></div>
                    </div>
                    <div class="row ">
                        <div class="col"><input type="password" id="password" name="password" placeholder="Password">
                            <span id="password_error" class="error"></span>
                        </div>
                    </div>
                    
                    
                    <div class="row">
                        <div class="col"><h2>Confirm Password :</h2></div>
                    </div>
                    <div class="row">
                        <div class="col"><input type="password" id="cnf_password" name="cnf_password" placeholder="Re Enter Password">
                            <span id="cnf_password_error" class="error"></span>
                        </div>
                    </div>
                    
                    
                    <div class="row">
                        <div class="col"><h2>Email ID :</h2></div>
                    </div>
                    <div class="row">
                        <div class="col"><input type="text" id="email" name="email" placeholder="Email Id">
                            <span id="email_error" class="error"></span>
                        </div>
                    </div>
                    
                    
                    <div class="row">      
                        <div class="col"><h2>Mobile Number :</h2></div>
                    </div>
                    <div class="row">
                        <div class="col"><input type="text" id="mobile" name="mobile" placeholder="Mobile Number">
                            <span id="mobile_error" class="error"></span>
                        </div>
                    </div>
                    
                    
                    <div class="row">
                        <div class="col"><h2>Security Question :</h2></div>
                    </div>
                    <div class="row">
                        <div class="col"><select id="question" class="questions" name="question" style="background: #3498db">
                                <option selected>Choose Your Question:</option>
                                <option >What is your nick name?</option>
                                <option >What is your first school name?</option>
                                <option >What is your best friend name?</option>
                                <option >What is your boyfriend name?</option>
                                <option >What is your girlfriend name?</option>
                            </select>
                            <span id="question_error" class="error"></span>
                        </div>
                    </div>
                    
                    
                    <div class="row">
                        <div class="col"><h2>Security Answer :</h2></div>
                    </div>
                    
                    <div class="row">
                        <div class="col"><input type="text" id="answer" name="answer" placeholder="Answer">
                            <span id="answer_error" class="error"></span>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col box text-center"><button type="submit" >Sign Up</button></div>
                    </div>
                    <div class="row">
                        <div class="col box text-center"><button type="reset" >Reset</button></div>
                    </div>

                </div>
            </form>
            <script>
                function validateForm() {

                    var uname = document.getElementById('uname').value;
                    var password = document.getElementById('password').value;
                    var cnf_password = document.getElementById('cnf_password').value;
                    var email = document.getElementById('email').value;
                    var mobile = document.getElementById('mobile').value;
                    var question = document.getElementById('question').value;
                    var cnf_question = "Choose Your Question:";
                    var answer = document.getElementById('answer').value;

                    var uname_check = /^[A-Za-z ]{3,30}$/;
                    var password_check = /^[\w !@#$%^&*+.]{4,8}$/;
                    var email_check = /^[\w]{1}[\w._]{0,}@[a-zA-Z]{3,}.{1}[a-zA-Z.]{2,6}$/;
                    var mobile_check = /^[6789]{1}[\d]{9}$/;
                    var answer_check = /^[A-Za-z ]{3,}$/;


                    if (uname_check.test(uname)) {
                        document.getElementById('uname_error').innerHTML = "";
                    } else {
                        
                        document.getElementById('uname_error').innerHTML = "*Please enter valid user name.";
                        return false;
                    }

                    if (password_check.test(password)) {
                        document.getElementById('password_error').innerHTML = "";
                    } else {
                        document.getElementById('password_error').innerHTML = "Enter valid password minimum 4 & maximum 8 char.";
                        return false;
                    }
                    if (cnf_password === password) {
                        document.getElementById('cnf_password_error').innerHTML = "";
                    } else {
                        document.getElementById('cnf_password_error').innerHTML = "Password did not match.";
                        return false;
                    }

                    if (email_check.test(email)) {
                        document.getElementById('email_error').innerHTML = "";
                    } else {
                        document.getElementById('email_error').innerHTML = "Please enter valid email id.";
                        return false;
                    }

                    if (mobile_check.test(mobile)) {
                        document.getElementById('mobile_error').innerHTML = "";
                    } else {
                        document.getElementById('mobile_error').innerHTML = "*Please enter valid mobile number.";
                        return false;
                    }

                    if (cnf_question !== question) {
                        document.getElementById('question_error').innerHTML = "";
                    } else {
                        document.getElementById('question_error').innerHTML = "Choose valid question.";
                        return false;
                    }
                    if (answer_check.test(answer)) {
                        document.getElementById('answer_error').innerHTML = "";
                    } else {
                        document.getElementById('answer_error').innerHTML = "Enter valid answer";
                        return false;
                    }
                }
            </script>
        </div>
    </body>
</html>
