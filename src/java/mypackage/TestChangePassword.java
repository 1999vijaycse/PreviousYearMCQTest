package mypackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import static mypackage.TestForget.con;
import static mypackage.TestForget.psmt;
import static mypackage.TestForget.rs;

public class TestChangePassword extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        if (session.isNew() || session.getAttribute("uname") == null) {
            response.sendRedirect("login.jsp");
        } else {
            String password, question, answer;
            int flag = 0;
            try {
                password = request.getParameter("password");

                question = request.getParameter("question");
                answer = request.getParameter("answer");

                con = MySqlCon.connection();
                psmt = con.prepareStatement("SELECT question,answer FROM student Where mobile='" + session.getAttribute("mobile") + "'");
                rs = psmt.executeQuery();

                while (rs.next()) {

                    if (question.equals(rs.getString("question"))) {
                        if (answer.equals(rs.getString("answer"))) {
                            flag = 1;
                        } else {
                            out.println("Please enter correct answer.");
                        }
                    } else {
                        out.println("Please choose same question which was choosed during registration.");
                    }
                }

                rs.close();
                psmt.close();
                con.close();
                if (flag == 1) {
                    con = MySqlCon.connection();
                    psmt = con.prepareStatement("UPDATE student SET password='" + password + "' Where mobile='" + session.getAttribute("mobile") + "'");
                    psmt.executeUpdate();

                    out.print("Password updated Successfully....");
                    con.close();
                    psmt.close();
                    //response.sendRedirect("home.jsp");
                }
            } catch (SQLException ex) {
                out.println(ex);
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
