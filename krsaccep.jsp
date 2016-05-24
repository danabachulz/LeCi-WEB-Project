<%-- 
    Document   : krsaccep
    Created on : May 24, 2016, 10:58:51 PM
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
                          <li><div id="kotak"><img src="./gambar/ss.jpg" alt="Foto Mahasiswa / Admin" style="width:200px;height:200px;"></a></li>
                        <li>
                            <table border="1">
                                <tbody>
                                    <tr>
                                        <td>Nomor : <%=request.getParameter("nomor")%></td>
                                    </tr>
                                    <tr>
                                        <td>Nama : <%=request.getParameter("nama")%></td>
                                    </tr>
                                </tbody>
                            </table>

                        </li>
    </select>
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
			<h1>Daftar matakuliah yang sudah di ambil<br>
                            <table border="0">
                                <tbody>
                                    <tr>
                                        <td>
                                            <form action="sudahlogin">
                                                <input type="submit" value="Update">
                                            </form>
                                        </td>
                                        <td>
                                            <form action="accept">
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