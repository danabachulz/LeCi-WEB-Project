<%-- 
    Document   : sudahlogin
    Created on : May 24, 2016, 10:36:49 PM
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
                color:white;
                width: 220px
            }
            table{
                border-radius: 10px;
            }
        </style>
    </head>

    <body>

        <div><ul>
                <li><div id="kotak"><img src="./gambar/a.JPG" alt="Foto Mahasiswa" style="width:200px;height:200px;"></a></li>
                        <li>
                            <table border="1">
                                <tbody>                                    
                                    <tr>
                                        <td>Nim :<% String nimnya=(String)session.getAttribute("nomx"); 
                                        out.print(nimnya);
                                        %> </td>
                                    </tr>
                                    <% ArrayList<Mahasiswa> mhs = (ArrayList<Mahasiswa>) request.getAttribute("nimmsh");
                                        for(int i=0;i<1;i++){ %>
                                    <tr>
                                        <td><% out.print(mhs.get(i).getNama());%></td>
                                    </tr>
                                    <tr>
                                        <td><% out.print(mhs.get(i).getProdi());%></td>
                                    </tr>
                                    <%  } %>
                                </tbody>
                            </table>

                        </li>
                        <form action="logout">
                            <input type="submit" value="Logout">
                        </form>
            </ul>


            <h1 id="headtext">KRS Online [LeCi Project]</h1>

            <div id="section">
                <center>
                    <h1>Pilih Matakuliah yang ingin di ambil</h1>
                    <form action="executematkul">
                        <table border="1">    

                            <tbody>

                                <tr>
                                    <td>
                                        <select name="matkulselected">
                                            <option>Pilih Matkul</option>
                                            <%
                                                ArrayList<MataKuliah> mk = (ArrayList<MataKuliah>) request.getAttribute("makul");
                                                for (int i = 0; i < mk.size(); i++) {
                                            %>
                                            <option>
                                                <% out.print(mk.get(i).getKode()+" || ");
                                                    out.print(mk.get(i).getNama() + " ( ");
                                                    out.println(mk.get(i).getSks() + " )");
                                                    session.setAttribute("sksawal", mk.get(i).getSks());             
                                                %>
                                            </option>
                                            <% }
                                                
                                                %>

                                        </select>
                                    </td>
                                    <td>
                                        <select name="kelasselected">
                                            <option>Pilih Kelas</option>
                                            <%
                                                ArrayList<Kelas> kl = (ArrayList<Kelas>) request.getAttribute("keles");
                                                int a = 0;
                                                while (a < 3) {
                                            %>
                                            <option>
                                                <% out.println(kl.get(a).getKode()+" Dosen : "+kl.get(a).getDosen());
                                                    a++;
                                                %>
                                            </option>
                                            <% }%>
                                        </select>
                                    </td>
                                    <td><input type="submit" value="NEXT" /></td>
                                </tr>                        
                            </tbody>
                        </table>

                    </form>
                </center>
            </div>

    </body>
    <a href="sudahloginmhs.jsp"></a>

</html>
