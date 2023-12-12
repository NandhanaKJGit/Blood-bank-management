<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"] {
	border: none;
	background: silver;
	height: 50px;
	font-size: 16px;
	margin-left: 40%;
	padding: 15px;
	width: 33%;
	border-radius: 25px;
}
</style>
</head>
<body>
	<div class="header">
		<a href="#default" class="Logo"><img class="logo" src="Logo1.png"></a>
		  <div class="header-right">
			<a href="index.jsp">Home</a> <a class="active" href="adminLogin.jsp">AdminLogin</a>


		</div>


	</div>
<body>
	<div class="container">
		<br> <br>
		<%
			String msg = request.getParameter("msg");
			if ("invalid".equals(msg)) {
		%>
		<center>
			<font color="red" size="5">Invalid User name or Password</font>
		</center>
		<%
			}
		%>
		<form action="adminLoginAction.jsp" method="post">
			<div class="form-group">
				<center>
					<h2>User name</h2>
				</center>
				<input type="text" placeholder="Enter username" name="username"required>
				<center>
					<h2>Password</h2>
				</center>
				<input type="password" placeholder="Enter password" name="password"required><br> <br>
				<center>
					<button type="submit" class="button">Submit</button>
				</center>
		</form>

	</div>
	<br>
	<br>


</body>

</body>
</html>