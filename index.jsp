<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/index.css" type="text/css"
	media="screen">
<title>Insert title here</title>
</head>
<body bgcolor="#faf5eb">
	<div>
		<h1 align="center">Welcome to your Admin Page</h1>
		<form action="Reserve" method="post">
			<fieldset>
				<legend> Login to Continue </legend>
				<div>
					<%
String login_msg=(String)request.getAttribute("error");  
if(login_msg!=null)
out.println("<font color=red size=3px>"+login_msg+"</font>");
%>
				</div>
				<div>
					<label for="Username">Username:</label> <input type="text"
						name="Username" />
				</div>
				<div>
					<label for="Password">Password:</label> <input type="password"
						name="Password" />
				</div>

				<div>
					<input type="submit" value="Login" />
				</div>


			</fieldset>
		</form>
	</div>
</body>
</html>