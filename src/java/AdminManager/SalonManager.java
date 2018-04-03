
package AdminManager;

import AdminBean.SalonBean;
import Admin_User.QueryExecutor;

public class SalonManager {
    public static boolean addSalon(SalonBean sb)
    {
        int id=PlaceManager.LastPlaceId();
       System.out.println("Place id is:"+id);
       String query="Insert into saloon(Place_Id,Type) values ("+id+",'"+sb.getType()+"')";
        return QueryExecutor.ExecuteQuery(query);
    }
}
