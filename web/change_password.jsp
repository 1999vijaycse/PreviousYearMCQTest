<%-- 
    Document   : change_password
    Created on : Mar 15, 2019, 10:19:16 PM
    Author     : VIJAY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    if(session.isNew() || session.getAttribute("uname")==null)
        response.sendRedirect("login.jsp");

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Change password</title>
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
        
        <form class="box" onsubmit="return validateForm()" autocomplete="off" action="TestChangePassword" method="post" >
            <div class=" container-fluid  text-center m-5 p-5">
                <div class="row">
                    <div class="col mb-3 p-2"><h1>Change Password</h1></div>
                </div>
                
                    <div class="row ">
                        <div class="col"><input type="password" id="password" name="password" placeholder="Enter new Password">
                            <span id="password_error" class="error"></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col"><input type="password" id="cnf_password" name="cnf_password" placeholder="Re Enter Password">
                            <span id="cnf_password_error" class="error"></span>
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
                <div class="col"><button type="submit" >Save</button></div>
                </div>
                <div class="row">
                <div class="col"><a href='home.jsp'>Back</a></div>
            </div>
            </div>
        </form>
        <script>
                function validateForm() {
                    var password = document.getElementById('password').value;
                    var cnf_password = document.getElementById('cnf_password').value;
                    var question = document.getElementById('question').value;
                    var cnf_question = "Choose Your Question:";
                    var answer = document.getElementById('answer').value;
                    var password_check = /^[\w !@#$%^&*+.]{4,8}$/;
                    var answer_check = /^[A-Za-z ]{3,}$/;
                    
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
