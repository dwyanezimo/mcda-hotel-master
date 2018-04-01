<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="./css/jquery-ui.css" rel="stylesheet" type="text/css" />
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
	});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/admin.css" type="text/css"
	media="screen">
<style>
* {
	font-family: 'Segoe UI';
}

.tabbable .tabs {
	list-style: none;
	margin: 0 10px;
	padding: 0;
}

.tabbable .tabs li {
	list-style: none;
	margin: 0;
	padding: 0;
	display: inline-block;
	position: relative;
	z-index: 1;
}

.tabbable .tabs li a {
	text-decoration: none;
	color: #000;
	border: 1px solid #ccc;
	padding: 5px;
	display: inline-block;
	border-radius: 5px 5px 0 0;
	background: #f5f5f5;
}

.tabbable .tabs li a.active, .tabbable .tabs li a:hover {
	border-bottom-color: #fff;
	background: #fff;
}

.tabcontent {
	border: 1px solid #ccc;
	margin-top: -1px;
	padding: 10px;
}
</style>
<title>Hotel</title>
</head>
<body bgcolor="#faf5eb">
	<h1 align="center">HOTEL TRANSLYVANIA ADMIN PAGE</h1>
	<h1 align="center">Welcome to your Admin Page</h1>
	<form action="Retrieve" method="post">
		<fieldset>
			<legend>
				<%=session.getAttribute("name")%>
			</legend>
			<div class="tabs">
				<div class="tab">
					<input type="radio" id="tab1" name="tabgroup1" value="t1" checked>
					<label for="tab1">Search by name</label>
					<div class="content">

						<div>
							<label for="Customer">Customer name:</label> <input type="text"
								name="Customer" id="cust" />
							<div>
								<%
									String error1_msg = (String) request.getAttribute("error1");
									if (error1_msg != null)
										out.println("<font color=red size=3px>" + error1_msg + "</font>");
								%>
							</div>
							<div>
								<input type="submit" name="search" value="Search" />
							</div>

						</div>
						<div class="container">
							<table class="users">
								<tr>
									<th>First Name</th>
									<th>Last Name</th>
									<th>Check-In Date</th>
									<th>Check-Out Date</th>
									<th>Checked In</th>
									<th>Checked Out</th>
									<th>Room Type</th>
									<th>Date Booked</th>
								</tr>
								<c:forEach var="gd" items="${gds}">

									<tr class="test">
										<td><c:out value="${gd.firstName}" /></td>
										<td><c:out value="${gd.lastName}" /></td>
										<td><c:out value="${gd.startDate}" /></td>
										<td><c:out value="${gd.endDate}" /></td>
										<td><c:out value="${gd.checkedIn}" /></td>
										<td><c:out value="${gd.checkedOut}" /></td>
										<td><c:out value="${gd.roomTypeName}" /></td>
										<td><c:out value="${gd.dateBooked}" /></td>
									</tr>
								</c:forEach>
							</table>

						</div>
					</div>
				</div>


				<div class="tab">
					<input type="radio" id="tab2" name="tabgroup1" value="t2"
						<%=((request.getAttribute("tabgroup1") != null
					&& request.getAttribute("tabgroup1").toString().equals("t2")) ? "checked" : "")%>>
					<label for="tab2">Search by Date</label>
					<div class="content">
						<div>
							<label for="FromDate">From:</label> <input type="text"
								name="FromDate" id="datepicker" />
						</div>
						<div>
							<label for="ToDate">To:</label> <input type="text" name="ToDate"
								id="datepicker2" />
							<%
								String error2_msg = (String) request.getAttribute("error2");
								if (error1_msg != null)
									out.println("<font color=red size=3px>" + error2_msg + "</font>");
							%>

						</div>
						<div>
							<input type="submit" name="show" value="Show" />
						</div>
						<div class="container">
							<table class="users">
								<tr>
									<th>First Name</th>
									<th>Last Name</th>
									<th>Check-In Date</th>
									<th>Check-Out Date</th>
									<th>Checked In</th>
									<th>Checked Out</th>
									<th>Room Type</th>
									<th>Date Booked</th>
								</tr>
								<c:forEach var="gd2" items="${gds2}">
									<tr>
										<td><c:out value="${gd2.firstName}" /></td>
										<td><c:out value="${gd2.lastName}" /></td>
										<td><c:out value="${gd2.startDate}" /></td>
										<td><c:out value="${gd2.endDate}" /></td>
										<td><c:out value="${gd2.checkedIn}" /></td>
										<td><c:out value="${gd2.checkedOut}" /></td>
										<td><c:out value="${gd2.roomTypeName}" /></td>
										<td><c:out value="${gd2.dateBooked}" /></td>
									</tr>
								</c:forEach>
							</table>
						</div>

					</div>

				</div>

				<div class="tab">
					<input type="radio" id="tab3" name="tabgroup1" value="t3"
						<%=((request.getAttribute("tabgroup1") != null
					&& request.getAttribute("tabgroup1").toString().equals("t3")) ? "checked" : "")%>>
					<label for="tab3">CheckIn/CheckOut</label>
					<div class="content">
						<div>
							<h1>Check-In customer</h1>
							<div></div>
							<div>
								<label for="b1">Booking ID:</label> <input type="text" name="b1" />
							</div>
							<div>
								<label for="n1">Room Number:</label> <input type="text"
									name="n1" />

							</div>
							<div></div>
							<div>
								<input type="submit" name="checkin" value="Check In" />
								<%
									String errori_msg = (String) request.getAttribute("errori");
									if (errori_msg != null)
										out.println("<font color=red size=3px>" + errori_msg + "</font>");
								%>
								<%
									String success_msg = (String) request.getAttribute("success");
									if (success_msg != null)
										out.println("<font color=red size=3px>" + success_msg + "</font>");
								%>
							</div>
						</div>
						<div>
							<h1>Check-Out customer</h1>
							<div>
								<label for="b2">Booking ID:</label> <input type="text" name="b2" />
							</div>
							<div>
								<label for="n2">Room Number:</label> <input type="text"
									name="n2" />

							</div>

							<div>
								<input type="submit" name="checkout" value="Check Out" />
								<%
									String erroro_msg = (String) request.getAttribute("erroro");
									if (erroro_msg != null)
										out.println("<font color=red size=3px>" + erroro_msg + "</font>");
								%>
								<%
									String success2_msg = (String) request.getAttribute("success2");
									if (success2_msg != null)
										out.println("<font color=red size=3px>" + success2_msg + "</font>");
								%>
							</div>
						</div>

					</div>

				</div>
				<div class="tab">
					<input type="radio" id="tab4" name="tabgroup1" value="t4"
						<%=((request.getAttribute("tabgroup1") != null
					&& request.getAttribute("tabgroup1").toString().equals("t4")) ? "checked" : "")%>>
					<label for="tab4">Print/View Receipt</label>
					<div class="content">
						<div>
							<div>
								<label for="bookid">Input Booking ID:</label> <input type="text"
									name="bookid" value="" />
								<%
									String error3_msg = (String) request.getAttribute("error3");
									if (error3_msg != null)
										out.println("<font color=red size=3px>" + error3_msg + "</font>");
								%>
							</div>
							<input type="submit" name="receipt" value="View Bill" />
						</div>

					</div>

				</div>
				<div class="tab">
					<input type="radio" id="tab5" name="tabgroup1" value="t5"
						<%=((request.getAttribute("tabgroup1") != null
					&& request.getAttribute("tabgroup1").toString().equals("t5")) ? "checked" : "")%>>
					<label for="tab5">Rooms</label>
					<div class="content">
						<div>
							<div>
								<label for="rooms">Available Rooms:</label> <input type="submit"
									name="rooms" value="Search" class="available" />
								<%
									String error4_msg = (String) request.getAttribute("error4");
									if (error4_msg != null)
										out.println("<font color=red size=3px>" + error4_msg + "</font>");
								%>
							</div>

							<div class="container">
								<table class="users">
									<tr>
										<th>Room Type</th>
										<th>Number Available</th>
									</tr>
									<c:forEach var="gd4" items="${gds4}">
										<tr>
											<td><c:out value="${gd4.roomTypeName}" /></td>
											<td><c:out value="${gd4.noAvailable}" /></td>
										</tr>
									</c:forEach>
								</table>

							</div>
						</div>
					</div>

				</div>
			</div>
		</fieldset>
	</form>

</body>
</html>