<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html" %>
<%@ page import="java.awt.*;" %>

<%--
The taglib directive below imports the JSTL library. If you uncomment it,
you must also add the JSTL library to the project. The Add Library... action
on Libraries node in Projects view can be used to add the JSTL 1.1 library.
--%>
<%--
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="JScript1.js"></script>

        <title>Welcome to TUNGA, Fun 'N' Food Centre</title>
        <link rel="stylesheet" href="style1.css" type="text/css"/>
    </head>
    <body onLoad="f2(),f5()" bgcolor="darkorange">
        <center>
            <table>
                <tr>
                    <td><img src="flowers9.jpg" height="100" width="100">        </td>
                    <td><div id="f" class='cs'><font color="grey">TUNGA, Fun 'N' Food Centre</font></div><br></td>
                    <td><img src="flowers9.jpg" height="100" width="100">        </td>
                </tr>
            </table>
            
            
            <BLINK> <b><font color="white" size=6 face="Monocrosiva">All </font><font color="limegreen" size=6> Fun </font><font color="red" size=6> 'N' </font><font color="yellow" size=6> Food </font>
            <font color="white" size=6> Facilities </font><font color="limegreen" size=6> Available </font><font color="white" size=6> Here. </font></b></BLINK>
        </center>
        <BR>    
        <center>
        <A HREF="index.jsp">Home</A>&nbsp;&nbsp;|&nbsp;&nbsp;
        <A HREF="Rdetails.jsp">Restaurant</A>&nbsp;&nbsp;|&nbsp;&nbsp;
        <A HREF="Booking.jsp">Reservation</A>&nbsp;&nbsp;|&nbsp;&nbsp;
        <A HREF="Hdetails.jsp">Hotels</A>&nbsp;&nbsp;|&nbsp;&nbsp;
        <A HREF="foodorder.jsp">Order for Food</A>&nbsp;&nbsp;|&nbsp;&nbsp;
        <A HREF="Menulist.jsp">Food Menu List</A>&nbsp;&nbsp;|&nbsp;&nbsp;
        <A HREF="Contact.jsp">Contact Us</A>
                          
           </center>
            
        <form name="form1" method="post" action="Admin.jsp"><br><br>
            
            <table align=center>
        <tr>
            
            <table align=right>
                
            <tr><div id="ff"><img src="s8.jpg" height=250 width=250 name="img1" align="right"></div></td></tr>
        </table>
            <tr></tr><tr><font color="red" type="Algerian" size=6> Authentication Form</font></tr>
            <hr color="blue" size=8 width=38% align=left>
            <br><br>
            <td><b><font color=black>Enter UserName</font></b></td>
            <td><input type="text" name="t1" size=20></td>
        </tr>
          <BR>
         <tr><TR>
        <td><b><br><font color=black>Enter Password &nbsp;</font></b></td>
            <td><input type="password" name="t2" size=22 onfocus="clear()"></td>
        </tr>
    </table>  <br><br>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <input type="Submit" value="Login Account">
        
</form>    
<pre>
        
        
        
        
  
        
     <center><font size=4 color=black face="Times new roman">All rights reserved. EsselWorld & WaterKingdom  Logo is a registered trademark of
     APTECH.All photographs and material contained within this Web
      Site are copyright of APTECH.  
 </font></center>  </pre>


        



</body>
</html>
</html>
