<%-- 
    Document   : krsaccep
    Created on : May 24, 2016, 10:58:51 PM
    Author     : dana
--%>

<%@page import="executepart2.Mahasiswa"%>
<%@page import="executepart2.Kelas"%>
<%@page import="executepart2.MataKuliah"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*" %>
<%@page import="executepart2.DataBaseConnection" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% executepart2.DataBaseConnection conn = new executepart2.DataBaseConnection(); %>
<% executepart2.query q = new executepart2.query();%>
<% HttpSession ses = request.getSession(true); %>
<!DOCTYPE html>
<html>

    <head>

        <title>Leci-KRS.web</title>
        <link rel="stylesheet" type="text/css" href="./css/style2.css">
        <style>
            td{
                color:black;
                width: 220px
            }
            table{
                table-layout: fixed;
                width: 100%;
                border-radius: 10px;
            }
        </style>
    </head>

    <body>

        <div><ul>
                <li><div id="kotak"><img src="./gambar/a.JPG" alt="Foto Mahasiswa / Admin" style="width:200px;height:200px;"></a></li>
                        <li>
                            <table border="1">
                                <tbody>                                    
                                    <tr>
                                        <td style="color:white;">Nim :<% String nimnya=(String)session.getAttribute("nomx"); 
                                        out.print(nimnya);
                                        %> </td>
                                    </tr>
                                    <% ArrayList<Mahasiswa> mhs = (ArrayList<Mahasiswa>) request.getAttribute("nimmsh");
                                        for(int i=0;i<1;i++){ %>
                                    <tr>
                                        <td style="color:white;"><% out.print(mhs.get(i).getNama());%></td>
                                    </tr>
                                    <tr>
                                        <td style="color:white;"><% out.print(mhs.get(i).getProdi());%></td>
                                        <% session.setAttribute("namamhs", mhs.get(i).getNama()); 
                                        session.setAttribute("prodimhs", mhs.get(i).getNama()); 
                                        %>
                                    </tr>
                                    <%  } %>
                                </tbody>
                            </table>

                        </li>
                        <form action="logout">
                            <input type="submit" value="Logout">
                        </form>
            </ul>

            <!--		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js">
                              </script>
                              
                              <script>
                              $(document).ready(function(){
                                    $('#sidebar-btn').click(function(){
                                            $('#sidebar').toggleClass('visible');
                                    })
                              })
                              </script> -->

            <h1 id="headtext">KRS Online [LeCi Project]</h1>

            <div id="section">
                <h1>Daftar matakuliah yang sudah di ambil<br></h1>
                    <table border="1">
                        <tbody>
                            <% String tunderbird = (String) session.getAttribute("cetak");
                                if (tunderbird != null || tunderbird != "null") {
                                    out.println(tunderbird);
                                }
                            %>

                        </tbody>
                    </table>

                    <table border="0">
                        <tbody>
                            <tr>
                                <td>
                                    <form action="panggilmahasiswajsp">
                                        <input type="submit" value="Update">
                                    </form>
                                </td>
                                <td>
                                    <form action="last.jsp">
                                        <input type="submit" value="Confirm">
                                    </form>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </h1>

            </div>

    </body>

</html>