<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String num=request.getParameter("num");
String price=request.getParameter("price");
String type=request.getParameter("type");
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("update rooms set num="+num+" , price="+price+" , type='"+type+"' where id="+id+" ");
	response.sendRedirect("allRoomsEditRoom.jsp");
}

catch(Exception e){
	System.out.println(e);
}
%>