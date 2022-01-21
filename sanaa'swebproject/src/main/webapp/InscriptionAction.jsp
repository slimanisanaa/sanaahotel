<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%

String name = request.getParameter("Username");
String email = request.getParameter("email");
String password = request.getParameter("password");
String againpassword = request.getParameter("password1");
try {
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into users values (null,?,?,?,?,'NV')");
	ps.setString(1, name);
	ps.setString(2, email);
	ps.setString(3, password);
	ps.setString(4, againpassword);
	ps.executeUpdate();
	response.sendRedirect("Login.jsp?msg=valid");
} catch (Exception e) {
	System.out.println(e);
	response.sendRedirect("Inscription.jsp?msg=invalid");
	
}
%>