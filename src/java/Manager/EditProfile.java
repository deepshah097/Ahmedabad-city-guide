/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Manager;

import Bean.Feedbackbean;
import Bean.UserBean;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nupur
 */
public class EditProfile {
    
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
     
    public static UserBean getuserbyemail1(String email)
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
    public static boolean addContactUs(String fname,String lname,String email,String contact,String query1)
     {
          String query="INSERT INTO contact VALUES('"+fname+"','"+lname+"','"+email+"','"+contact+"','"+query1+"')"; 
        return QueryExecutor.executeQuery(query);

     }
    
    public static List<Feedbackbean> getfeedback()
            {
                ResultSet rs=null;
                String query="Select * from feedback";
                
                rs= Manager.QueryExecutor.executeSelectQuery(query);
                List<Feedbackbean> list=new ArrayList<>();

                
        try {
            while(rs.next())
            {
                Feedbackbean fb=new Feedbackbean();
                
                fb.setEmailid(rs.getString("Email_id"));
                System.out.println("Email id:"+rs.getString("Email_id"));
                fb.setFeedback(rs.getString("Feedback"));
                System.out.println("Feedback:"+rs.getString("Feedback"));
                list.add(fb);
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(EditProfile.class.getName()).log(Level.SEVERE, null, ex);
        }

          return list;
 
            }

}
