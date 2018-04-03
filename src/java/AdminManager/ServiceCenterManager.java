
package AdminManager;

import AdminBean.ServiceCenterBean;
import Admin_User.QueryExecutor;

public class ServiceCenterManager {
   public static boolean addServiceCenter(ServiceCenterBean sc)
   {
       int id=PlaceManager.LastPlaceId();
       System.out.println("Place id is:"+id);
       String query="Insert into service_center(Place_Id,Type) values ("+id+",'"+sc.getType()+"')";
        return QueryExecutor.ExecuteQuery(query);
   }
}
