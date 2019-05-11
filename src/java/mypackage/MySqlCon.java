
package mypackage;
import java.sql.*;

public class MySqlCon {
    public static Connection conn;
    public static Connection connection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded...");
           conn=DriverManager.getConnection("jdbc:mysql://localhost/bce","root","");
           /*conn=DriverManager.getConnection("jdbc:mysql://node15941-env-1372906.cloudjiffy.net/bce","root","TLSsqv56826");*/
            System.out.println("Connection established...");
        }
        catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
        return conn;
    }
    
}
