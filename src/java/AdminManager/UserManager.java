
package AdminManager;


import AdminBean.UserBean;
import static AdminManager.CategoryManager.c;
import Admin_User.QueryExecutor;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UserManager {
    public static List <UserBean> getAllUsers()
    {
        String query="select * from user";
            int i=0;
          
             List <UserBean> user=null;
            try {
                    c=QueryExecutor.getConnection();
                    Statement s=c.createStatement();
                    ResultSet res=s.executeQuery(query);
                    user=new ArrayList<>();
                    while(res.next())
                    {
                       i++;
                       UserBean bean=new UserBean();
                       //bean.setUser_id(res.getInt("User_Id"));
                       bean.setEmail_Id(res.getString("EmailId"));
                       bean.setFirst_Name(res.getString("Firstname"));
                       bean.setLast_Name(res.getString("Lastname"));
                       bean.setContact_No(res.getLong("ContactNo"));
                       bean.setGender(res.getString("Gender"));
                       user.add(bean);
                    }
                }
                catch(ClassNotFoundException | SQLException e)
                {
                    
                }
            return user;
    }
    
    public static boolean checkAdminLogin(UserBean user) 
    {
        boolean result=false;
        UserBean bean=null;
        String query = "SELECT * FROM user WHERE EmailId='"+user.getEmail_Id()+
                "' AND Password='"+user.getPassword()+"' AND Type='A'";
        try {
            c=QueryExecutor.getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserManager.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(UserManager.class.getName()).log(Level.SEVERE, null, ex);
        }
        Statement s=null;
        try {
            s = c.createStatement();
        } catch (SQLException ex) {
            Logger.getLogger(UserManager.class.getName()).log(Level.SEVERE, null, ex);
        }
        ResultSet res=null;
        try {
            res = s.executeQuery(query);
            if(res.next())
            {
                result=true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserManager.class.getName()).log(Level.SEVERE, null, ex);
        }
       
        return result;
    }
    
    public static List<UserBean> getUsersByType(String type)
    {
        String query="select * from user where Type='"+type+"'";
            int i=0;
          String str="";
             List <UserBean> user=new ArrayList<>();
            try {
                    c=QueryExecutor.getConnection();
                    Statement s=c.createStatement();
                    ResultSet res=s.executeQuery(query);
                    
                    while(res.next())
                    {
                       i++;
                       UserBean bean=new UserBean();
                        bean.setFirst_Name(res.getString("Firstname"));
                        System.out.println("Fn:"+res.getString("Firstname"));
                        bean.setLast_Name(res.getString("Lastname"));
                        System.out.println("ln:"+res.getString("Lastname"));
                        bean.setGender(res.getString("Gender"));
                        System.out.println("G:"+res.getString("Gender"));
                        bean.setEmail_Id(res.getString("EmailId"));
                        System.out.println("E:"+res.getString("EmailId"));
                        bean.setContact_No(res.getInt("ContactNo"));
                        System.out.println("Cn:"+res.getString("ContactNo"));
                       user.add(bean);
                    }
                    for(UserBean bean:user)
                    {
                str+=bean.getFirst_Name()+":"+bean.getLast_Name()+":"+bean.getEmail_Id()+":"+bean.getContact_No()+":"+bean.getGender()+",";
                System.out.println(str);
                    }
                }
                catch(ClassNotFoundException | SQLException e)
                {
                }
            return user;
        }
        
        
}
