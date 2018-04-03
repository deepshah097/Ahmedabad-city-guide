
package AdminManager;

import AdminBean.SchoolBean;
import Admin_User.QueryExecutor;

public class SchoolManager {
    public static boolean addSchool(SchoolBean sb)
    {
       int id=PlaceManager.LastPlaceId();
       System.out.println("Place id is:"+id);
       String query="Insert into school(Place_Id,Medium,Board,Hostel,Hostel_Name,Hostel_Address) values ("+id+",'"
               +sb.getMedium()+"','"+sb.getBoard()+"',"+sb.getHostel()+",'"+sb.getHostel_name()+"','"+sb.getHostel_address()+"')";
              
        return QueryExecutor.ExecuteQuery(query);
               
    }
    
    
}
