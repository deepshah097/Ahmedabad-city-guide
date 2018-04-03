
package AdminManager;

import AdminBean.CommonBean;
import AdminBean.HotelBean;
import Admin_User.QueryExecutor;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class HotelManager {
    public static boolean addHotel(HotelBean hb)
    {
       int id=PlaceManager.LastPlaceId();
       System.out.println("Place id is:"+id);
       String query="Insert into hotel(Place_Id,Type) values ("+id+","+hb.getType()+")";
       return QueryExecutor.ExecuteQuery(query);
               
    }
      public static List <CommonBean> getAllHotelsByAreaId_And_SubId(int area_id,int sub_id)
    {
       //String query="Select * from places where Area_id="+area_id+" and Subcategory_id="+sub_id;
       //ResultSet rs=QueryExecutor.executeSelectQuery(query);
       String query="SELECT Places_name,Address,Contact_no,Website_name,Description,Place_image,TYPE FROM places INNER JOIN hotel ON hotel.Place_Id=places.Place_Id" +
                "WHERE Area_id=1 AND Subcategory_id=14;";
        ResultSet res= QueryExecutor.executeSelectQuery(query);
        List <CommonBean> list=null;
        try {
            while(res.next())
            {
                CommonBean bean=new CommonBean();
                bean.setAddress(res.getString("Address"));
                bean.setPlace_name(res.getString("Places_name"));
                bean.setContact_no(res.getInt("Contact_no"));
                bean.setWebsite_name(res.getString("Website_name"));
                bean.setDescription(res.getString("Description"));
                bean.setPlace_image(res.getString("Place_image"));
                bean.setType(res.getString("Type"));
                list.add(bean);
            }
        } catch (SQLException ex) {
            Logger.getLogger(HotelManager.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
   }
}
