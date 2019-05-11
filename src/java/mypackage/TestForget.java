
package mypackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class TestForget extends HttpServlet {
    public static Connection con;
    public static PreparedStatement psmt;
    public static ResultSet rs;

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
            try {
            String mobile,question,answer;
            int flag=0;
            mobile=request.getParameter("mobile");
            question=request.getParameter("question");
            answer=request.getParameter("answer");
            
                con=MySqlCon.connection();
                psmt=con.prepareStatement("SELECT * FROM student;");
                rs=psmt.executeQuery();
                
            while(rs.next()){
                if(mobile.equals(rs.getString("mobile"))){
                        if(question.equals(rs.getString("question"))){
                            if(answer.equals(rs.getString("answer"))){   
                            out.println("Your Password : "+rs.getString("password"));
                            flag=0;
                            break;
                            }
                            else{
                                out.println("Please enter correct answer.");
                                flag=0;
                                break;
                            }
                        }
                        else{
                            out.println("Please choose correct Security Question Which was selected during registration.");
                            flag=0;
                            break;
                        }
                        
                }
                else{
                    flag=1;
                    
                }
                   
            }
            if(flag==1)
                out.println("Please enter registered mobile number.");
           
           rs.close();
            psmt.close();
            con.close();
           /*if(flag==1){
                con=MySqlCon.connection();
                psmt=con.prepareStatement("UPDATE student SET password='"+password+"' Where uname='"+uname+"'");
                psmt.executeUpdate();
                out.println("Passwor Updated Successfully...");
                con.close();
                psmt.close();
                response.sendRedirect("login.jsp");
            }
           /* else
                response.sendRedirect("error.jsp");*/
            
            
            }

        
        catch (SQLException ex) {
                Logger.getLogger(TestForget.class.getName()).log(Level.SEVERE, null, ex);
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
