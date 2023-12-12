<%@page import="com.bloodbank.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
	String mobilenumber = request.getParameter("mobilenumber");
	try {
		Connection con = ConnectionProvider.getCon();
		PreparedStatement ps = con.prepareStatement("update blood_request set status='completed'where mobilenumber=?");
		ps.setString(1, mobilenumber);
		response.sendRedirect("requestBlood.jsp");

	} catch (Exception e) {
		response.sendRedirect("requestBlood.jsp");

	}
%>