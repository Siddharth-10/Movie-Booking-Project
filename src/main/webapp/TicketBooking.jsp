<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
div {
	max-width: 400px;
	margin: auto;
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
	box-shadow: 5px 10px #888888;
}

input[type=submit] {
	width: 30%;
	background-color: #a5d9cd;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 8px;
	cursor: pointer;
}
</style>
</head>
<body
	style="background-image: url('TicketBookingsss.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
	<h1 style="color: white; text-align: center;">BOOK YOUR TICKETS</h1>
	<div>
		<form action="/booking" method="post">
			UserName: <input type="text" name="username" /> <br /> <br />
			MovieName: <select name="moviename">
				<option value="DilBechara">Dil Bechara</option>
				<option value="PasaMalar">Pasa Malar</option>
				<option value="SevenSamurai">The Seven Samurai</option>
			</select> <br /> <br /> SeatType: <select name="seattype">
				<option value="box">Box 180</option>
				<option value="firstClass">FirstClass 150</option>
				<option value="secondclass">SecondClass 100</option>
			</select> <br /> <br /> Showtimings: <select name="showtimings">
				<option value="mrng">10.30am - 1.00pm</option>
				<option value="noon">2.00pm-5pm</option>
				<option value="evg">6.00pm-9pm</option>
				<option value="night">10.30pm-12am</option>
			</select> <br /> <br /> Bookingdate: <input type="text" name="bookingdate">
			<br /> <br />

			<!--Price:
 <input type="text" name="price">
 <br />
<br />

 Number of seats :
 <input type="text" name="noofseats">
 
 -->
			<br /> <br /> <br>
			<br> <input type="submit" value="BookTicket"> <br /> <br />

		</form>
	</div>
</body>
</html>