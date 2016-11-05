

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.SQLException;

/**
 *
 * @author Chris
 */
@WebServlet(urlPatterns = {"/GetUnpublishedEvents"})
public class GetUnpublishedEvents extends HttpServlet {
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
        String dbURL="jdbc:mysql://149.56.12.59:3306/cs410?zeroDateTimeBehavior=convertToNull";
        String driver = "com.mysql.jdbc.Driver";
        String userName="cs410";
        String pass="db123";
        Connection con;
        PreparedStatement ps;
        ResultSet rs;      
        try 
            {
                Class.forName(driver);
                con= DriverManager.getConnection(dbURL,userName,pass);
                ps=con.prepareStatement("select * from events where isPublished=0");
                rs=ps.executeQuery();
                
                request.setAttribute("events",rs);
                request.getRequestDispatcher("Tables.jsp").forward(request,response);

            }
            catch (SQLException | ClassNotFoundException ex) 
            {
                System.out.println("Failure");
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
    } // </editor-fold>
}



