/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package executepart2;

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
public class logoutproses extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        executepart2.query q=new executepart2.query();
        HttpSession session = request.getSession(true);
        String nim=(String)session.getAttribute("nomx");
        String nama=(String)session.getAttribute("namamhs");
        String sksx=(String)session.getAttribute("sksmhs");
        try{
            ArrayList<MataKuliah> mk =q.makul();
            ArrayList<sks> sk=q.sksa(nim, nama, sksx);
            request.setAttribute("makul",mk);
            q.closeConn();
            
            request.getRequestDispatcher("/Home2.jsp").forward(request, response);
        }
        catch(SQLException ex){
            Logger.getLogger(panggil.class.getName()).log(Level.SEVERE,null,ex);
        } catch (Exception ex) {
            Logger.getLogger(logoutproses.class.getName()).log(Level.SEVERE, null, ex);
        }
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
