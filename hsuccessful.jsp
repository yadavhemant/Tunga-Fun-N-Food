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
         <A HREF="Booking.jsp"><img src=back.jpg height=25 width=100></A>
        <br><br><br><br>
    <%
           String name=request.getParameter("txtname");
            String add=request.getParameter("txtadd");
          String contact=request.getParameter("txtcontact");
            String hcode=request.getParameter("hcode");
          String rqty=request.getParameter("txtrqty");
            String mqty=request.getParameter("txtmqty");
            String bqty=request.getParameter("txtbqty");
            String date=request.getParameter("txtdate");
             
            PreparedStatement s;
            PreparedStatement s1;
            PreparedStatement s2;
            ResultSet rs,rs1,rs2;
            
          try{
           if((name=="" || add=="" || contact=="" ||  date=="") && (rqty=="" || mqty=="" || bqty==""))
                {
                 out.println("<script>alert('All fields must be complete.')</script>");
                      response.sendRedirect("hbooking.jsp");
                }
                else
                    {
           Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hemant","root","user");
             
           s=con.prepareStatement("select count(*) from hbooking");
           rs=s.executeQuery();
           rs.next();
           int orno=rs.getInt(1)+1;
           s1=con.prepareStatement("select * from hdetails where hcode='"+hcode+"'");
               rs1=s1.executeQuery();
                 if(rs1.next())
                    {
                    String hn=rs1.getString(2);
                    String hc=rs1.getString(3);
                    double price=rs1.getDouble(7);
                    double total=price * (Integer.parseInt(rqty)+Integer.parseInt(mqty)+Integer.parseInt(bqty));
                    //out.println("total,"+total+"");
                    //out.println("order ,"+orno+"");
                   // Statement p1=con.createStatement();
                    s2=con.prepareStatement("insert into hbooking values("+orno+",'"+name+"','"+add+"',"+contact+",'"+hcode+"','"+hn+"','"+hc+"',"+rqty+","+mqty+","+bqty+",'"+date+"',"+total+")");
                   s2.executeUpdate();
                   
                    
                    out.println("<script>alert('Token No is "+orno+" Total Price "+total+"')</script>");
                    out.println("<font color=black size=6>Your Token No is "+orno+" <br> Your Total Amount is "+total+"</font>");
                   
                    }
                 
              }
          
                
              }    
       catch(java.sql.SQLException ce)
       {
           //out.print(ce);
          out.println("<script>alert('Enter Date in MM/DD/YY Format. and BookingDate should always be greater than CurrentDate.')</script>");
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
