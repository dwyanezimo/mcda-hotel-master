
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/customer.css" type="text/css">
<title>CUSTOMER PAGE</title>
<link href="./css/jquery-ui.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.headings {
	font-size: 18px;
}

headings {
	font-weight: bold;
}
</style>
<script type="text/javascript" src="./js/jquery.min.js"></script>
<script src="./js/jquery-ui.min.js"></script>
<script>
	$(document).ready(function() {
		$("#datepicker").datepicker({
			dateFormat : 'yy-mm-dd'
		}).val();
		$("#datepicker2").datepicker({
			dateFormat : 'yy-mm-dd'
		}).val();
		$("#datepicker3").datepicker({
			dateFormat : 'yy-mm-dd'

		}).val();
	});
</script>
<script type="text/javascript">
	function getpayment() {
		var e = document.getElementById('roomss');
		var selection = e.options[e.selectedIndex].value;
		var e2 = document.getElementById("datepicker2").value;
		var e1 = document.getElementById("datepicker").value;
		var d2 = new Date(e2);
		var d1 = new Date(e1);
		var pay;
		var one_day = 1000 * 60 * 60 * 24;

		// Convert both dates to milliseconds
		var date1_ms = d1.getTime();
		var date2_ms = d2.getTime();

		// Calculate the difference in milliseconds
		var difference_ms = date2_ms - date1_ms;

		// Convert back to days and return
		var c2 = Math.round(difference_ms / one_day);

		if (selection == "1") {
			pay = 30;
		} else if (selection == "2") {
			pay = 50;
		} else if (selection == "3") {
			pay = 60;
		} else if (selection == "4") {
			pay = 100;
		}
		var tp = c2 * pay;
		document.getElementById("payment").value = tp;
		if (d1 > d2) {
			alert("Check In Date is greater than Check Out Date");
		}
	}
</script>

</head>
<body background="./css/images/image1.jpg">

	<header class="main">
		<div class="center">
			<div class="logo">
				<a href="index.html"></a>
			</div>

			<!-- Navigation -->
			<nav>
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="rooms.html">Rooms</a></li>
					<li class="active"><a href="Customer.jsp">Book</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<br>
	<br>
	<div id="container">
		<form name="Submit" action="CustomerData" method="POST"
			onsubmit="return validateForm()">
			<fieldset>
				<legend>Book a room</legend>
				<br>
				<table>

					<tbody>
						<tr>
							<td colspan="4" style="text-align: middle;"><b>Check-In
									Information</b></td>
						</tr>
						<tr>
							<td>Check-In Date</td>
							<td><input type="text" name="Check-in-date" id="datepicker" /></td>
							<td>Check-out Date</td>
							<td><input type="text" name="Check-out-date"
								id="datepicker2" /></td>
						</tr>
						<tr>
							<td>Room Type</td>
							<td><select name="RoomType" id="roomss"
								onChange="getpayment()">
									<option value="5"></option>
									<option value="1">Single</option>
									<option value="2">Double</option>
									<option value="3">Superior</option>
									<option value="4">Suite</option>
							</select></td>

						</tr>
						<tr>
							<td>Number of Guests</td>
							<td><select name="Number of Guests">
									<option>1</option>
							</select></td>
							<td>Number of Rooms</td>
							<td><select name="Number-of-rooms">
									<option>1</option>
							</select></td>
						</tr>

						<tr>
							<td colspan="4" style="text-align: middle;"><b>Contact
									Information</b></td>
						</tr>
						<tr>
							<td>First Name</td>
							<td><input type="text" name="FirstName" value="" size="50" /></td>
							<td>Last Name</td>
							<td><input type="text" name="LastName" value="" size="50" /></td>
						</tr>
						<tr>
							<td>Street Address</td>
							<td><input type="text" name="StreetAddress" value=""
								size="75" /></td>
							<td>City</td>
							<td><input type="text" name="City" value="" size="50" /></td>
						</tr>
						<tr>
							<td>Province/State</td>
							<td><select name="Province">
									<option value="null"></option>
									<option value="NS">Ontario</option>
									<option value="ON">Quebec</option>
									<option value="QC">Nova Scotia</option>
									<option value="NB">New Brunswick</option>
									<option value="MB">Manitoba</option>
									<option value="BC">British Columbia</option>
									<option value="PE">Prince Edward Island</option>
									<option value="SK">Saskatchewan</option>
									<option value="AB">Alberta</option>
									<option value="NL">Newfoundland and Labrador</option>
							</select></td>
							<td>Country</td>
							<td><input type="text" name="Country" value="Canada"
								size="50" /></td>
						</tr>
						<tr>
							<td>Postal Code</td>
							<td><input type="text" name="PostalCode" value="" size="50" /></td>
							<td>Phone Number</td>
							<td><input type="text" name="PhoneNumber" value="" size="50" /></td>
						</tr>
						<tr>
							<td>Email Address</td>
							<td><input type="text" name="Email" value="" size="75" /></td>

						</tr>
						<tr>
							<td colspan="4" style="text-align: middle;"><b>Payment
									Details</b></td>
						</tr>
						<tr>
							<td>Credit Card Type</td>
							<td><select name="CreditCardType">
									<option value="1">Visa Card</option>
									<option value="2">Master Card</option>
									<option value="3">American Express</option>
							</select></td>
						</tr>
						<tr>
							<td>Name on Credit Card</td>
							<td><input type="text" name="CreditCardName" value=""
								size="75" /></td>
							<td>Credit Card Number</td>
							<td><input type="text" name="CreditCardNum" value=""
								size="75" /></td>
						</tr>
						<tr>
							<td>Expiration Date</td>
							<td><input type="text" name="ExpirationDate" value=""
								size="50" id="datepicker3" /></td>
							<td>Total Payment</td>
							<td><input type="text" name="Amount" id="payment" value=""
								size="50"/></td>
						</tr>
					</tbody>
				</table>
				<br> <input type="submit" value="Submit" name="CustomerSubmit" />
				<input type="reset" value="Clear" name="Clear" />
			</fieldset>
		</form>
	</div>
	<div align="center">
		<div>
			<h3>Thank you!</h3>
			<h4>Come and have a lovely experience</h4>
			<h5 style="margin-top: 17px">
				We accept: <img src="css/images/visa-mastercard.png">
			</h5>
		</div>

	</div>
</body>

</html>
