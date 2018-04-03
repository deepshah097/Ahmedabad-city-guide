
package AdminManager;

import AdminBean.DoctorBean;
import Admin_User.QueryExecutor;

public class DoctorManager {
    public static boolean addDoctor(DoctorBean db)
    {
        int id=PlaceManager.LastPlaceId();
        System.out.println("Place id is:"+id);
        String query="Insert into doctor(Place_Id,Type) values ("+id+",'"+db.getType()+"')";
        return QueryExecutor.ExecuteQuery(query);
    }
}
