<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
input[type=submit]:hover {
	background-color: #45a049;
}

div {
	max-width: 400px;
	margin: auto;
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
	box-shadow: 5px 10px #888888;
}
</style>
</head>
<body
	style="background-image: url('history.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
	<h1 style="color: black; text-align: center;">Ticket</h1>
	<div>
		<form action="Login.jsp" method="post">

			Booking id :${t1.bid}<br />
			<br /> Movie date :${t1.bookingdate}<br />
			<br /> Movie Name :${t1.moviename}<br />
			<br /> Seats Booked :${t1.noofseats}<br />
			<br /> Cost of Ticket :${t1.price}<br />
			<br /> Seat Type :${t1.seattype}<br />
			<br /> Show Timings :${t1.showtimings}<br />
			<br /> User Name :${t1.username}<br />
			<br /> <br /> <br /> <input type="submit" value="Logout">
		</form>
	</div>
</body>
</html>