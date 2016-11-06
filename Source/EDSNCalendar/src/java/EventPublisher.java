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
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author gotoel
 */
@WebServlet(urlPatterns = {"/EventPublisher"})
public class EventPublisher extends HttpServlet {

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
        Connection con;
        PreparedStatement ps;
        ResultSet rs;  
        PrintWriter out = response.getWriter();
        try {
            // Get the eventID and action out of parameters.
            // Action is either publish or delete.
            String eventID = request.getParameter("eventID");
            String action = request.getParameter("action");
            
            if(eventID != null)
            {
                Class.forName(DBInfo.dbDriver);
                con= DriverManager.getConnection(DBInfo.dbURL,DBInfo.dbUsername,DBInfo.dbPass);
                
                // Create a statement that will update the isPublished status of the specified event.
                ps=con.prepareStatement("UPDATE events SET isPublished=? where id=?");
                int eventIDNum = Integer.parseInt(eventID.replaceAll("\\s+",""));
              
                // Set the statement variables appropriately based on action.
                if(action.equals("publish")) {
                    ps.setInt(1, 1); // 1 = published
                    ps.setInt(2, eventIDNum);
                } 
                else if(action.equals("delete"))
                {
                    ps.setInt(1, 3); // 3 = silent delete (still in db, just not shown)
                    ps.setInt(2, eventIDNum);
                }
                
                // Execute the update and create a little alert that states that the action succeeded.
                if(ps.executeUpdate() == 1)
                {
                    String successOutput = "<div class=\"alert alert-success\">\n" +
                         "<button class=\"close\" data-dismiss=\"alert\">x</button>\n" +
                         "<strong>Success:</strong>\t\t\tEvent(s) " + 
                            (action.equals("publish") ? "published." : " deleted.") +"\n" +
                         "</div>";
                    out.println(successOutput);
                }
            }
        } catch(Exception ex)
        {
            // In case an error occurs, an alert will be created stating the error.
            String errorOutput = "<div class=\"alert alert-error\">\n" +
                                    "<button class=\"close\" data-dismiss=\"alert\">x</button>\n" +
                                    "<strong>Error:</strong>\t\t\t" + ex.toString() +"\n" +
                                    "</div>";
            
            out.println(errorOutput);
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
