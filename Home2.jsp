<%-- 
    Document   : Home
    Created on : Jun 5, 2016, 5:13:15 PM
    Author     : dana
--%>
<%@page import="executepart2.MataKuliah"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*" %>
<%@page import="executepart2.DataBaseConnection" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% executepart2.DataBaseConnection conn = new executepart2.DataBaseConnection(); %>
<% executepart2.query q = new executepart2.query(); %>

<!DOCTYPE html>
<html>

    <head>

        <title>Leci-KRS.web</title>
        <link rel="stylesheet" type="text/css" href="./css/style2.css">
    </head>

    <body>

        <div><ul>
                <li><a href=""><img src="./gambar/logo.png" alt="Logo Sanata Dharma" style="width:200px;height:200px;"></a></li>
                <li>
                    <form action="servletlogin">
                        <label for="ni">Nomor Induk</label><br>
                        <input type="text" value="" name="nomor"><br>

                        <label for="passwd">Password</label><br>
                        <input type="password" value="" name="password"><br>

                        <label for="tipe">Masuk sebagai</label><br>
                        <select  name="tipe">
                            <option value="mahasiswa">Mahasiswa</option>
                            <option value="admin">Administrator</option>
                        </select>

                        <input type="submit" value="Login">
                    </form>
            </ul>
        </div>



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
            <div id="ratatengah">
                <h1>Daftar Matakuliah Teknik Informatika</h1>
                <center>
                    <table border="1">
                        <tbody>
                            <tr>
                                <td style="background-color:blanchedalmond">KODE</td>
                                <td>NAMA MATAKULIAH</td>
                                <td>SKS</td>
                                <td style="background-color:blanchedalmond">KODE</td>
                                <td>NAMA MATAKULIAH</td>
                                <td>SKS</td>
                            </tr>
                            <%
                                ArrayList<MataKuliah> mk = (ArrayList<MataKuliah>) request.getAttribute("makul");
                                for (int i = 0; i < mk.size(); i=i+2) {
                            %>
                            <tr>
                                <td style="background-color:blanchedalmond"><% out.println(mk.get(i).getKode()); %></td>
                                <td><% out.println(mk.get(i).getNama()); %></td>
                                <td><% out.println(mk.get(i).getSks()); %></td>
                                <td style="background-color:blanchedalmond"><% out.println(mk.get(i+1).getKode()); %></td>
                                <td><% out.println(mk.get(i+1).getNama()); %></td>
                                <td><% out.println(mk.get(i+1).getSks()); %></td>
                            </tr>
                            <% }%>
                        </tbody>
                    </table>
                </center>
            </div>

        </div>

    </body>

</html>
