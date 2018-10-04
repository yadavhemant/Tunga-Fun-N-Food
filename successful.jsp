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
         <A HREF="foodorder.jsp"><img src=back.jpg height=25 width=100></A>
        <br><br><br><br>
    <%
           String name=request.getParameter("txtname");
            String add=request.getParameter("txtadd");
          String contact=request.getParameter("txtcontact");
            String food=request.getParameter("food");
          String qty=request.getParameter("txtqty");
            Connection con;
            PreparedStatement s,s1,s2,s3;
            ResultSet rs,rs1,rs2;
          try{
            if((name=="" || add=="" || contact=="" || qty==""))
                {
                 out.println("<script>alert('All fields must be complete.')</script>");
                      response.sendRedirect("foodorder.jsp");
                }
                else
                    {
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hemant","root","user");
           s=con.prepareStatement("select count(*) from foodorder");
           rs=s.executeQuery();
           rs.next();
           int orno=rs.getInt(1)+1;
               s1=con.prepareStatement("select * from vegfood,nonvegfood where (vegfood.food_name='"+food+"' or nonvegfood.food_name='"+food+"')");
               rs1=s1.executeQuery();
                 if(rs1.next())
                    {
                    int price=rs1.getInt(3);
                    double total=price * Integer.parseInt(qty);
                    s2=con.prepareStatement("insert into foodorder values("+orno+",'"+name+"','"+add+"',"+contact+",'"+food+"',"+qty+","+price+","+total+")");
                    s2.executeUpdate();
                    out.println("<script>alert('Token No is "+orno+" Total Price "+total+"')</script>");
                    out.println("<font color=black size=6>Your Token No is "+orno+" <br> Your Total Amount is "+total+"</font>");
                    }
              }
                
                 }   
       catch(java.sql.SQLException ce)
      {
          out.print(ce);
           out.println("<script>alert('Enter Contact No and Quantity in Number Format.')</script>");
               out.println("<h1 align=center>Enter Contact No and Quantity in Number Format.</h1>");
      }
            catch(NumberFormatException ce)
            {
               
                out.println("<script>alert('Enter Contact No and Quantity in Number Format.')</script>");
                out.println("<h1 align=center>Enter Contact No and Quantity in Number Format.</h1>");
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
     <br>
          <marquee height=30% width=100% bgcolor="darkorange"><font color="white" size="10">TUNGA, Fun 'N' Food Centre</font><font size=6>We are waiting for U.</font></marquee>
    </body>
</html>
