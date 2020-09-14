<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="apple-touch-icon" type="image/png"
	href="https://static.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png">
<meta name="apple-mobile-web-app-title" content="CodePen">
<link rel="shortcut icon" type="image/x-icon"
	href="https://static.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico">
<link rel="mask-icon" type=""
	href="https://static.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg"
	color="#111">
<title>Hexa movies seat selection</title>
<style>
body {
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}

#Username {
	border: none;
	border-bottom: 1px solid;
}

.screen {
	width: 100%;
	height: 20px;
	background: #4388cc;
	color: #fff;
	line-height: 20px;
	font-size: 15px;
}

.smallBox::before {
	content: ".";
	width: 15px;
	height: 15px;
	float: left;
	margin-right: 10px;
}

.greenBox::before {
	content: "";
	background: Green;
}

.redBox::before {
	content: "";
	background: Red;
}

.emptyBox::before {
	content: "";
	box-shadow: inset 0px 2px 3px 0px rgba(0, 0, 0, .3), 0px 1px 0px 0px
		rgba(255, 255, 255, .8);
	background-color: #ccc;
}

.seats {
	border: 1px solid red;
	background: yellow;
}

.seatGap {
	width: 40px;
}

.seatVGap {
	height: 40px;
}

table {
	text-align: center;
}

.Displaytable {
	text-align: center;
}

.Displaytable td, .Displaytable th {
	border: 1px solid;
	text-align: left;
}

textarea {
	border: none;
	background: transparent;
}

input[type=checkbox] {
	width: 0px;
	margin-right: 18px;
}

input[type=checkbox]:before {
	content: "";
	width: 15px;
	height: 15px;
	display: inline-block;
	vertical-align: middle;
	text-align: center;
	box-shadow: inset 0px 2px 3px 0px rgba(0, 0, 0, .3), 0px 1px 0px 0px
		rgba(255, 255, 255, .8);
	background-color: #ccc;
}

input[type=checkbox]:checked:before {
	background-color: Green;
	font-size: 15px;
}

.redbox input[type=checkbox]:before {
	background-color: Red;
	font-size: 15px;
}
</style>

<script>
	window.console = window.console || function(t) {
	};
</script>
<script>
	if (document.location.search.match(/type=embed/gi)) {
		window.parent.postMessage("resize", "*");
	}
