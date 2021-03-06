/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Beans.HotelBean;
import Beans.PlacesBean;
import Beans.SchoolBean;
import Manager.HotelManager;
import Manager.PlaceManager;
import Manager.SchoolManager;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jeet2
 */
public class HotelServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
         /* PlacesBean pb=new PlacesBean();
           pb.setAddress(request.getParameter("hadd"));
          out.println(request.getParameter("hadd"));
           pb.setPlace_name(request.getParameter("hname"));
           out.println(request.getParameter("hname"));
            pb.setContact_no(Integer.parseInt(request.getParameter("number")));
            out.println(Integer.parseInt(request.getParameter("number")));
            pb.setWebsite_name(request.getParameter("hwebsite"));
            out.println(request.getParameter("hwebsite"));
            pb.setDescription(request.getParameter("description"));
            out.println(request.getParameter("description"));
           //pb.setSubcategory_id(Integer.parseInt(request.getParameter("subcat")));
           pb.setSubcategory_id(14);
           // out.println(Integer.parseInt(request.getParameter("subcat")));
            pb.setArea_id(1);
            pb.setUser_id(1);                                        
            if(PlaceManager.addPlace(pb))
                    {*/
                        HotelBean hb=new HotelBean();
                       // hb.setType(Integer.parseInt(request.getParameter("type")));
                        hb.setType(Integer.parseInt((String) request.getAttribute("type")));
                         hb.setHotel_image((String) request.getAttribute("himage"));
                        //hb.setHotel_image(request.getParameter("himage"));
                        out.println(HotelManager.addHotel(hb));
                   // }
            
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
