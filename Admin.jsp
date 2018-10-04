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
        <A HREF="index.jsp">Back</A>
        <br><br><br><br>
        <center>
           
        
        </center>
      <%
      try{
          boolean found=false;
          String user=request.getParameter("t1");
          String pass=request.getParameter("t2");
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hemant","root","user");
          PreparedStatement s=con.prepareStatement("select * from LoginDetails");
          ResultSet rs=s.executeQuery();
          while(rs.next())
              {
              if(user.equals("Administrator") && (pass.equals(rs.getString(2))))
                  {
                 
                  found=true;
                   out.println("<center><form name='form1' method='post' action='order.jsp'><input type='Submit' value='Order Details' name='btnorder'></form>");
                  out.println("<form name='form2' method='post' action='Changepassword.jsp'><input type='Submit' value='Change Pass.' name='btnpass'></form>");
                  out.println("<center><form name='form3' method='post' action='NewUser.jsp'><input type='Submit' value='Create New User'></form>");
                  out.println("<center><form name='form4' method='post' action='deleteuserac.jsp'><input type='Submit' value='Delete  Old  User'></form>");
                 // out.println("<center><form name='form5' method='post' action='hseats.jsp'><input type='Submit' value='Hotel Seats Details'></form>");
                  //out.println("<form name='form6' method='post' action='rseats.jsp'><input type='Submit' value='Restaurant Seats Details' name='btnpass'></form>");
                  
                  break;
                 
                  }
                          
          
              else if(user.equalsIgnoreCase(rs.getString(1)) && (pass.equals(rs.getString(2))))
                  {
                  out.println("<CENTER><form name='form1' method='post' action='order.jsp'><input type='Submit' value='Order Details' name='btnorder'></form>");
                  out.println("<form name='form2' method='post' action='Changepassword.jsp'><input type='Submit' value='Change Pass.' name='btnpass'></form>");
                 // out.println("<center><form name='form5' method='post' action='hseats.jsp'><input type='Submit' value='Hotel Seats Details'></form>");
                  //out.println("<form name='form5' method='post' action='rseats.jsp'><input type='Submit' value='Restaurant Seats Details' name='btnpass'></form>");
                  found=true;
                  break;
                  }
                  else          
                  {
                  found=false;
                  
                  }    
             }
          if(found==false)
              {
            
              out.println("<script>alert('UserName and Password are Incorrect.')</script>");
              out.println("<CENTER><img src='d.jpg' height=300 width=300");
              }
      }
      catch(java.sql.SQLException ce)
      {
          
      }
      %>
      <br><hr color=blue size=8 width=75%>
      <br>
      <center>
         <A HREF="index.jsp">Home</A>&nbsp;&nbsp;|&nbsp;&nbsp;
        <A HREF="Rdetails.jsp">Restaurant</A>&nbsp;&nbsp;|&nbsp;&nbsp;
        <A HREF="Booking.jsp">Reservation</A>&nbsp;&nbsp;|&nbsp;&nbsp;
        <A HREF="Hdetails.jsp">Hotels</A>&nbsp;&nbsp;|&nbsp;&nbsp;
        <A HREF="foodorder.jsp">Order for Food</A>&nbsp;&nbsp;|&nbsp;&nbsp;
        <A HREF="Menulist.jsp">Food Menu List</A>&nbsp;&nbsp;|&nbsp;&nbsp;
        <A HREF="Contact.jsp">Contact Us</A>
                          
             
             </center>
      
    
    </body>
</html>
