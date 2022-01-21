<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("delete from users where id="+id+" ");
	response.sendRedirect("GestionUser.jsp?msg=done");
}
catch(Exception e){
	System.out.println(e);
}
%>