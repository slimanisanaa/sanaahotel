<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="service.UserService"%>
<%@page import="service.User"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="fonts/icomoon/style.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- Style -->
<link rel="stylesheet" href="css/style.css">

<title>Users</title>
</head>
<body>


	<div class="content">

		<div class="container">
			<h2 class="mb-5">USERS</h2>


			<div class="table-responsive">

				<table class="table table-striped custom-table">
					<thead>
						<tr>
							<th scope="col">id</th>
							<th scope="col">name</th>
							<th scope="col">email</th>
							<th scope="col">state</th>

							<th scope="col"></th>
						</tr>
					</thead>
					<tbody>

						<%
						UserService ms = new UserService();

						for (User rs : ms.findAll()) {
						%>
						<tr>
							<td><%=rs.getId()%></td>
							<td><%=rs.getNom()%></td>
							<td><%=rs.getEmail()%></td>
							<td><%=rs.getEtat()%></td>
							
							<td><a href="deleteUser.jsp?id=<%=rs.getId()%>" class="more">Delete</a></td>
							<td><a href="acceptUser.jsp?id=<%=rs.getId()%>" class="more">Accept</a></td>
						</tr>
						<%
						}
						%>





					</tbody>
				</table>
			</div>


		</div>

	</div>



	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>