
package Servlet;

import Beans.PlacesBean;
import Beans.SchoolBean;
import Manager.PlaceManager;
import Manager.SchoolManager;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "PlaceServlet", urlPatterns = {"/PlaceServlet"})
public class PlaceServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           PlacesBean pb=new PlacesBean();
            HttpSession session=request.getSession();
            String email=(String) session.getAttribute("user");
           pb.setAddress(request.getParameter("add"));
          out.println(request.getParameter("add"));
           pb.setPlace_name(request.getParameter("name"));
           out.println(request.getParameter("name"));
            pb.setContact_no(Long.parseLong(request.getParameter("number")));
            out.println(Long.parseLong(request.getParameter("number")));
            pb.setWebsite_name(request.getParameter("website"));
            out.println(request.getParameter("website"));
            pb.setDescription(request.getParameter("description"));
            out.println(request.getParameter("description"));
           //pb.setSubcategory_id(Integer.parseInt(request.getParameter("subcat")));
           pb.setSubcategory_id(14);
           // out.println(Integer.parseInt(request.getParameter("subcat")));
           pb.setPlace_id(Integer.parseInt(request.getParameter("place_id")));
            pb.setArea_id(1);
            pb.setEmail_id(email);                                        
            if(PlaceManager.addPlace(pb))
            {
                request.setAttribute("type", request.getParameter("type"));
                request.setAttribute("himage", request.getParameter("himage"));
                RequestDispatcher rd=request.getRequestDispatcher("HotelServlet");
                rd.forward(request,response);
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
