<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body
	style="background-image: url('HistoryCinema.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
	<h1 style="color: black; text-align: center;">HERE IS YOUR BOOKING
		HISTORY</h1>
	<h2 style="color: black; text-align: center;">KINDLY NOTE YOUR
		BOOKING ID TO VIEW YOUR TICKET</h2>
<body>
	<table border="3" class="doctortable">
		<tr>
			<th>BID</th>
			<th>BOOKING DATE</th>
			<th>MOVIE NAME</th>
			<th>NO OF SEATS</th>
			<th>PRICE(*each ticket)</th>
			<th>SHOW TIMINGS</th>
			<th>USERNAME</th>
		</tr>

		<c:forEach var="listValue" items="${lists}">
			<tr>
				<td>${listValue.bid}</td>
				<td>${listValue.bookingdate}</td>
				<td>${listValue.moviename}</td>
				<td>${listValue.noofseats}</td>
				<td>${listValue.price}</td>
				<td>${listValue.showtimings}</td>
				<td>${listValue.username}</td>
			</tr>
		</c:forEach>

	</table>
	<form action="Login.jsp">
		<br></br> <br></br> <input type="submit" value="Logout">
	</form>
</body>
</html>