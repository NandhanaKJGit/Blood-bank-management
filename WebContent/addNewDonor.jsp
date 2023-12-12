<%@include file="header.html"%>
<%@page import="com.bloodbank.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="email"], select,
	input[type="number"] {
	border: none;
	background: silver;
	height: 50px;
	font-size: 16px;
	padding: 15px;
	width: 60%;
	border-radius: 25px;
	margin-left: 20%;
}

h2, h1 {
	margin-left: 20%;
}

hr {
	width: 60%;
}
</style>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
	
%>
<center><font color="red"size="5">Successfully updated...</font></center>
<%} %>
<%

if("invalid".equals(msg))
{
	
%>
<center><font color="red"size="5">Something wrong...try again!</font></center>
<%} %>
<%
int id=1;
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select*from donor");
	if(rs.first()){
		id=rs.getInt(1);
		id=id+1;
		
	}%>
	<div class="container">
	<h1 style="color:red;">DonorID: <%out.println(id); %></h1>
	<% 
	
	
}catch(Exception e){
	
}
%>
<div class="container">
<form action="addNewDonorAction.jsp"method="post">
<input type="hidden"name="id" value="id">

<h2>Name</h2>
<input type="text"placeholder="Enter name"name="name">
<hr>
<h2>Father name</h2>
<input type="text"placeholder="Enter father name"name="father">
<hr>
<h2>Mother name</h2>
<input type="text"placeholder="Enter mother name"name="mother">
<hr>
<h2>Mobile number</h2>
<input type="text"placeholder="Enter mobile number"name="mobilenumber">
<hr>
<h2>Gender</h2>
<select name="gender">
<option value="Male">Male</option>
<option value="Female">Female</option>
<option value="Others">Others</option>
</select>
<hr>
<h2>Email</h2>
<input type="email" placeholder="Enter the email"name="email">
<hr>
<select name="bloodgroup">
<option value="A+">A+</option>
<option value="A-">A-</option>
<option value="B+">B+</option>
<option value="B-">B-</option>
<option value="AB+">AB-</option>
<option value="AB-">AB-</option>
</select>
<hr>
<h2>Address</h2>
<input type="text"placeholder="Enter address"name="address">
<br>
<center><button type="submit"class="button">Save</button></center>
</form>
</div>
</div>

</body>
</html>


