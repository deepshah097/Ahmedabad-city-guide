
package AdminManager;


import AdminBean.PlacesBean;
import static AdminManager.CategoryManager.c;
import Admin_User.QueryExecutor;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

public class PlaceManager {
    public static boolean addPlace(PlacesBean pb)
    {
        boolean res=true;
        String query="Insert into places(Subcategory_id,EmailId,Website_name,Contact_no,Area_id,Address,"
                + "Places_name,Description)values("+pb.getSubcategory_id()+",'"+pb.getEmailId()+"','"+pb.getWebsite_name()
                +"',"+pb.getContact_no()+","+pb.getArea_id()+",'"+pb.getAddress()+"','"+pb.getPlace_name()+"','"+pb.getDescription()+"')";
        if(QueryExecutor.ExecuteQuery(query))
        {
            int pid=LastPlaceId();
            int i=0;
            while(pb.getPlace_image()[i]!=null)
            {
                System.out.println("Place image:"+pb.getPlace_image()[i]);
                 query="Insert into place_image(Place_Id,Image_name) values("+pid+",'"+pb.getPlace_image()[i]+"')";
                 res=QueryExecutor.ExecuteQuery(query);
                 System.out.println("res:"+res);
                 i++;
            }
        }
        return res;
    } 
    public static int LastPlaceId()
        {
        String query="select * from places";
            int i=0;
          int id=0;
             List <PlacesBean> places=null;
            try {
                    c=QueryExecutor.getConnection();
                    Statement s=c.createStatement();
                    ResultSet res=s.executeQuery(query);
                   res.last();
                    id=res.getInt(1);
                }
                catch(ClassNotFoundException | SQLException e)
                {
                }
            return id;
        }
    }
