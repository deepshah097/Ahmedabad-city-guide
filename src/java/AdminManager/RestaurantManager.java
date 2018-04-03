
package AdminManager;

import AdminBean.RestaurantBean;
import Admin_User.QueryExecutor;

public class RestaurantManager {
   public static boolean addRestaurant(RestaurantBean rb)
   {
        int id=PlaceManager.LastPlaceId();
       System.out.println("Place id is:"+id);
       String query="Insert into restaurant(Place_id,Type,Home_Delivery) values ("+id+",'"+rb.getType()+"',"+rb.getHome_dev()+")";
        return QueryExecutor.ExecuteQuery(query);
   }
}
