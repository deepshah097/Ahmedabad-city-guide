
package Manager;

import Beans.CategoryBean;
import Beans.CommonBean;
import Beans.PlacesBean;
import static Manager.CategoryManager.c;
import User.QueryExecutor;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import Beans.ViewPlaceBean;

public class PlaceManager {
    public static boolean addPlace(PlacesBean pb)
    {String type="B";
        System.out.println(type);
        System.out.println("-----" +pb.getEmail_id());
        String q="Update user set Type='"+type+"' where EmailId='"+pb.getEmail_id()+"'";
        Boolean b=QueryExecutor.ExecuteQuery(q);
        String query="Insert into places(Subcategory_id,EmailId,Website_name,Contact_no,Area_id,Address,"
                + "Places_name,Description)values("+pb.getSubcategory_id()+",'"+pb.getEmail_id()+"','"+pb.getWebsite_name()
                +"',"+pb.getContact_no()+","+pb.getArea_id()+",'"+pb.getAddress()+"','"+pb.getPlace_name()+"','"+pb.getDescription()+"')";
        return QueryExecutor.ExecuteQuery(query);
    } 
    public static int LastPlaceId()
        {
        String query="select * from places";
            int i=0;
          int id=0;
             List <PlacesBean> places=null;
            try {
                    c=QueryExecutor.getConnection();
                    Statement s=c.createStatement();
                    ResultSet res=s.executeQuery(query);
                   res.last();
                    id=res.getInt(1);
                }
                catch(ClassNotFoundException | SQLException e)
                {
                }
            return id;
        }
    
    public static List<CommonBean> getAllPlacesByAreaId_And_SubId(int area_id,int sub_id)
    {
       ResultSet rs=null;
          String query="SELECT Places.Place_Id,Places_name,Address,Contact_no,Website_name,Description,Image_name FROM places INNER JOIN place_image ON place_image.Place_Id=places.Place_Id"+
                " WHERE Area_id="+area_id+" AND Subcategory_id="+sub_id;
        rs= Manager.QueryExecutor.executeSelectQuery(query);
        
        List<CommonBean> list=new ArrayList<>();
      
        try {
            while(rs.next())
              {
                  CommonBean bean=new CommonBean();
                  System.out.println("size is" +bean.getPlace_image().length);
                  String Place_Image[]=new String[bean.getPlace_image().length];
                  bean.setAddress(rs.getString("Address"));
                  System.out.println("add:"+rs.getString("Address"));
                  bean.setContact_no(rs.getInt("Contact_no"));
                   System.out.println("no:"+rs.getString("Contact_no"));
                  bean.setPlace_name(rs.getString("Places_name"));
                  System.out.println("name:"+rs.getString("Places_name"));
                  bean.setWebsite_name(rs.getString("Website_name"));
                  System.out.println("wname:"+rs.getString("Website_name"));
                  
                  bean.setDescription(rs.getString("Description"));
                 
                  int i=0;
                  int id=rs.getInt("Place_Id");
                  bean.setPlace_id(id);
                  System.out.println("Id is " +id);
                  query="Select * from place_image where Place_Id="+id;
                  ResultSet res=Manager.QueryExecutor.executeSelectQuery(query);
                  
                  while(res.next())
                  {
                      Place_Image[i]=res.getString("Image_name");
                      i++;
                  }
                  bean.setPlace_image(Place_Image);
                  list.add(bean);
              }
              
            
        } catch (SQLException ex) {
            Logger.getLogger(HotelManager.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
   }
    
    
     public static ViewPlaceBean getbusinessuserbyemail(String email)
    {
        ViewPlaceBean pb=new ViewPlaceBean();
       try {
           String q1="select * from places where EmailId='"+email+"'";
           ResultSet rs= Manager.QueryExecutor.executeSelectQuery(q1);
           
           
           if(rs.next())
           {
                    int subcat=rs.getInt("Subcategory_id");
                    int placeid=rs.getInt("Place_Id");
                    System.out.println(subcat);
                    System.out.println(placeid);
                    pb.setPlace_name(rs.getString("Places_name"));
                    pb.setAddress(rs.getString("Address"));
                    pb.setWebsite_name(rs.getString("Website_name"));
                    pb.setContact_no(rs.getInt("Contact_no"));
                    pb.setDescription(rs.getString("Description"));
               
           }
       } catch (SQLException ex) {
           Logger.getLogger(Manager.UserManager.class.getName()).log(Level.SEVERE, null, ex);
       }
       return pb;  
    }
}

    
    
