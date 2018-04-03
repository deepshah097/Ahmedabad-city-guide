
package User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class QueryExecutor {
    private static final String driverName="com.mysql.jdbc.Driver";
    
    public static void main(String[] args) {
        String query="insert into category values('abc','xyz','abc@gmail.com','123','Female')";
        ExecuteQuery(query);
    }
    
    public static Connection getConnection() throws ClassNotFoundException, SQLException
    {
        Class.forName(driverName);
        Connection c=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ahmedabadcityguide", "root", "ndc12345");
        System.out.println("Connection established");
        return c;
    }
    public static boolean ExecuteQuery(String query)
    {
        boolean res=true;
        Connection c=null;
        try {
            c=getConnection();
            PreparedStatement ps=(PreparedStatement) c.prepareStatement(query);
             ps.executeUpdate();
             System.out.println("Query inserted successfully");
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("Connection not established");
            Logger.getLogger(QueryExecutor.class.getName()).log(Level.SEVERE, null, ex);
            res=false;
        }
        finally
        {
            if(c!=null)
            {
                try {
                    c.close();
                } catch (SQLException ex) {
                    Logger.getLogger(QueryExecutor.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            else
            {
                res=false;
            }
        }
        return res;
    }
}
