
package Manager;

import Beans.AreaBean;
import User.QueryExecutor;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class AreaManager {
    public static Connection c=null;
    public static boolean addArea(AreaBean ar)
    {
        String query="insert into area(Area_name) values('"+ar.getArea_name()+"')";
        return QueryExecutor.ExecuteQuery(query);
    }
    
    public static boolean deleteArea(int area)
        {
            String query="delete from area where Area_Id="+area;
            return QueryExecutor.ExecuteQuery(query);
        }
     public static List <AreaBean> getAllAreaList() throws SQLException, ClassNotFoundException
        {
            String query="select * from area";
            int i=0;
            
             List <AreaBean> category=null;
            try {
                    c=QueryExecutor.getConnection();
                    Statement s=c.createStatement();
                    ResultSet res=s.executeQuery(query);
                    category=new ArrayList<>();
                    while(res.next())
                    {
                       i++;
                       AreaBean bean=new AreaBean();
                       bean.setArea_id(res.getInt("Area_id"));
                       bean.setArea_name(res.getString("Area_name"));
                       category.add(bean);
                    }
                }
                catch(ClassNotFoundException | SQLException e)
                {
                }
            return category;
        }
     public static void close()
     {
         if(c!=null)
         {
             try {
                 c.close();
             } catch (SQLException ex) {
                 Logger.getLogger(AreaManager.class.getName()).log(Level.SEVERE, null, ex);
             }
         }
     }
}
