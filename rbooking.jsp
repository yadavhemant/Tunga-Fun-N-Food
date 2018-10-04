<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*;" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

   <html>
       <head>
           <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <script src="JScript1.js"></script>
           
           <title>Welcome to TUNGA, Fun 'N' Food Centre</title>
           <link rel="stylesheet" href="style1.css" type="text/css"/>
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
               
           </center>
           
           <br>
           <font color="blue" size=20 face="Algerian"><center>Restaurant Reservation</center></font>
           <%
            try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hemant","root","user");
            out.println("<table align=left><tr><td><img src='p15.jpg' height=150 width=150></table>");
           out.println("<table align=right><tr><td><img src='p17.jpg' height=150 width=150></table>");
             out.println("<table align=center width=500>");
            out.println("<form name='form1' method='post' action='rsuccessful.jsp'>");
            out.println("<tr><td><font color=black size=4><b>Customer Name <td><input type=text name=txtname size=20>");
           out.println("<tr><td><font color=black size=4><b>Permanant Address <td><input type=text name=txtadd size=20>");
           out.println("<tr><td><font color=black size=4><b>Contact No. <td><input type=text name=txtcontact size=20>");
          out.println("<tr><td><font color=black size=4><b>Select Rcode <td><select name=rcode>");
           out.println("<option>------Select Rcode-------</option>");
          PreparedStatement s1=con.prepareStatement("select * from rdetails");
          ResultSet rs1=s1.executeQuery();
           while(rs1.next())
               {
              
              out.println("<option>"+rs1.getString(1)+"</option>");
               }
               out.println("</select>");
             out.println("<tr><td><font color=black size=4><b>Tables Quantity<td><input type=text name=txtqty size=20>");
               out.println("<tr><td><font color=black size=4><b>Booking Date <td><input type=text name=txtdate size=20> <br><font color=black>MM/DD/YY</font>");
             out.println("</table><br><center><input type=Submit value='Submit Order'></center></form>");
            
               }
           catch(java.sql.SQLException ce)
           {
           
           }
          
           %>
           <br>
          <marquee height=30% width=100% bgcolor="darkorange"><font color="white" size="10">TUNGA, Fun 'N' Food Centre</font><font size=6>We are waiting for U.</font></marquee>
       </body>
   </html>
   
           
           
           
           
           
           
           
           
           
           