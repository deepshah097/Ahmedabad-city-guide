
package AdminManager;

import AdminBean.ClassesBean;
import Admin_User.QueryExecutor;

public class ClassesManager {
    public static boolean addClass(ClassesBean cb )
    {
        int id=PlaceManager.LastPlaceId();
       System.out.println("Place id is:"+id);
       String query="Insert into classes(Place_Id,Type) values ("+id+",'"+cb.getType()+"')";
        return QueryExecutor.ExecuteQuery(query);
    }
}
