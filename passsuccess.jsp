<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*;"%>


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
         <A HREF="Changepassword.jsp"><img src=back.jpg height=25 width=100></A>
        <br><br><br><br>
    <%
        String user=request.getParameter("user").trim();
          String pass=request.getParameter("pass").trim();
          String newpass=request.getParameter("newpass").trim();
            Connection con;
            PreparedStatement s,s1;
            ResultSet rs;
            boolean found=false;
        try{
           Class.forName("com.mysql.jdbc.Driver");
          con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hemant","root","user");
          s1=con.prepareStatement("Update logindetails set Password='"+newpass+"' where Username='"+user+"' and password='"+pass+"'");
                int val=s1.executeUpdate();
                if(val==1)
                    {
                out.println("<script>alert('Password has been set.')</script>");
                out.println("<h1 align=center>Password has been set.</h1>");
                }
                else
                    {
                    out.println("<script>alert('This user does not exist.')</script>");
                out.println("<h1 align=center>This user does not exist.</h1>");
                    }
                   }
       catch(java.sql.SQLException ce)
      {
          
      }
    %>
    
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
