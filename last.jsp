<%-- 
    Document   : last
    Created on : May 24, 2016, 11:10:57 PM
    Author     : dana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                            <% String nima = (String) session.getAttribute("nomx");
                                String nama = (String) session.getAttribute("namamhs");

                            %>
                            <table border="1">
                                <tbody>
                                    <tr>
                                        <td style="color:white;">Nomor : <% out.print(nima); %></td>
                                    </tr>
                                    <tr>
                                        <td style="color:white;">Nama : <% out.print(nama); %></td>
                                    </tr>
                                </tbody>
                            </table>

                        </li>
                        </select>
                        <form action="logout">
                            <input type="submit" value="Logout">
                        </form>
            </ul>



            <h1 id="headtext">KRS Online [LeCi Project]</h1>

            <div id="section">
                <table border="1">
                    <h1>Mata Kuliah :</h1>
                    <tbody>
                        <% String tunderbird = (String) session.getAttribute("cetak");
                            if (tunderbird != null || tunderbird != "null") {
                                out.println(tunderbird);
                            }
                        %>
                    </tbody>
                </table>


            </div>

    </body>

</html>
