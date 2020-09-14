<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
<!DOCTYPE html>
<html>
<head>
<style>

input[type=text], select {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 8px;
  box-sizing: border-box;
}
input[type=password], select {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 8px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 30%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 8px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
 max-width:400px;
  margin: auto;
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  box-shadow: 5px 10px #888888;
}

</style>
</head>
<body style="background-image: url('Avengersendgame.jpg');background-repeat:no-repeat;background-attachment: fixed;
  background-size: cover;">
<h1 style="color: blue;text-align: center;">WELCOME TO HEXAMOVIES</h1>
<div>
<form action="/login" method="post">


Enter Username : <input type="text" name="username">
<br><br>

Enter Password : <input type="password" name="password">
<br><br>

<input type="submit" value="Login" >


</form>
</div>
</body>
</html>