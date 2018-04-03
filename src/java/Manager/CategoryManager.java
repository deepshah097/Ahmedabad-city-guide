/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Manager;

import Beans.CategoryBean;
import User.QueryExecutor;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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
       
       public static void close() throws SQLException
    {
        c.close();
    }
       
}
