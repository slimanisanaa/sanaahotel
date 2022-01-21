<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="service.ChambreService"%>
<%@page import="service.Chambre"%>



<%
String datedebut = request.getParameter("datedebut");
String datefin = request.getParameter("datefin");
String type = request.getParameter("type");

try {
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into reservation values (null,?,?,?)");

	ps.setString(1, datedebut);
	ps.setString(2, datefin);
	ps.setString(3, type);

	ps.executeUpdate();
	response.sendRedirect("Reservation.jsp?msg=valid");
} catch (Exception e) {
	System.out.println(e);
	response.sendRedirect("Reservation.jsp?msg=invalid");

}
%>