/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminManager;

import AdminBean.CategoryBean;
import AdminBean.SubCategoryBean;
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
public class SubCategoryManager {
     static Connection c=null;
        public static boolean addSubCategory(SubCategoryBean sub)
        {
            String query="insert into subcategory(Category_Id,SubCategory_name) values('"+sub.getCategoryId()+"','"+sub.getSubCategoryName()+"')";
            return QueryExecutor.ExecuteQuery(query);
        }
        public static List <SubCategoryBean> getSubCategoryByCId(int id)
        {
            String query="select * from subcategory where Category_Id="+id;
            int i=0;
          
             List <SubCategoryBean> subcategory=null;
            try {
                    c=QueryExecutor.getConnection();
                    Statement s=c.createStatement();
                    ResultSet res=s.executeQuery(query);
                    subcategory=new ArrayList<>();
                    while(res.next())
                    {
                       i++;
                       SubCategoryBean bean=new SubCategoryBean();
                       bean.setCategoryId(res.getInt("Category_Id"));
                       bean.setSubCategoryId(res.getInt("SubCategory_Id"));
                       bean.setSubCategoryName(res.getString("SubCategory_name"));
                       subcategory.add(bean);
                    }
                }
                catch(ClassNotFoundException | SQLException e)
                {
                }
            return subcategory;
        }
        
         public static List <SubCategoryBean> getAllSubCategory()
        {
            String query="SELECT SubCategory_Id,Category_Name,SubCategory_name FROM subcategory INNER JOIN category" +
" WHERE category.Category_Id=subcategory.Category_Id;";
            int i=0;
          
             List <SubCategoryBean> subcategory=null;
            try {
                    c=QueryExecutor.getConnection();
                    Statement s=c.createStatement();
                    ResultSet res=s.executeQuery(query);
                    subcategory=new ArrayList<>();
                    while(res.next())
                    {
                       i++;
                       SubCategoryBean bean=new SubCategoryBean();
                       //bean.setCategoryId(res.getInt("Category_Id"));
                       bean.setSubCategoryId(res.getInt("SubCategory_Id"));
                       bean.setSubCategoryName(res.getString("SubCategory_name"));
                       
                       
                       bean.setCategoryName(res.getString("Category_Name"));
                       
                       
                       subcategory.add(bean);
                    }
                }
                catch(ClassNotFoundException | SQLException e)
                {
                }
            return subcategory;
        }
        
          public static boolean checkSubCategory(SubCategoryBean sb)
       {
           List<SubCategoryBean> list=null;
           list = getSubCategoryByCId(sb.getCategoryId());
           for(SubCategoryBean bean:list)
           {
               if(sb.getSubCategoryName().equals(bean.getSubCategoryName()))
               {
                   return true;
               }
           }
           return false;
       }
       
       public static boolean deleteSubCategory(int subid)
       {
           String query="delete from subcategory where SubCategory_Id="+subid;
           return QueryExecutor.ExecuteQuery(query);
       }
}
