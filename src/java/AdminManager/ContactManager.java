package AdminManager;

import AdminBean.ContactBean;
import Admin_User.QueryExecutor;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ContactManager {
    static Connection c=null;
    public static List<ContactBean> viewQueries()
    {
        String query="select * from contact";
            int i=0;
          
             List <ContactBean> user=null;
            try {
                    c=QueryExecutor.getConnection();
                    Statement s=c.createStatement();
                    ResultSet res=s.executeQuery(query);
                    user=new ArrayList<>();
                    while(res.next())
                    {
                       i++;
                       ContactBean bean=new ContactBean();
                       //bean.setUser_id(res.getInt("User_Id"));
                      bean.setFName(res.getString("Fname"));
                      System.out.println("Fname:"+res.getString("Fname"));
                      bean.setLName((res.getString("Lname")));
                      System.out.println("Lname:"+res.getString("Lname"));
                      bean.setEmail(res.getString("EmailId"));
                      System.out.println("EmailId:"+res.getString("EmailId"));
                      bean.setContactNo(res.getLong("Contact"));
                      System.out.println("Contact No:"+res.getLong("Contact"));
                      bean.setQuery(res.getString("Query"));
                      System.out.println("Query:"+res.getString("Query"));
                      user.add(bean);
                    }
                }
                catch(ClassNotFoundException | SQLException e)
                {
                    
                } 
             return user;
        }
           
 
    }

