
package Servlets;

import Beans.PlacesBean;
import Beans.SchoolBean;
import Manager.PlaceManager;
import Manager.SchoolManager;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet(name = "PlaceServlet", urlPatterns = {"/PlaceServlet"})
@MultipartConfig
public class dummyPlaceServlet1 extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session=request.getSession();
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            PlacesBean pb=new PlacesBean();
            pb.setAddress(request.getParameter("add"));            
            System.out.println(request.getParameter("add"));
            out.println(request.getParameter("add"));
            pb.setPlace_name(request.getParameter("name"));
            System.out.println(request.getParameter("name"));
            out.println(request.getParameter("name"));
            pb.setContact_no(Long.parseLong(request.getParameter("number")));
            out.println(Long.parseLong(request.getParameter("number")));
            System.out.println(Long.parseLong(request.getParameter("number")));
            pb.setWebsite_name(request.getParameter("website"));
            System.out.println(request.getParameter("website"));
            out.println(request.getParameter("website"));
            pb.setDescription(request.getParameter("description"));
            System.out.println(request.getParameter("description"));
            out.println(request.getParameter("description"));
            int subcat=Integer.parseInt(request.getParameter("subcat"));
            System.out.println("subcat :"+subcat);
            out.println("subcat :"+subcat);
            pb.setEmail_id((String) session.getAttribute("user"));
           System.out.println(Integer.parseInt(request.getParameter("subcat")));
            pb.setSubcategory_id(Integer.parseInt(request.getParameter("subcat")));
           System.out.println(Integer.parseInt(request.getParameter("area")));
            pb.setArea_id(Integer.parseInt(request.getParameter("area")));
            String Place_image[]=new String[5];
            int flag=0;
           for(int i=0;i<=Integer.parseInt(request.getParameter("image_no"));i++)
            {       
                    Part p=request.getPart("image"+i);
                    if(p!=null)
                    {
                    out.println("p="+p);
                    System.out.println("p="+p);
                    String path=request.getServletContext().getRealPath("/");
                    String header=p.getHeader("content-disposition");
                    out.println("header="+header);
                    String [] headerArray=header.split(";");
                    String [] data=headerArray[2].split("\"");
                    System.out.println("data[1]="+data[1]);
                    p.write(path+"places\\"+data[1]);
                    Place_image[i]=data[1];
                    flag=1;
                    //pb.setPlace_image(data[1]);
                    }
                    else
                    {
                       // pb.setPlace_image(null);
                    }
            }
            if(flag==1)
            {
            pb.setPlace_image(Place_image);
            }
            else
             {
                    pb.setPlace_image(null);
             }  
              
            if(PlaceManager.addPlace(pb))
            {
                if(subcat==14)
                {
                    request.setAttribute("type", request.getParameter("type"));
                    RequestDispatcher rd=request.getRequestDispatcher("HotelServlet");
                    rd.forward(request,response);
                    //response.sendRedirect("view_subcategory.jsp");
                }
                else if(subcat==15)
                {
                    request.setAttribute("type", request.getParameter("type"));
                    request.setAttribute("hd",request.getParameter("hd"));
                    RequestDispatcher rd=request.getRequestDispatcher("RestaurantServlet");
                    rd.forward(request,response);
                    //response.sendRedirect("view_subcategory.jsp");
                } 
                else if(subcat==12)
                {
                    request.setAttribute("type", request.getParameter("type"));
                    RequestDispatcher rd=request.getRequestDispatcher("ClassesServlet");
                    rd.forward(request,response);
                   // response.sendRedirect("index.jsp");
                }
                else if(subcat==26)
                {
                    request.setAttribute("type", request.getParameter("type"));
                    RequestDispatcher rd=request.getRequestDispatcher("GymServlet");
                    rd.forward(request,response);
                   // response.sendRedirect("admire/view_subcategory.jsp");
                }
                else if(subcat==27)
                {
                    request.setAttribute("type", request.getParameter("type"));
                    RequestDispatcher rd=request.getRequestDispatcher("SalonServlet");
                    rd.forward(request,response);
                    //response.sendRedirect("view_subcategory.jsp");
                }
                   
                else if(subcat==20)
                {
                    request.setAttribute("type", request.getParameter("type"));
                    RequestDispatcher rd=request.getRequestDispatcher("ServiceCenterServlet");
                    rd.forward(request,response);
                    //response.sendRedirect("view_subcategory.jsp");
                } 
                else if(subcat==21)
                {
                    request.setAttribute("type", request.getParameter("type"));
                    RequestDispatcher rd=request.getRequestDispatcher("DoctorServlet");
                    rd.forward(request,response);
                    
                }
                else if(subcat==28)
                {
                    request.setAttribute("board", request.getParameter("board"));
                    request.setAttribute("hostel", request.getParameter("hostel"));
                    request.setAttribute("medium", request.getParameter("medium"));
                    request.setAttribute("hos_name", request.getParameter("hos_name"));
                    request.setAttribute("hos_add", request.getParameter("hos_add"));
                    RequestDispatcher rd=request.getRequestDispatcher("SchoolServlet");
                    rd.forward(request,response);
                    
                }
                else{             
                    response.sendRedirect("index.jsp");
                }

            }
                                
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
