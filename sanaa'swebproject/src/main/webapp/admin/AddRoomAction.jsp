<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%

int num=Integer.parseInt(request.getParameter("num"));
int price=Integer.parseInt(request.getParameter("price"));
String type=request.getParameter("type");
try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into rooms values (null,?,?,?)");
	
	ps.setInt(1,num);
	ps.setInt(2,price);
	ps.setString(3,type);
	System.out.println("ppp");
	if (ps.executeUpdate() == 1) {
		response.sendRedirect("AddRoom.jsp?msg=done");
		
		}
	
	
	System.out.println("sss");
	
	
	
}
catch(Exception e){
	response.sendRedirect("AddRoom.jsp?msg=wrong");
}
%>