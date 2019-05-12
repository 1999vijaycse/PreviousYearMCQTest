package mypackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import static mypackage.TestCD2016.con;
import static mypackage.TestCD2016.psmt;
import static mypackage.TestCD2016.rs;

public class TestCD2016 extends HttpServlet {

    public static Connection con;
    public static PreparedStatement psmt;
    public static ResultSet rs;
    public int correct = 0;
    public int incorrect = 0;
    public int unattempt = 0;
    public int total_marks = 0;
    public int obtained_marks = 0;
    public int attempt = 0;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();
        if (session.isNew() || session.getAttribute("uname") == null) {
            response.sendRedirect("login.jsp");
        } else {
            try {
                ArrayList<String> user_answer, correct_answer/* test_result*/;
                user_answer = new ArrayList<>();
                correct_answer = new ArrayList<>();

                user_answer.add(request.getParameter("answer1"));
                user_answer.add(request.getParameter("answer2"));
                user_answer.add(request.getParameter("answer3"));
                user_answer.add(request.getParameter("answer4"));
                user_answer.add(request.getParameter("answer5"));
                user_answer.add(request.getParameter("answer6"));
                user_answer.add(request.getParameter("answer7"));
                user_answer.add(request.getParameter("answer8"));
                user_answer.add(request.getParameter("answer9"));
                user_answer.add(request.getParameter("answer10"));

                con = MySqlCon.connection();
                psmt = con.prepareStatement("SELECT * FROM mcq where sub='CD' and year='2016'");
                rs = psmt.executeQuery();
                while (rs.next()) {
                    correct_answer.add(rs.getString("correct_ans"));
                }
                con.close();
                psmt.close();
                rs.close();
                for (int j = 0; j < user_answer.size(); j++) {
                    if (user_answer.get(j) == null) {
                        unattempt++;
                    }

                }

                for (int j = 0; j < correct_answer.size(); j++) {

                    if (user_answer.get(j) == null ? correct_answer.get(j) == null : user_answer.get(j).equals(correct_answer.get(j))) {
                        correct++;
                    }
                }

                attempt = user_answer.size() - unattempt;
                incorrect = attempt - correct;
                obtained_marks = correct * 2;
                total_marks = correct_answer.size() * 2;

                out.print(
                        "<html>"
                        + "<head>"
                        + "<title>"
                        + "test result"
                        + "</title>"
                        + "<link rel=icon href=image/collegelogo.jpg type=image/x-icon>"
                        + "<link rel=stylesheet href=https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css>"
                        + "<link rel=stylesheet href=https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css>"
                        + "<link rel=stylesheet href=https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css>"
                        + "<script src=https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js></script>"
                        + "<script src=https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js></script>"
                        + "<link rel=stylesheet href=style/test.css>"
                        + "<script src=script/home.js></script>"
                        + "</head>"
                        + "<body style=\"background:radial-gradient(#958548, #7de7a7)\">"
                        + "<div class=\"container-fluid header\">"
                        + "<div class=\"row\">"
                        + "<div class=\"col\">YOUR TEST RESULT</div>"
                        + "</div></div>"
                        + "<div class=\"topnav\" id=\"myTopnav\">" + "<div class=\"row\">"
                        + "<div class=\"col\">" + "<a href=\"home.jsp\"><i class=\"fa fa-fw fa-home text-center\"></i> Home</a>"
                        + "<a href=\"mcq.jsp\"><i class=\"fa fa-fw fa-search\"></i> MCQ Test</a>"
                        + "<a href=\"logout.jsp\"><i class=\"fa fa-fw fa-user\"></i> Log out</a>"
                        + "<a href=\"javascript:void(0);\" class=\"icon\" onclick=\"myFunction()\">"
                        + "<i class=\"fa fa-bars\"></i>"
                        + "</a></div>" + "</div>" + "</div>"
                        + "<center>"
                        + "<div style=color:blue><h1>Hi,&nbsp;&nbsp;" + session.getAttribute("uname") + "<br>Your Test Result<br>of<br>CD 2016 Objectives<br></h1> </div>"
                        + "<div style=color:white><h2> Questions Attempted : " + attempt + "</h2> </div>"
                        + "<div style=color:black><h2>Questions Unattempted : " + unattempt + "</h2> </div>"
                        + "<div style=color:green><h2>Correct answer : " + correct + "</h2> </div>"
                        + "<div style=color:darkred><h2>Incorrect answer : " + incorrect + "</h2> </div>"
                        + "<div style=color:brown><h2>Marks Obtained : " + obtained_marks + "</h2> </div>"
                        + "<div style=color:maroon><h2>Total marks : " + total_marks + "</h2> </div>"
                        + "<div style=color:darkblue><h2>Percentage obtained : " + (float) obtained_marks * 100 / total_marks + "%" + "</h2> </div>"
                        + "<div style=color:darkgreen><h2>Accuracy obtained :  " + (float) correct * 100 / attempt + "%" + "</h2> </div>"
                        + "<div><h3><br><hr></h3></div>"
                        + "<div style=color:yellow><h1>***Test Summary***<br>of<br>***CD 2016***</h1></div>"
                        + "<table border=2>"
                        + "<tr>"
                        + "<th><div><h2>Question NO.</h2></div></th>"
                        + "<th><div style=color:darkblue><h2>Your Answer</h2></div></th>"
                        + "<th><div style=color:darkgreen><h2>Correct Answewr</h2></div></th>"
                        + "</tr>"
                        + "<tr>"
                        + "<td><div><h2><center>1</center></h2></div></td>"
                        + "<td><center><div style=color:darkblue><h2>" + user_answer.get(0) + "</h2></div><center></center></td>"
                        + "<td><center><div style=color:darkgreen ><h2>" + correct_answer.get(0) + "</h2></div></td><center></center>"
                        + "</tr>"
                        + "<tr>"
                        + "<td><center><div><h2>2</h2></div></center></td>"
                        + "<td>"
                        + "<center><div style=color:darkblue><h2>" + user_answer.get(1) + "</h2></div></center></td>"
                        + "<td>"
                        + "<center><div style=color:darkgreen><h2>" + correct_answer.get(1) + "</h2></div></td></center>"
                        + "</tr>"
                        + "<tr>"
                        + "<td><center><div><h2>3</h2></div></center></td>"
                        + "<td><center><div style=color:darkblue><h2>" + user_answer.get(2) + "</h2></div></center></td>"
                        + "<td><center><div style=color:darkgreen><h2>" + correct_answer.get(2) + "</h2></div></td></center>"
                        + "</tr>"
                        + "<tr>"
                        + "<td><center><div><h2>4</h2></div></center></td>"
                        + "<td><center><div style=color:darkblue><h2>" + user_answer.get(3) + "</h2></div></center></td>"
                        + "<td><center><div style=color:darkgreen><h2>" + correct_answer.get(3) + "</h2></div></td></center>"
                        + "</tr>"
                        + "<tr>"
                        + "<td><center><div><h2>5</h2></div></center></td>"
                        + "<td><center><div style=color:darkblue><h2>" + user_answer.get(4) + "</h2></div></center></td>"
                        + "<td><center><div style=color:darkgreen><h2>" + correct_answer.get(4) + "</h2></div></td></center>"
                        + "</tr>"
                        + "<tr>"
                        + "<td><center><div><h2>6</h2></div></center></td>"
                        + "<td>"
                        + "<center><div style=color:darkblue><h2>" + user_answer.get(5) + "</h2></div></center></td>"
                        + "<td><center><div style=color:darkgreen><h2>" + correct_answer.get(5) + "</h2></div></td></center>"
                        + "</tr>"
                        + "<tr>"
                        + "<td><center><div><h2>7</h2></div></center></td>"
                        + "<td><center><div style=color:darkblue><h2>" + user_answer.get(6) + "</h2></div></center></td>"
                        + "<td><center><div style=color:darkgreen><h2>" + correct_answer.get(6) + "</h2></div></td></center>"
                        + "</tr>"
                        + "<tr>"
                        + "<td><center><div><h2>8</h2></div></center></td>"
                        + "<td><center><div style=color:darkblue><h2>" + user_answer.get(7) + "</h2></div></center></td>"
                        + "<td><center><div style=color:darkgreen><h2>" + correct_answer.get(7) + "</h2></div></center></td>"
                        + "</tr>"
                        + "<tr>"
                        + "<td><center><div><h2>9</h2></div></center></td>"
                        + "<td><center><div style=color:darkblue><h2>" + user_answer.get(8) + "</h2></div></center></td>"
                        + "<td><center><div style=color:darkgreen><h2>" + correct_answer.get(8) + "</h2></div></td></center>"
                        + "</tr>"
                        + "<tr>"
                        + "<td><center><div><h2>10</h2></div></center></td>"
                        + "<td><center><div style=color:darkblue><h2>" + user_answer.get(9) + "</h2></div></center></td>"
                        + "<td><center><div style=color:darkgreen><h2>" + correct_answer.get(9) + "</h2></div></center></td>"
                        + "</tr>"
                        + "</table>"
                        + "</center>"
                        + "<br>"
                        + "<div class=\"container-fluid footer\">"
                        + "<div class=\"row\">"
                        + "<div class=\"col text-center\"><h4>Thank You For Visiting !</h4></div>"
                        + "</div></div>"
                        + "</body>"
                        + "</html>"
                );

                correct = 0;
                incorrect = 0;
                attempt = 0;
                total_marks = 0;
                obtained_marks = 0;
                unattempt = 0;
                user_answer.clear();
                correct_answer.clear();
            } catch (SQLException ex) {
                out.println(ex);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
