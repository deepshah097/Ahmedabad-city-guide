/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Manager;

import Beans.CommonBean;
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
public class Service_Center {
    
    public static List<CommonBean> getAllService_CentersByAreaId_And_SubId(int area_id,int sub_id)
    {
      ResultSet rs=null; 
     
       String query="SELECT Places.Place_Id,Places_name,Address,Contact_no,Website_name,Description,Image_name,TYPE FROM places INNER JOIN service_center ON service_center.Place_Id=places.Place_Id INNER JOIN place_image ON place_image.Place_Id=places.Place_Id\n" +
              " WHERE Area_id="+area_id+" AND Subcategory_id="+sub_id ;

        
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
                  bean.setType(rs.getString("TYPE"));
                  System.out.println("type:"+rs.getString("TYPE"));
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
