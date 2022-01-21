<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="service.ChambreService"%>
<%@page import="service.Chambre"%>
<link rel="stylesheet" href="AddRoom.css">

<div class="form-body">
	<div class="row">
		<div class="form-holder">
			<div class="form-content">
				<div class="form-items">
					<h3>Modify room!</h3>

					<%
					int id = 1;
					try {
						Connection con = ConnectionProvider.getCon();
						Statement st = con.createStatement();
						ResultSet rs = st.executeQuery("select count(*)  from room");
						while (rs.next()) {
							id = rs.getInt(1);
							id = id + 1;
						}
					} catch (Exception e) {
					}
					%>

					
					<%
					String msg = request.getParameter("msg");
					if ("done".equals(msg)) {
					%>
					<h3 class="alert">Room Modified Successfully!</h3>
					<%
					}
					%>
					<%
					if ("wrong".equals(msg)) {
					%>
					<h3 class="alert">Something went wrong, please try again!</h3>
					<%
					}
					%>
					<p>Fill in the data below.</p>
					<form action="editRoomAction.jsp" method="post">
						<input class="form-control" type="hidden" name="id" 
						value="<%= request.getParameter("id") == null ? "" : request.getParameter("id")%>" 	placeholder="enter number" required>

						<%
                        ChambreService ms = new ChambreService();
							int x = Integer.parseInt(request.getParameter("id"));
                        Chambre rs = null;
							rs = ms.findById(x); 
							 {
					
							%>	
						<div class="col-md-12">
							<input class="form-control" type="Text" name="num"
								placeholder="enter number" value="<%= rs.getNum() %>" required>

						</div>

						<div class="col-md-12">
							<input class="form-control" type="Text" name="price"
								placeholder="enter price" value="<%= rs.getPrix() %>" required>

						</div>






						<div class="col-md-12">
							<input class="form-control" type="Text" name="type"
								placeholder="enter type" value="<%=rs.getType()%>" required>

						</div>
						
						<%
					}
					%>

						<div class="form-check">
							<input class="form-check-input" type="checkbox" value=""
								id="invalidCheck" required> <label
								class="form-check-label">I confirm that all data are
								correct</label>

						</div>


						<div class="form-button mt-3">
							<button id="submit" type="submit" class="btn btn-primary">Edit</button>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
</div>