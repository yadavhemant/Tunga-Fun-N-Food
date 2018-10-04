<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*;" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="JScript1.js"></script>
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
        <A HREF="index.jsp"><img src=back.jpg height=25 width=100></A>
        
        <center>
             <center>
         <A HREF="index.jsp">Home</A>&nbsp;&nbsp;|&nbsp;&nbsp;
        <A HREF="Rdetails.jsp">Restaurant</A>&nbsp;&nbsp;|&nbsp;&nbsp;
        <A HREF="Booking.jsp">Reservation</A>&nbsp;&nbsp;|&nbsp;&nbsp;
        <A HREF="Hdetails.jsp">Hotels</A>&nbsp;&nbsp;|&nbsp;&nbsp;
        <A HREF="foodorder.jsp">Order for Food</A>&nbsp;&nbsp;|&nbsp;&nbsp;
        <A HREF="Menulist.jsp">Food Menu List</A>&nbsp;&nbsp;|&nbsp;&nbsp;
        <A HREF="Contact.jsp">Contact Us</A>
                          
             
             </center>
        
        </center>
      <%
      try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hemant","root","user");
          PreparedStatement s=con.prepareStatement("select * from Hseats");
          ResultSet rs=s.executeQuery();
         out.println("<center><font color='blue' size=20><b>Hotel Seats Details</b></font></center>");
         out.println("<br><table border=1 bodercolor=black align=center bgcolor=orange><tr><td><b><font color=red size=5>Hotel Code</td><td><font color=red size=5><b>Hotel Name</td><td><b><font color=red size=5>Hotel  City</td><td><b><font color=red size=5>Total Rooms</td><td><b><font color=red size=5>Booking Rooms</td><td><b><font color=red size=5>Avail Rooms</td><td><b><font color=red size=5>Total Meeting Rooms</td><td><b><font color=red size=5>Booking Meeting Rooms</td><td><b><font color=red size=5>Avail Meeting Rooms</td><td><b><font color=red size=5>Total Banquet Hall</td><td><b><font color=red size=5>Booking Banquet Hall</td><td><b><font color=red size=5>Avail Banquet Hall</td></tr>");
          while(rs.next())
              {
               out.println("<tr><td><font color=black size=4><b>"+rs.getString(1)+"</td><td><font color=black size=4><b>"+rs.getString(2)+"</td><td><font color=black size=4><b>"+rs.getString(3)+"</td><td><font color=black size=4><b>"+rs.getInt(4)+"</td><td><font color=black size=4><b>"+rs.getInt(5)+"</td><td><font color=black size=4><b>"+rs.getInt(6)+"</td><td><font color=black size=4><b>"+rs.getInt(7)+"</td><td><font color=black size=4><b>"+rs.getInt(8)+"</td><td><font color=black size=4><b>"+rs.getInt(9)+"</td><td><font color=black size=4><b>"+rs.getInt(10)+"</td><td><font color=black size=4><b>"+rs.getInt(11)+"</td><td><font color=black size=4><b>"+rs.getInt(12)+"</td></tr>") ;
              }
              out.println("</table>");
      }
      catch(java.sql.SQLException ce)
      {
          
      }
      %>
      <br>
     <marquee height=30% width=100% bgcolor="darkorange"><font color="white" size="10">TUNGA, Fun 'N' Food Centre</font><font size=6>We are waiting for U.</font></marquee>
      
    
    </body>
</html>
