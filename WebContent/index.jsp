<head>
<link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
.mySlides {
	display: none;
}

input[type="text"], input[type="mail"] {
	border: none;
	background: silver;
	height: 50px;
	font-size: 16px;
	margin-left: 2%;
	padding: 15px;
}
</style>
</head>
<body>

	<div class="header">
		<a href="#default" class="logo"><img class="logo" src="Logo1.png"></a>
		<div class="header-right">
			<a class="active" href="index.jsp">Home</a> 
			<a href="adminLogin.jsp">AdminLogin</a>
		</div>
	</div>

	<div style="max-width: 100%">
		<img class="mySlides" src="slide2.jpg"> 
	</div>
	<script>
		var myIndex = 0;
		carousel();

		function carousel() {
			var i;
			var x = document.getElementsByClassName("mySlides");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			myIndex++;
			if (myIndex > x.length) {
				myIndex = 1
			}
			x[myIndex - 1].style.display = "block";
			setTimeout(carousel, 2000);
		}
	</script>
<body>
	<br>
	<br>
	<%
		String msg = request.getParameter("msg");
		if ("valid".equals(msg)) {
	%>
	<center>
		<font color="red" size="5">submitted successfully.</font>
	</center>
	<%
		}
	%>
	<%
		if ("invalid".equals(msg)) {
	%>
	<center>
		<font color="red" size="5">Invalid.Try again...</font>
	</center>
	<%
		}
	%>
	<center>
		<h1>Enter the details for the blood request</h1>
	</center>
	<form action="indexFormAction.jsp" method="post">
		<center>
			<input type="text" name="name" placeholder="Enter name" required>
			<input type="text" name="mobilenumber"placeholder="Enter phone number" required> 
			<input type="mail" name="email" placeholder="Enter email address" required>
			<input type="text" name="bloodgroup" placeholder="Enter blood group"required><br>
			<br>
			<button class="button1">
				<span>Submit</span>
			</button>

		</center>
	</form>

</body>
</html>