<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/invoice.css" type="text/css"
	media="screen">
<title>Insert title here</title>
<script type="text/javascript">
	function doPrint() {
		window.print();
	}
</script>
<script type="text/javascript">
	function view() {
		window.open("./admin.jsp")
	}
</script>
</head>
<body bgcolor="#f7f1e4">
	<div>
		<fieldset>

			<center>
				<b class="h1">Receipt for </b>
				<%=session.getAttribute("bookid")%>
				<br> <b> Receipt Date:</b>
				<%=session.getAttribute("date")%>
				<br>
				<script type="text/javascript">
						document
								.write("<a href='#' onclick='javascript:window.print();'>Print this page for customer.</a>");
					</script>
			</center>
			<br>
			<table>
				<tbody>

					<tr>
						<td>
							<table>
								<tbody>
									<tr>
										<td valign="top" align="left"><b> Booking Date: </b> <%=session.getAttribute("date2")%></td>
									</tr>
									<tr>
										<td valign="top" align="left"><b> Booking Number: </b> <%=session.getAttribute("bookid")%></td>
									</tr>
									<tr>
										<td valign="top" align="left"><b> Total Payment Made:
										</b> <%=session.getAttribute("amount")%></td>
									</tr>
								</tbody>
							</table> <br>
							<table>
								<tbody>
									<tr>
										<td><b>Customer Information </b> <br>
											<div>
												<ul style="list-style: none; margin: 0; padding: 0;">
													<li><%=session.getAttribute("name1")%> <%=session.getAttribute("name2")%></li>
													<li><%=session.getAttribute("email")%> <%=session.getAttribute("phone")%></li>
													<li><%=session.getAttribute("address")%>, <%=session.getAttribute("city")%></li>
													<li><%=session.getAttribute("post")%>, <%=session.getAttribute("province")%></li>
													<li><%=session.getAttribute("country")%></li>
												</ul>
											</div></td>

										<td align="right">
											<table border="0" cellpadding="0" cellspacing="1">
												<tbody>
													<tr valign="top">
														<td nowrap="nowrap" align="right">Check In Date</td>
														<td nowrap="nowrap" align="right"><%=session.getAttribute("checkedin")%></td>
													</tr>
													<tr valign="top">
														<td nowrap="nowrap" align="right">Check Out Date</td>
														<td nowrap="nowrap" align="right"><%=session.getAttribute("checkedout")%></td>
													</tr>
													<tr valign="top">
														<td nowrap="nowrap" align="right">Room Type</td>
														<td nowrap="nowrap" align="right"><%=session.getAttribute("room")%></td>
													</tr>
													<tr valign="top">
														<td nowrap="nowrap" align="right">Room Number</td>
														<td nowrap="nowrap" align="right"><%=session.getAttribute("roomnum")%></td>
													</tr>
												</tbody>
											</table>
										</td>
									</tr>
								</tbody>
							</table>
							<table>
								<tbody>
									<tr>
										<td>Paid with <%=session.getAttribute("payment")%>
										</td>
										<td>Ending with: <%=session.getAttribute("card")%>
										</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>

				</tbody>

			</table>
			<br> <br> <br>
			<div>
				<input type="submit" value="Exit" onclick="view() " />
			</div>

		</fieldset>
	</div>
</body>
</html>