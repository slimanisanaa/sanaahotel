[00:38] Ajana Mehdi
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email = request.getParameter("email");
String password = request.getParameter("password");
if("admin@gmail.com".equals(email) && "admin".equals(password)){
	session.setAttribute("email",email);
	response.sendRedirect("admin/index.jsp");}
else{
	int z=0;

try {Connection con=ConnectionProvider.getCon();
String req = "select * from users where email = ? and password = ? ";
PreparedStatement pr = con.prepareStatement(req);
pr.setString(1, email);
pr.setString(2, password);
ResultSet rs = pr.executeQuery();
if (rs.next()) {
request.getRequestDispatcher("index.jsp").forward(request, response);
}
} catch (SQLException e) {
e.printStackTrace();}
request.setAttribute("erreur", "NON VALIDE");
request.getRequestDispatcher("Login.jsp").forward(request, response);}
%>

