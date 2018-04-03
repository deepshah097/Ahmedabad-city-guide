
package Manager;

import Bean.UserBean;
import Bean.loginbean;
import Beans.ViewPlaceBean;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UserManager {
    
    //function for adding user into database
   public static String uname=null;
    public static boolean addUser(UserBean user)
    {
        String query="INSERT INTO `ahmedabadcityguide`.`user` (`EmailId`, `Password`, `ContactNo`, `Firstname`, `Lastname`, `Type`, `Gender`) VALUES ('"+user.getEmail_Id()+"', '"+user.getPassword()+"','"+user.getContact_No()+"','"+user.getFname()+"','"+user.getLname()+"','N','"+user.getGender()+"'); ";
        return QueryExecutor.executeQuery(query);
    }
    
    public static boolean addfeedback(String user1,String feedback)
    {
        String query="INSERT INTO feedback VALUES('"+user1+"','"+feedback+"')"; 
        return QueryExecutor.executeQuery(query);
    }
     public static boolean addsavelocation(String user1,int placeid)
    {
        String query="INSERT INTO save_location VALUES('"+user1+"',"+placeid+")"; 
        return QueryExecutor.executeQuery(query);
    }
      public static boolean viewsavelocation(String user1,int placeid)
    {
       try {
           String query="SELECT * FROM save_location WHERE EmailId='"+user1+"' AND Place_Id="+placeid+" ";
           ResultSet r1= QueryExecutor.executeSelectQuery(query);
           if(r1.next())
           {
               return true;
           }
          
           
       } catch (SQLException ex) {
           Logger.getLogger(UserManager.class.getName()).log(Level.SEVERE, null, ex);
       }
       return false;
    } 
    public static String checklogin(loginbean lb)
    {
        try {
            String q="SELECT * FROM user WHERE EmailId='"+lb.getUsername()+"' AND Password='"+lb.getPassword()+"';";
            //uname=lb.getUsername();
            ResultSet rs= QueryExecutor.executeSelectQuery(q);
            
            if(rs.next())
            {
                String s=rs.getString("Type");
                return s;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserManager.class.getName()).log(Level.SEVERE, null, ex);
        }finally
        {
            QueryExecutor.close();
        }
        return null;
    }
    
     public static UserBean getuserbyemail(String email)
    {
        UserBean ub=new UserBean();
       try {
           String q1="select * from user where EmailId= '"+email+"'";
           ResultSet rs= QueryExecutor.executeSelectQuery(q1);
           
           if(rs.next())
           {
              ub.setFname(rs.getString("Firstname"));
              ub.setLname(rs.getString("Lastname"));
              ub.setEmail_Id(rs.getString("EmailId"));
              ub.setPassword(rs.getString("Password"));
              ub.setContact_No(rs.getString("ContactNo"));
              System.out.println(ub.getContact_No());
              ub.setGender(rs.getString("Gender"));
              
           }
       } catch (SQLException ex) {
           Logger.getLogger(UserManager.class.getName()).log(Level.SEVERE, null, ex);
       }
       return ub;  
    }
     
    public static boolean Change_password(String username,String oldpass,String newpass)
    {
        String q1;
       // boolean status=false;
        UserBean u1=getuserbyemail(username);
        
        String pass=u1.getPassword();
        
        if(oldpass.equals(pass))
        {
           // status=true;
            
            q1="UPDATE user SET Password='"+newpass+"' WHERE EmailId='"+username+"'";
           
           return QueryExecutor.executeQuery(q1);
            
        }
        else
        {
            System.out.println("Password not match");
        }
        return false;
    }
    
     public static boolean Forget_Password(String username,String np,String rnp)
    {
        String q1;
       // boolean status=false;
        UserBean u1=getuserbyemail(username);
        
        String email=u1.getEmail_Id();
        
        if(username.equals(email))
        {
           // status=true;
            
            q1="UPDATE user SET Password='"+np+"' WHERE EmailId='"+username+"'";
           
           return QueryExecutor.executeQuery(q1);
            
        }
        else
        {
            System.out.println("Password not match");
        }
        return false;
    }
     public static boolean updatequery(UserBean us)
    {
        String q1="UPDATE user SET Firstname='"+us.getFname()+"',Lastname='"+us.getLname()+"',ContactNo='"+us.getContact_No()+"' WHERE EmailId='"+us.getEmail_Id()+"'";
        QueryExecutor.executeQuery(q1);
        
        return true;
    }
     
      public static boolean Validateusername(String email)
    {
        
       try {
           String q1="select * from user where EmailId= '"+email+"'";
           ResultSet r= QueryExecutor.executeSelectQuery(q1);
           
           if(r.next())
           {
               return true;
           }
       } catch (SQLException ex) {
           Logger.getLogger(UserManager.class.getName()).log(Level.SEVERE, null, ex);
       }
       
       return false;
    } 
     public static String getuserbyplaceid(int id)
    {
        UserBean ub=new UserBean();
       try {
           String q1="Select EmailId from places where Place_Id= '"+id+"'";
           ResultSet rs= QueryExecutor.executeSelectQuery(q1);
           System.out.println("Place id is:"+id);
           rs.next();
           return rs.getString("EmailId");
       } catch (SQLException ex) {
           Logger.getLogger(UserManager.class.getName()).log(Level.SEVERE, null, ex);
       }
       return null;  
    } 
     public static void main(String[] args) {
        
        UserManager.getuserbyemail("kr109394@gmail.com");
    }
     
    public static boolean updateplacedata(ViewPlaceBean us) {
        String q1="UPDATE places SET Places_name='"+us.getPlace_name()+"',Contact_no="+us.getContact_no()+",Description='"+us.getDescription()+"',Website_name='"+us.getWebsite_name()+"' WHERE EmailId='"+us.getEmail_Id()+"'";
        
        
        return Manager.QueryExecutor.executeQuery(q1);
    }
}
