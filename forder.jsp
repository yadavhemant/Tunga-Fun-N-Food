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
        <A HREF="order.jsp"><img src=back.jpg height=25 width=100></A>
        
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
          PreparedStatement s=con.prepareStatement("select * from foodorder");
          ResultSet rs=s.executeQuery();
         out.println("<center><font color='blue' size=20><b>Food Order List</b></font></center>");
         out.println("<br><table align=center width=75% bgcolor=black border=1 bordercolor='silver'><tr><th align=center><font color=red size=4>Order No.</th><td><font color=red size=4><b>Customer Name</td><td><font color=red size=4><b>Customer Address</td><td><font color=red size=4><b>Contact Number</td><td><font color=red size=4><b>Product Name</td><td><font color=red size=4><b>Item Quantity</td><td><font color=red size=4><b>Price/ Unit</td><td><font color=red size=4><b>Total Rs.</td></tr>");
          while(rs.next())
              {
               out.println("<tr><td align=center><font color=white size=4><b>"+rs.getInt(1)+"</td><td><font color=white size=4><b>"+rs.getString(2)+"</td><td><font color=white size=4><b>"+rs.getString(3)+"</td><td><font color=white size=4><b>"+rs.getLong(4)+"</td><td><font color=white size=4><b>"+rs.getString(5)+"</td><td><font color=white size=4><center><b>"+rs.getInt(6)+"</td><td><center><font color=white size=4><b>"+rs.getInt(7)+"</td><td><center><font color=white size=4><b>"+rs.getDouble(8)+"</td></tr>") ;
              }
              out.println("</table>");
      }
      catch(java.sql.SQLException ce)
      {
          
      }
      %>
      <br>
       <table align=center width=300><form name="form2" method="post" action="fcancel.jsp">
            <tr><td><font color=black><b>Enter OrderNo which has been Finished.</font></b>
            </td></tr>
            <tr>
            <td>
                <input type="text" name="orderno">
                <input type="Submit" value="Order Finish">
        </td></tr></form></table>
        <br>
     <marquee height=30% width=100% bgcolor="darkorange"><font color="white" size="10">TUNGA, Fun 'N' Food Centre</font><font size=6>We are waiting for U.</font></marquee>
      
    
    </body>
</html>
