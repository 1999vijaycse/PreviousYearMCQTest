
package mypackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class TestLogin extends HttpServlet {

    public static Connection con;
    public static PreparedStatement psmt;
    public static ResultSet rs;
   public static String mobile,password;
     
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession();
        
        try  {
            
            
            mobile=request.getParameter("mobile");
            password=request.getParameter("password");
            con=MySqlCon.connection();
            psmt=con.prepareStatement("SELECT * FROM student");
            rs=psmt.executeQuery();
           
         int flag=0;
            while(rs.next()){
                if(mobile.equals(rs.getString("mobile"))&&password.equals(rs.getString("password"))){
                   session.setAttribute("uname",rs.getString("uname"));
                   session.setAttribute("email",rs.getString("email"));
                   session.setAttribute("mobile",rs.getString("mobile"));
                   response.sendRedirect("home.jsp");
                   flag=0;
                   break;
                   
                }
                else
                    flag=1;
            }
           
           if(flag==1)
            out.println("Enter valid Email/Mobile or password.");
           
            psmt.close();
            con.close();
            rs.close();
        }
        catch (SQLException ex) {
                Logger.getLogger(TestLogin.class.getName()).log(Level.SEVERE, null, ex);
                out.println(ex);
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
