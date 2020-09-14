<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


</head>
<body>
<body style="background-image:url('Sbooked.jpg');background-repeat:no-repeat;background-attachment: fixed;
  background-size: cover;">
<h1 style="color: black;text-align: center;">Ticket Booked Successfully!!  </h1>

<%= "<h2> Total Cost "+(Integer.parseInt(request.getParameter("price")))+"</h2>"%>
<br />
<br />
<br />
<br />
<form action="/bookhistory">
<a href="/bookhistory" style="float: right;">click here to see ticket history</a> 
</form>

<form action="ContactUs.jsp">
<a href="ContactUs.jsp" style="float: left;">click here to go to Contact Us Page</form>
</body>
</html>