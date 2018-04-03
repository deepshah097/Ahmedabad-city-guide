
package Manager;

import Beans.CommonBean;
import Beans.SchoolBean;
import Manager.PlaceManager;
import User.QueryExecutor;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class SchoolManager {
    public static boolean addSchool(SchoolBean sb)
    {
       int id=PlaceManager.LastPlaceId();
       System.out.println("Place id is:"+id);
       String query="Insert into school(Place_Id,Medium,Board,Hostel,Hostel_Name,Hostel_Address,School_image) values ("+id+",'"
               +sb.getMedium()+"','"+sb.getBoard()+"',"+sb.getHostel()+",'"+sb.getHostel_name()+"','"+sb.getHostel_address()+"','"
               +sb.getSchool_image()+"')";
        return QueryExecutor.ExecuteQuery(query);
               
    }
    
    
     
       
       public static List<CommonBean> getAllSchoolByAreaId_And_SubId(int area_id,int sub_id)
    {
       ResultSet rs=null;
       String query="SELECT Places.Place_Id,Places_name,Address,Contact_no,Website_name,Description,Image_name,Medium,Board,Hostel,Hostel_Name,Hostel_Address FROM places INNER JOIN school ON school.Place_Id=places.Place_Id INNER JOIN place_image ON place_image.Place_Id=places.Place_Id" +
              " WHERE Area_id="+area_id+" AND Subcategory_id="+sub_id;
        rs= Manager.QueryExecutor.executeSelectQuery(query);
        System.out.println("rs:");
        List<CommonBean> list=new ArrayList<>();
  
        int flag=0,flag1=0;
        try {
            
              while(rs.next())
              {
                  CommonBean bean=new CommonBean();
                  System.out.println("size is" +bean.getPlace_image().length);
                  String Place_Image[]=new String[5];
                  bean.setAddress(rs.getString("Address"));
                  System.out.println("add:"+rs.getString("Address"));
                  bean.setContact_no(rs.getInt("Contact_no"));
                   System.out.println("no:"+rs.getString("Contact_no"));
                  bean.setPlace_name(rs.getString("Places_name"));
                  System.out.println("name:"+rs.getString("Places_name"));
                  bean.setWebsite_name(rs.getString("Website_name"));
                  System.out.println("wname:"+rs.getString("Website_name"));
                  bean.setHostel(rs.getInt("Hostel"));
                  bean.setHostel_address(rs.getString("Hostel_Address"));
                  bean.setHostel_name("Hostel_Name");
                  bean.setMedium(rs.getString("Medium"));
                  bean.setBoard(rs.getString("Board"));
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
       
        public static List<CommonBean> getAllSchoolByAreaId_And_SubId_And_Board(int area_id,int sub_id,String Board)
    {
      ResultSet rs=null; 
     
       String query="SELECT Places.Place_Id,Places_name,Address,Contact_no,Website_name,Description,Image_name,Medium,Board FROM places INNER JOIN school ON school.Place_Id=places.Place_Id INNER JOIN place_image ON place_image.Place_Id=places.Place_Id" +
              " WHERE Area_id="+area_id+" AND Subcategory_id="+sub_id+" AND Board='"+Board+"'";

        
        rs= Manager.QueryExecutor.executeSelectQuery(query);
        System.out.println("rs:");
        List<CommonBean> list=new ArrayList<>();
  
  
        try {
            
              while(rs.next())
              {
                  CommonBean bean=new CommonBean();
                  System.out.println("size is" +bean.getPlace_image().length);
                  String Place_Image[]=new String[5];
                  bean.setAddress(rs.getString("Address"));
                  System.out.println("add:"+rs.getString("Address"));
                  bean.setContact_no(rs.getInt("Contact_no"));
                   System.out.println("no:"+rs.getString("Contact_no"));
                  bean.setPlace_name(rs.getString("Places_name"));
                  System.out.println("name:"+rs.getString("Places_name"));
                  bean.setWebsite_name(rs.getString("Website_name"));
                  System.out.println("wname:"+rs.getString("Website_name"));
                 // bean.setType(rs.getString("TYPE"));
                  //System.out.println("type:"+rs.getString("TYPE"));
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
       
}    