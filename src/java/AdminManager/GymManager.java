
package AdminManager;

import AdminBean.GymBean;
import Admin_User.QueryExecutor;

public class GymManager {
    public static boolean addGym(GymBean gb)
    {
        int id=PlaceManager.LastPlaceId();
       System.out.println("Place id is:"+id);
       String query="Insert into gym(Place_Id,Type) values ("+id+",'"+gb.getType()+"')";
        return QueryExecutor.ExecuteQuery(query);
    }
}
