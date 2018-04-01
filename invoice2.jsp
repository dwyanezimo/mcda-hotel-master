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
		window.open("./Customer.jsp")
	}
</script>
</head>
<body bgcolor="#f7f1e4">
	<div>
		<fieldset style="width: 600px; height: 300px;">

			<center>
				<b class="h1">Receipt for </b>
				<%=session.getAttribute("BID")%>
				<br> <b> Receipt Date:</b>
				<%=session.getAttribute("date")%>
				<br>
				<script type="text/javascript">
						document
								.write("<a href='#' onclick='javascript:window.print();'>Print this for your use.</a>");
					</script>
			</center>
			<h1 style="text-align: center;">Please bring this along with you
				on your day of arrival</h1>
			<div style="font-size:30px;font-family: average;">
				Hi,
				<%=session.getAttribute("name1")%>
				<%=session.getAttribute("name2")%>, Your booking id is
				<%=session.getAttribute("BID")%>
			</div>
			<br> <br> <br>
			<div class="link">
				<a href="Customer.jsp">Exit</a>
			</div>

		</fieldset>
	</div>
</body>
</html>