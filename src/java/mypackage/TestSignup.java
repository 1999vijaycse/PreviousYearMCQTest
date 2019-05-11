
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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "TestSignup", urlPatterns = {"/TestSignup"})
public class TestSignup extends HttpServlet {
public static Connection con;
    public static Statement smt;
    public static PreparedStatement psmt;
    public static ResultSet rs;
   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        try{
            String uname,password,email,mobile,question,answer;
            
            uname=request.getParameter("uname");
            password=request.getParameter("password");
            
            email=request.getParameter("email");
            mobile=request.getParameter("mobile");
            question=request.getParameter("question");
            answer=request.getParameter("answer");
            
            con=MySqlCon.connection();
            psmt=con.prepareStatement("SELECT mobile FROM student");
            rs=psmt.executeQuery();
            int flag=0;
            while(rs.next()){
                if(mobile.equals(rs.getString("mobile"))){
                   out.println("Sorry!.");
                   flag=0;
                   break;
                                   
                   
                }
                else
                    flag=1;
            }
            out.println(flag);
            if(flag==1){
                
          
            
            smt=con.createStatement();
            String query;
            query="INSERT INTO student values('"+uname+"','"+password+"','"+email+"','"+mobile+"','"+question+"','"+answer+"')";
            smt.executeUpdate(query);
            
          
            
            response.sendRedirect("login.jsp");
            }
            else{
            out.println("Already registered, please use different mobile number.");
            }
             smt.close();
            con.close();
            psmt.close();
            rs.close();//response.sendRedirect("error.jsp");
        } 
        catch (SQLException ex) {
            Logger.getLogger(TestSignup.class.getName()).log(Level.SEVERE, null, ex);
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
