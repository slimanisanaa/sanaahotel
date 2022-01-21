<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="service.ChambreService"%>
<%@page import="service.Chambre"%>

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

<title>Table #6</title>
</head>
<body>


	<div class="content">

		<div class="container">
			<h2 class="mb-5">ROOMS</h2>


			<div class="table-responsive">

				<table class="table table-striped custom-table">
					<thead>
						<tr>

							<th scope="col">ID</th>
							<th scope="col">Number</th>
							<th scope="col">Price</th>
							<th scope="col">Type</th>

							<th scope="col">Edit</th>
						</tr>
					</thead>
					<tbody>
						
						<%
                        ChambreService ms = new ChambreService();
						
                        for (Chambre rs : ms.findAll()) {
                    %>
						<tr>
							<td><%=rs.getId()%></td>
							<td><%=rs.getNum()%></td>
							<td><%=rs.getPrix()%></td>
							<td><%=rs.getType()%></td>
							<td><a href="editRoom.jsp?id=<%=rs.getId()%>" class="more">Edit</a></td>
							<td><a href="deleteRoom.jsp?id=<%=rs.getId()%>" class="more">Delete</a></td>
						</tr>
						<%}%>



						

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