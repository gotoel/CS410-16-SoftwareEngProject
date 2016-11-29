/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author TOMEK
 */

@WebServlet(urlPatterns = {"/submitback"})
public class submitback extends HttpServlet {

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
        Connection con;
        PreparedStatement ps;
        PrintWriter out = response.getWriter();
        try  {
            String strDate = request.getParameter("startdate");
            String strTime = request.getParameter("starttime");
            String endDate = request.getParameter("enddate");
            String endTime = request.getParameter("endtime");
            String descrpt = request.getParameter("description");
            String location = request.getParameter("location");
            Integer id = Integer.parseInt(request.getParameter("anID"));
            Class.forName(DBInfo.dbDriver);
            con = DriverManager.getConnection(DBInfo.dbURL,DBInfo.dbUsername,DBInfo.dbPass);
            //ps = con.prepareStatement("insert into events (ID,start_date,start_time,end_date,end_time,summary,description,location,colorId,ispublished) values (null,?,?,?,?,?,?,?,'idk',0)");
            ps = con.prepareStatement("update events set start_date =?, start_time=?, end_date=?, end_time=?,description=?,location=? WHERE id=?");
            ps.setString(1, strDate);
            ps.setString(2, strTime);
            ps.setString(3, endDate);
            ps.setString(4, endTime);
            ps.setString(5, descrpt);
            ps.setString(6, location);
            ps.setInt(7, id);
            ps.executeUpdate();
            ps.close();
            con.close();
            response.sendRedirect("GetEvents");
        } catch (Exception e) {
            out.println("Exception occured " + e.getMessage());
            e.printStackTrace();
        } finally{
            out.close();
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
