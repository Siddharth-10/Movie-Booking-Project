<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
	background-color: #ed829b;
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
	style="background-image: url('Hollywood.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
	<h1>
		<center>MOVIE DETAILS</center>
	</h1>
	<div>

		<form action="TicketBooking.jsp">
			Movies Name : TheSevenSamurai <br></br> <br></br> Director : Akira
			Kurosawa <br></br> <br></br> Hero : Toshiro Mifune <br></br> <br></br>
			Heroine :Takashi Shimura <br></br> <br></br> Duration : 2h 57m <br></br>
			<br></br> Genre:Action <br></br> <br></br> <input type="submit"
				value="Book Ticket"></input>
		</form>
	</div>
</body>
</html>