</script>
</head>
<body translate="no" onload="onLoaderFunc()" data-gr-c-s-loaded="true">


	<div class="inputForm">
		<center>

			Number of Seats *: <input type="number" id="Numseats" required="">
			<br>
			<br>
			<button onclick="takeData()">Start Selecting</button>
		</center>
	</div>
	<div class="seatStructure">
		<center>
			<p id="notification"></p>
			<br>
			<table id="seatsBlock">

				<tbody>
					<tr>
						<td colspan="14"><div class="screen">SCREEN</div></td>
						<td rowspan="20">
							<div class="smallBox greenBox">Selected Seat</div> <br>
							<div class="smallBox redBox">Reserved Seat</div>
							<br>
							<div class="smallBox emptyBox">Empty Seat</div>
							<br>
						</td>

					</tr>
					<tr>
						<td></td>
						<td>1</td>
						<td>2</td>
						<td>3</td>
						<td>4</td>
						<td>5</td>
						<td></td>
						<td>6</td>
						<td>7</td>
						<td>8</td>
						<td>9</td>
						<td>10</td>
						<td>11</td>
						<td>12</td>
					</tr>
					<tr>
						<td>A</td>
						<td><input type="checkbox" class="seats" seat-value="A1"
							value="1" id="1" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="A2"
							value="2" id="2" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="A3"
							value="3" id="3" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="A4"
							value="4" id="4" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="A5"
							value="5" id="5" disabled=""></td>
						<td class="seatGap"></td>
						<td><input type="checkbox" class="seats" seat-value="A6"
							value="6" id="6" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="A7"
							value="7" id="7" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="A8"
							value="8" id="8" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="A9"
							value="9" id="9" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="A10"
							value="10" id="10" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="A11"
							value="11" id="11" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="A12"
							value="12" id="12" disabled=""></td>
					</tr>
					<tr>
						<td>B</td>
						<td><input type="checkbox" class="seats" seat-value="B1"
							value="13" id="13" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="B2"
							value="14" id="14" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="B3"
							value="15" id="15" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="B4"
							value="16" id="16" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="B5"
							value="17" id="17" disabled=""></td>
						<td></td>
						<td><input type="checkbox" class="seats" seat-value="B6"
							value="18" id="18" iddisabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="B7"
							value="19" id="19" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="B8"
							value="20" id="20" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="B9"
							value="21" id="21" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="B10"
							value="22" id="22" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="B11"
							value="23" id="23" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="B12"
							value="24" id="24" disabled=""></td>
					</tr>
					<tr>
						<td>C</td>
						<td><input type="checkbox" class="seats" seat-value="C1"
							value="25" id="25" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="C2"
							value="26" id="26" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="C3"
							value="27" id="27" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="C4"
							value="28" id="28" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="C5"
							value="29" id="29" disabled=""></td>
						<td></td>
						<td><input type="checkbox" class="seats" seat-value="C6"
							value="30" id="30" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="C7"
							value="31" id="31" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="C8"
							value="32" id="32" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="C9"
							value="33" id="33" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="C10"
							value="34" id="34" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="C11"
							value="35" id="35" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="C12"
							value="36" id="36" disabled=""></td>
					</tr>
					<tr>
						<td>D</td>
						<td><input type="checkbox" class="seats" seat-value="D1"
							value="37" id="37" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="D2"
							value="38" id="38" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="D3"
							value="39" id="39" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="D4"
							value="40" id="40" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="D5"
							value="41" id="41" disabled=""></td>
						<td></td>
						<td><input type="checkbox" class="seats" seat-value="D6"
							value="42" id="42" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="D7"
							value="43" id="43" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="D8"
							value="44" id="44" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="D9"
							value="45" id="45" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="D10"
							value="46" id="46" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="D11"
							value="47" id="47" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="D12"
							value="48" id="48" disabled=""></td>
					</tr>
					<tr>
						<td>E</td>
						<td><input type="checkbox" class="seats" seat-value="E1"
							value="49" id="49" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="E2"
							value="50" id="50" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="E3"
							value="51" id="51" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="E4"
							value="52" id="52" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="E5"
							value="53" id="53" disabled=""></td>
						<td></td>
						<td><input type="checkbox" class="seats" seat-value="E6"
							value="54" id="54" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="E7"
							value="55" id="55" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="E8"
							value="56" id="56" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="E9"
							value="57" id="57" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="E10"
							value="58" id="58" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="E11"
							value="59" id="59" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="E12"
							value="60" id="60" disabled=""></td>
					</tr>
					<tr class="seatVGap"></tr>
					<tr>
						<td>F</td>
						<td><input type="checkbox" class="seats" seat-value="F1"
							value="61" id="61" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="F2"
							value="62" id="62" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="F3"
							value="63" id="63" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="F4"
							value="64" id="64" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="F5"
							value="65" id="65" disabled=""></td>
						<td></td>
						<td><input type="checkbox" class="seats" seat-value="F6"
							value="66" id="66" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="F7"
							value="67" id="67" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="F8"
							value="68" id="68" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="F9"
							value="69" id="69" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="F10"
							value="70" id="70" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="F11"
							value="71" id="71" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="F12"
							value="72" id="72" disabled=""></td>
					</tr>
					<tr>
						<td>G</td>
						<td><input type="checkbox" class="seats" seat-value="G1"
							value="73" id="73" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="G2"
							value="74" id="74" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="G3"
							value="75" id="75" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="G4"
							value="76" id="76" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="G5"
							value="77" id="77" disabled=""></td>
						<td></td>
						<td><input type="checkbox" class="seats" seat-value="G6"
							value="78" id="78" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="G7"
							value="79" id="79" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="G8"
							value="80" id="80" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="G9"
							value="81" id="81" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="G10"
							value="82" id="82" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="G11"
							value="83" id="83" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="G12"
							value="84" id="84" disabled=""></td>
					</tr>
					<tr>
						<td>H</td>
						<td><input type="checkbox" class="seats" seat-value="H1"
							value="85" id="85" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="H2"
							value="86" id="86" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="H3"
							value="87" id="87" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="H4"
							value="88" id="88" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="H5"
							value="89" id="89" disabled=""></td>
						<td></td>
						<td><input type="checkbox" class="seats" seat-value="H6"
							value="90" id="90" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="H7"
							value="91" id="91" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="H8"
							value="92" id="92" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="H9"
							value="93" id="93" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="H10"
							value="94" id="94" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="H11"
							value="95" id="95" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="H12"
							value="96" id="96" disabled=""></td>
					</tr>
					<tr>
						<td>I</td>
						<td><input type="checkbox" class="seats" seat-value="I1"
							value="97" id="97" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="I2"
							value="98" id="98" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="I3"
							value="99" id="99" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="I4"
							value="100" id="100" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="I5"
							value="101" id="101" disabled=""></td>
						<td></td>
						<td><input type="checkbox" class="seats" seat-value="I6"
							value="102" id="102" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="I7"
							value="103" id="103" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="I8"
							value="104" id="104" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="I9"
							value="105" id="105" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="I10"
							value="106" id="106" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="I11"
							value="107" id="107" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="I12"
							value="108" id="108" disabled=""></td>
					</tr>
					<tr>
						<td>J</td>
						<td><input type="checkbox" class="seats" seat-value="J1"
							value="109" id="109" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="J2"
							value="110" id="110" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="J3"
							value="111" id="111" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="J4"
							value="112" id="112" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="J5"
							value="113" id="113" disabled=""></td>
						<td></td>
						<td><input type="checkbox" class="seats" seat-value="J6"
							value="114" id="114" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="J7"
							value="115" id="115" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="J8"
							value="116" id="116" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="J9"
							value="117" id="117" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="J10"
							value="118" id="118" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="J11"
							value="119" id="119" disabled=""></td>
						<td><input type="checkbox" class="seats" seat-value="J12"
							value="120" id="120" disabled=""></td>
					</tr>
				</tbody>
			</table>
			<br>
			<button onclick="updateTextArea()" disabled="">Confirm
				Selection</button>
		</center>
	</div>
	<br>
	<br>
	<div class="displayerBoxes">
		<center>
			<table class="Displaytable">
				<tbody>
					<tr>
						<th>Name</th>
						<th>Number of Seats</th>
						<th>Seats</th>
						<th>Price</th>
						<th>MovieName</th>
					</tr>
					<tr>
						<td><textarea id="nameDisplay" disabled=""></textarea></td>
						<td><textarea id="NumberDisplay" disabled=""></textarea></td>
						<td><textarea id="seatsDisplay" disabled=""></textarea></td>
						<td><textarea id="priceDisplay" disabled=""></textarea></td>
						<td><textarea id="movieDisplay" disabled=""></textarea></td>
					</tr>
				</tbody>
			</table>
		</center>
	</div>
	<script
		src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

	<script type="text/javascript">
		function onLoaderFunc()

		{

			//var seats="${tt1}";
			//alert("Hello"+seats);
			//	alert()
			//  seats.forEach(myFunction1)
			//  function myFunction1(tt1value) {
			//   if("${tt1value.seatStatus}"==2){
			//	   document.getElementsByName("${tt1value.seatStatus}".toString()).style.color = "Red";

			// }
			<c:forEach var="tt1value" items="${tt1}">
			var seat = "${tt1value.seatStatus}";
			//var movienames="${tt1value.moviename}"
			var sid = "${tt1value.showId}";
			console.log(seat);
			if (seat == 2) {
				//alert(seat.toString());

				document.getElementById(sid.toString()).style.backgroundColor = "Red";
				document.getElementById(sid.toString()).parentNode.classList
						.add("redbox");
			}
			</c:forEach>

			$(".seatStructure *").prop("disabled", true);
			$(".displayerBoxes *").prop("disabled", true);
		}
		function takeData() {
			if ($("#Numseats").val().length == 0) {
				alert("Number of Seats");
			} else

			{
				$(".inputForm *").prop("disabled", true);
				$(".seatStructure *").prop("disabled", false);
				document.getElementById("notification").innerHTML = "<b style='margin-bottom:0px;background:yellow;'>Please Select your Seats NOW!</b>";
			}
		}

		function updateTextArea() {

			if ($("input:checked").length == $("#Numseats").val()) {
				$(".seatStructure *").prop("disabled", true);

				var allNameVals = [];
		
				var allNumberVals = [];
				var allSeatsVals = [];
				var price = 100 * $("#Numseats").val();
				var noofseats = $("#Numseats").val();
				var chkArray = [];
				
				function getCheckedBoxes(chkboxName) {
				  var checkboxes = document.getElementsByClassName(chkboxName);
				  var checkboxesChecked = [];
				  
				  for (var i=0; i<checkboxes.length; i++) {
				    
				     if (checkboxes[i].checked) {
				        checkboxesChecked.push(checkboxes[i].value);
				     }
				  }
				 
				  return checkboxesChecked.length > 0 ? checkboxesChecked : null;
				}

				// Call as
				var checkedBoxes = getCheckedBoxes("seats");
				
				//console.log(checkedBoxes);
				
				
				alert("here");
				//Storing in Array
				allNameVals.push("$(bir.username)");
				allNumberVals.push($("#Numseats").val());
				$('#seatsBlock :checked').each(function() {
					allSeatsVals.push($(this).val());
				});
				/*$('#seatsBlock :checked').each(function() {
					allseatids.push($(this).id);
				});*/

				var username = "${bir.username}";
				var moviename = "${bir.moviename}";
				var seattype = "${bir.seattype}";
				var showtimings = "${bir.showtimings}";
				var bookingdate = "${bir.bookingdate}";
				
		
				
				alert(moviename);
				//Displaying 
				$('#nameDisplay').val("${bir.username}");
				$('#NumberDisplay').val(allNumberVals);
				$('#seatsDisplay').val(allSeatsVals);
				$('#priceDisplay').val(price);
				$('#movieDisplay').val("${bir.moviename}");
				$.ajax({
					type : "POST",
					traditional : true,
					url : "/finalbooking",
					data : {
						username : username,
						moviename : moviename,
				         seattype : seattype,
						showtimings : showtimings,
						bookingdate : bookingdate,
						price : price,
						noofseats : noofseats,
						seatlocation : checkedBoxes
					},

					success : function(result) {
						document.write(result);

					},
					error : function(result) {
						alert("oops");
					}
				});

			} else

			{
				alert("Please select " + $("#Numseats").val() + " seats");
			}
		}

		function myFunction() {
			alert($("input:checked").length);
		}

		/*
		 function getCookie(cname) {
		 var name = cname + "=";
		 var ca = document.cookie.split(';');
		 for(var i = 0; i < ca.length; i++) {
		 var c = ca[i];
		 while (c.charAt(0) == ' ') {
		 c = c.substring(1);
		 }
		 if (c.indexOf(name) == 0) {
		 return c.substring(name.length, c.length);
		 }
		 }
		 return "";
		 }
		 */

		$(":checkbox").click(function() {
			if ($("input:checked").length == $("#Numseats").val()) {
				$(":checkbox").prop('disabled', true);
				$(':checked').prop('disabled', false);
			} else

			{
				$(":checkbox").prop('disabled', false);
			}
		});

		//# sourceURL=pen.js
	</script>


</body>
</html>