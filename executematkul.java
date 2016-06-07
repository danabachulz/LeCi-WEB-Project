/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package execute;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author dana
 */
public class executematkul extends HttpServlet {

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
        processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(true);
        String matkul=request.getParameter("matkulselected");
        String kelas=request.getParameter("kelasselected");
        String o= (String)session.getAttribute("sksawal");
        int a=Integer.parseInt((String)session.getAttribute("sksawal"));
        session.setAttribute("sksmhs", String.valueOf(a));
        String f=request.getParameter("forma");
        session.setAttribute("lightning", matkul);
        
        System.out.println("a="+a);
        if (o==null) {
            System.out.println("null o");
        }
        if(session.getAttribute("cetak")==null){
            session.setAttribute("cetak", " ");
            
        }
        String big="<tr><td>"+matkul+" Kelas: "+kelas+"</td></tr>";
        if (session.isNew()){
            session.setAttribute("sksmhs", String.valueOf(a));
            session.setAttribute("cetak",big);
      } else {
         String explosion=(String)session.getAttribute("cetak");
         String p=(String)session.getAttribute("sksmhs");
            if (p==null) {
                System.out.println(" p=null");
            }
         int c=Integer.parseInt((String)session.getAttribute("sksmhs"));
            System.out.println("c="+c);
         big=explosion+"\n"+big;
         int x=c+a;
            System.out.println("x"+x);
         session.setAttribute("cetak", big);
         session.setAttribute("sksmhs", String.valueOf(x));
      }
        
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet servletlogin</title>"); 
            out.println("<link rel='stylesheet' type='text/css' href='./css/servletlogincss.css'>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Proses Berhasil</h1>");
            out.println("<h1></h1>");
            out.println("<div id='tombol'>");
            out.println("<form action='acceptambahan'>");
            out.println("<input type='submit' value='Ok'>");
            out.println("</form>");
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
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
