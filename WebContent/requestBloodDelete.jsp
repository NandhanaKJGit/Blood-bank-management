<%@page import="com.bloodbank.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
	String mobilenumber = request.getParameter("mobilenumber");
	try {
		Connection con = ConnectionProvider.getCon();
		Statement st=con.createStatement();
		st.executeUpdate("delete from blood_request where mobilenumber='"+mobilenumber+"'");
		
		response.sendRedirect("requestBlood.jsp");

	} catch (Exception e) {
		response.sendRedirect("requestBlood.jsp");

	}
%>