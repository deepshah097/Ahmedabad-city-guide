/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminManager;

import AdminBean.CategoryBean;
import Admin_User.QueryExecutor;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author jeet2
 */
public class CategoryManager {
        static Connection c=null;
        public static boolean addCategory(CategoryBean cat)
        {
            String query="insert into category(Category_Name) values('"+cat.getCategoryName()+"')";
            return QueryExecutor.ExecuteQuery(query);
        }
        
        public static boolean deleteCategory(int Category)
        {
            String query="delete from category where Category_Id="+Category;
            return QueryExecutor.ExecuteQuery(query);
        }

       public static List <CategoryBean> getAllCategoryList() throws SQLException, ClassNotFoundException
        {
            String query="select * from category";
            int i=0;
          
             List <CategoryBean> category=null;
            try {
                    c=QueryExecutor.getConnection();
                    Statement s=c.createStatement();
                    ResultSet res=s.executeQuery(query);
                    category=new ArrayList<>();
                    while(res.next())
                    {
                       i++;
                       CategoryBean bean=new CategoryBean();
                       bean.setCategoryId(res.getInt("Category_Id"));
                       bean.setCategoryName(res.getString("Category_Name"));
                       category.add(bean);
                    }
                }
                catch(ClassNotFoundException | SQLException e)
                {
                }
            return category;
        }
     
       public static boolean checkCategory(CategoryBean cb)
       {
           List<CategoryBean> list=null;
            try {
                list = getAllCategoryList();
            } catch (SQLException | ClassNotFoundException ex) {
                Logger.getLogger(CategoryManager.class.getName()).log(Level.SEVERE, null, ex);
            }
           for(CategoryBean bean:list)
           {
               if(cb.getCategoryName().equals(bean.getCategoryName()))
               {
                   return true;
               }
           }
           return false;
       }
    public static void close() throws SQLException
    {
        c.close();
    }
    
    public static void main(String[] args) {
        CategoryBean cb=new CategoryBean();
            cb.setCategoryName("Education");
            boolean res=CategoryManager.checkCategory(cb);
            System.out.println("res:"+res);
    }
       
}
