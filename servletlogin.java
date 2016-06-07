
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package execute;

import executepart2.DataBaseConnection;
import executepart2.Kelas;
import executepart2.Mahasiswa;
import executepart2.MataKuliah;
import executepart2.panggil;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
 * @author joni
 */

public class servletlogin extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession(true);
        PrintWriter out = response.getWriter();
        String nom = request.getParameter("nomor");
        String nomx = new String("nim");
        session.setAttribute("nomx", nom);
        String passwd = request.getParameter("password");
        String status = request.getParameter("tipe");
        if ((nom != "" && passwd != "") && (nom != null && passwd != null)) {
            if ("mahasiswa".equals(status) && nom.contains("145314")) {
                try {
                    /* TODO output your page here. You may use following sample code. */
                    out.println("<!DOCTYPE html>");
                    out.println("<html>");
                    out.println("<head>");
                    out.println("<title>Servlet servletlogin</title>");
                    out.println("<link rel='stylesheet' type='text/css' href='./css/servletlogincss.css'>");
                    out.println("</head>");
                    out.println("<body>");
                    out.println("<h1>Login Berhasil</h1>");
                    out.println("<h1>Nim : " + nom + "</h1>");
                    out.println("<div id='tombol'>");
                    out.println("<form action='panggilmahasiswajsp'>");
                    out.println("<input type='submit' value='Ok'>");
                    out.println("</form>");
                    out.println("</div>");
                    out.println("</body>");
                    out.println("</html>");
                } finally {
                    out.close();
                }
            }
            if ("admin".equals(status) && nom.contains("admin")) {
                try {
                    /* TODO output your page here. You may use following sample code. */
                    out.println("<!DOCTYPE html>");
                    out.println("<html>");
                    out.println("<head>");
                    out.println("<title>Servlet servletlogin</title>");
                    out.println("<link rel='stylesheet' type='text/css' href='./css/servletlogincss.css'>");
                    out.println("</head>");
                    out.println("<body>");
                    out.println("<h1>Login Berhasil</h1>");
                    out.println("<h1>Anda telah login sebagai Administrator</h1>");
                    out.println("<div id='tombol'>");
                    out.println("<form action='adminexe'>");
                    out.println("<input type='submit' value='Ok'>");
                    out.println("</form>");
                    out.println("</div>");
                    out.println("</body>");
                    out.println("</html>");
                } finally {
                    out.close();
                }
            }

            
        } else {
            try {
                /* TODO output your page here. You may use following sample code. */
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet servletlogin</title>");
                out.println("<link rel='stylesheet' type='text/css' href='./css/servletlogincss.css'>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Login Gagal</h1>");
                out.println("<h1>Username atau Password Salah</h1>");
                out.println("<div id='tombol'>");
                out.println("<form action='panggil'>");
                out.println("<input type='submit' value='Ok'>");
                out.println("</form>");
                out.println("</div>");
                out.println("</body>");
                out.println("</html>");
            } finally {
                out.close();
            }
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
