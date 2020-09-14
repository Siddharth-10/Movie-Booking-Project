<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>

<style>
* {
	box-sizing: border-box;
}

.column {
	text-align: center;
	width: 50%;
	height: 300px;
	padding: 10px;
	float: left;
}
</style>
</head>
<body
	style="background-image: url('Titllesss.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">


	<h1 style="color: red; text-align: center;">Movie List</h1>
	<form action="Success.jsp">
		<div class="row">
			<div class="column">
				<a href="DilBechara.jsp"> <img src="/images/DilBechara.jpg"
					width="300" height="200" border="0" usemap="#chart"
					alt="Hindi Movie" />
				</a> <br></br> <a href="PasaMalar.jsp"> <img
					src="/images/PasaMalar.jpg" width="300" height="200" border="0"
					usemap="#chart" alt="Tamil Movie:" /></a> <br></br> <a
					href="SevenSamurai.jsp"> <img src="/images/Thesevensamurai.jpg"
					width="300" height="200" border="0" usemap="#chart"
					alt="English Movie:" /></a>




			</div>
		</div>





	</form>
</body>
</html>