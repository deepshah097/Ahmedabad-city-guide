
package Manager;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nupur
 */
public class QueryExecutor {
    public static Connection c=null;
    private static final String driverName="com.mysql.jdbc.Driver";
    public static ResultSet rs;
    
    //Function for executing all queries other than select query
    public static boolean executeQuery(String query)
    {
        boolean res=true;
        try {
            c=getConnection1();
            if(c==null)
            {
                System.out.println("Connection not established");
            }
            else{
            PreparedStatement s=c.prepareStatement(query);
            s.executeUpdate();
            System.out.println("query executed successfully");
            }
        } catch (SQLException ex) {
            res=false;
            Logger.getLogger(QueryExecutor.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally
        {
            if(c!=null)
            {
                try {
                    c.close();
                } catch (SQLException ex) {
                    Logger.getLogger(QueryExecutor.class.getName()).log(Level.SEVERE, null, ex);
                    res=false;
                }
            }
        }
       return res; 
    }
    
    
     public static ResultSet executeSelectQuery(String query)
    {
 
        
        try {
            c=getConnection1();
            if(c==null)
            {
                System.out.println("Connection not established");
            }else{
            PreparedStatement s=c.prepareStatement(query);
             rs=s.executeQuery();
            System.out.println("query selected successfully");
            }
        } catch (SQLException ex) {
            
            Logger.getLogger(QueryExecutor.class.getName()).log(Level.SEVERE, null, ex);
        }
       
       return rs; 
    }
    
    
    //function for closing connection
    public static  void  close()
    {
        try {
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(QueryExecutor.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    //Creating connection
    private static Connection getConnection()
    {
        try {
            
            try {
                Class.forName(driverName);
                 c=DriverManager.getConnection("jdbc:mysql://localhost:3306/ahmedabadcityguide", "root", "ndc12345");
            System.out.println("Connection established");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(UserManager.class.getName()).log(Level.SEVERE, null, ex);
                return null;
            }
            
           
            
            
            
        } catch (SQLException ex) {
            Logger.getLogger(UserManager.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        
      return c;  
        
    }
    
     private static Connection getConnection1()
    {
        try {
            
            try {
                Class.forName(driverName);
                 c=DriverManager.getConnection("jdbc:mysql://localhost:3306/ahmedabadcityguide", "root", "ndc12345");
            System.out.println("Connection established");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(UserManager.class.getName()).log(Level.SEVERE, null, ex);
                return null;
            }
            
           
            
            
            
        } catch (SQLException ex) {
            Logger.getLogger(UserManager.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        
      return c;  
        
    }
    
    /* public static ResultSet executeselectquery(String q1)
    {
        try {
            c=getConnection();
            
            Statement s=c.createStatement();
            rs=s.executeQuery(q1);
            
        } catch (SQLException ex) {
            Logger.getLogger(CategoryManager.class.getName()).log(Level.SEVERE, null, ex);
        }
       return rs; 
    }*/
    
    public static void main(String[] args) {
        String q="INSERT INTO `user` (`EmailId`, `Password`, `ContactNo`, `Firstname`, `Lastname`, `Type`, `DateOfInsertion`, `DOB`, `Gender`) VALUES ('nc@gmail.com', 'nupur', '12345678', 'juhi', 'kaushik', '1', '2017-01-09 14:34:47', '1997-01-08 16:56:00', 'Female');";
                boolean status=executeQuery(q);
      if(status)
      {
          System.out.println("Inserted successfully");
      }
      else
      {
          System.out.println("Not inserted");
      }
    }
}
