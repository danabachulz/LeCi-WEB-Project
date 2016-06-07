/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package execute;

import executepart2.MataKuliah;
import executepart2.lighttambahan;
import executepart2.logoutproses;
import executepart2.panggil;
import executepart2.sks;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author dana
 */
public class logout extends HttpServlet {

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
        PrintWriter out = response.getWriter(); 
        executepart2.query q=new executepart2.query();
        HttpSession session = request.getSession(true);
        String nim=(String)session.getAttribute("nomx");
        String nama=(String)session.getAttribute("namamhs");
        String sksx=(String)session.getAttribute("sksmhs");
        try{
            ArrayList<MataKuliah> mk =q.makul();
            ArrayList<sks> sk=q.sksa(nim, nama, sksx);
            q.closeConn();
        }
        catch(SQLException ex){
            Logger.getLogger(panggil.class.getName()).log(Level.SEVERE,null,ex);
        } catch (Exception ex) {
            Logger.getLogger(logoutproses.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet logout</title>");  
            out.println("<link rel='stylesheet' type='text/css' href='./css/servletlogincss.css'>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Anda telah logout</h1>");
            out.println("<div id='tombol'>");
            out.println("<form action='panggil'>");
            out.println("<input type='submit' value='Home'>");
            out.println("</form>");
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
        } finally {
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
