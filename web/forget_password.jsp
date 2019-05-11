<%-- 
    Document   : change_password
    Created on : Mar 15, 2019, 10:19:16 PM
    Author     : VIJAY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Forget Password</title>
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
    <body style="background-image: url(image/login_background.jpg)">
        
        <form class="box" onsubmit="return validateForm()" autocomplete="off" action="TestForget" method="post" >
            <div class=" container-fluid  text-center m-5 p-5">
                <div class="row">
                    <div class="col mb-3 p-2"><h1>Forget Password</h1></div>
                </div>
                <div class="row">
                        <div class="col"><input type="text" id="mobile" name="mobile" placeholder="Mobile Number">
                            <span id="mobile_error" class="error"></span>
                        </div>
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
                        <div class="col"><input type="text" id="answer" name="answer" placeholder="Answer">
                            <span id="answer_error" class="error"></span>
                        </div>
                    </div>
            <div class="row">
                <div class="col"><button type="submit" >See Your Password !</button></div>
            </div>
            <div class="row">
                <div class="col"><a href='login.jsp'>Back</a></div>
            </div>
            </div>
        </form>
        <script>
                function validateForm() {
                    
                    var mobile = document.getElementById('mobile').value;
                    var question = document.getElementById('question').value;
                    var cnf_question = "Choose Your Question:";
                    var answer = document.getElementById('answer').value;
                    
                    var mobile_check = /^[6789]{1}[\d]{9}$/;
                    var answer_check = /^[A-Za-z ]{3,}$/;

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
    </body>
</html>


