<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script src="JScript1.js"> </script>
<link rel="stylesheet" href="style1.css" type="text/css"/>        


        <title>Welcome to TUNGA, Fun 'N' Food Centre</title>
    </head>
    <body onLoad="f2()" bgcolor="darkorange">
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
      <br>
      <h1><font color="blue">New User Form</font></h1>
      <hr color="red" size=10 width=50%>
       <table align=center>
          <tr>
              <form name="form1" method="post" action="newusersuccess.jsp">
              <td><font color=black>Enter UserName&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input type=text name="user" size="18.5"></td>
          </tr>
          <tr>
              <td><font color=black>Enter  Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input type=password name="pass"></td>
          </tr>
          <tr>
              <td><font color=black>ReEnter Password&nbsp;&nbsp;</td>
              <td><input type=password name="repass"></td>
          </tr>
                    
      </table>
      <center>
          <br>
           <input type="submit" value=" Create User ">
        </form>
       
        
        <marquee height=30% width=100% bgcolor="darkorange"><font color="white" size="10">TUNGA, Fun 'N' Food Centre</font><font size=6>We are waiting for U.</font></marquee>
     
    </body>
</html>
