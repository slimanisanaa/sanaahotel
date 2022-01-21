<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try {
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	String q1 = "create table users(name varchar(100),email varchar(100),password varchar(100),againpassword varchar(100))";
	String q2 = "create table room (id int , num int , type varchar (200) , price int)";
	System.out.print(q1);
	System.out.print(q2);
	//st.execute(q1);
	st.execute(q2);

	System.out.print("Table created");
	con.close();

} catch (Exception e) {
	System.out.print(e);
}
%>