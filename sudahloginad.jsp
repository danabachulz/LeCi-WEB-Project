<%-- 
    Document   : sudahlogin
    Created on : May 24, 2016, 10:36:49 PM
    Author     : dana
--%>
<%@page import="executepart2.sks"%>
<%@page import="executepart2.MataKuliah" %>
<%@page import="executepart2.DataBaseConnection" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% executepart2.DataBaseConnection conn = new executepart2.DataBaseConnection(); %>
<% executepart2.query q = new executepart2.query();
    int i = 0;
    HttpSession ses = request.getSession(true); %>

<%! Statement statement;
    ResultSet result;
    Connection connection;
    DataBaseConnection database = new DataBaseConnection();%>

<% String nimview = (String) session.getAttribute("nimview");%>

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
                <li><div id="kotak"><img src="./gambar/admin.png" alt="Foto Mahasiswa / Admin" style="width:200px;height:200px;"></a></li>
                        <li>
                            <table border="1">
                                <tbody>
                                    <tr>
                                        <td>UserId :</td>
                                        <td>1234567890</td>
                                    </tr>
                                    <tr>
                                        <td>Nickname :</td>
                                        <td><% String x = (String) session.getAttribute("nomx");
                                            out.print(x);
                                            %></td>
                                    </tr>
                                </tbody>
                            </table>

                        </li>
                        </select>
                        <form action="panggil">
                            <input type="submit" value="Logout">
                        </form>
            </ul>


            <h1 id="headtext">KRS Online [LeCi Project]</h1>

            <div id="section">

                <h1>Data Seluruh Mahasiswa</h1>
                <center>
                    <table border="1">
                        <tbody>
                            <%
                                ArrayList<sks> sk = (ArrayList<sks>) request.getAttribute("showadmin");
                                for (int k = 0; k < sk.size(); k++) {
                            %>
                            <tr>
                                <td style="color: black; background-color:blanchedalmond"><% out.println(sk.get(k).getNim()); %></td>
                                <td style="color:black;"><% out.println(sk.get(k).getNama()); %></td>
                                <td style="color:black;"><% out.println(sk.get(k).getSks()); %></td>

                            </tr>
                            <% }%>
                        </tbody>
                </center>

                </table>
                <table border="0">
                    <tbody>
                        <tr>
                    <form action="admindelete"> 
                        <td style="color: black;"> Hapus Data Mahasiswa :</td>
                        <td><input type="text" name="hapus" value="" /></td>
                        <td><input type="submit" value="Delete" /></td>
                    </form>
                    </tr>
                    <tr>
                    <form action="adminmuncul">
                        <td style="color: black;"> Munculkan Data Mahasiswa :</td>
                        <td><input type="text" name="muncul" value="" /></td>
                        <td><input type="submit" value="Show" /></td>
                    </form>
                    </tr>
                    </tbody>
                </table>


            </div>

    </body>

</html>
