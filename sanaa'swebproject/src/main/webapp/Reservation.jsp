<%@page import="service.ChambreService"%>
<%@page import="service.Chambre"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Inscription.css">
<title>Book Now!</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link
	href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i"
	rel="stylesheet">
<!-- //web font -->
</head>
<body>

	<!-- main -->
	<div class="main-w3layouts wrapper">
		<span
			style="text-align: center; display: flex; justify-content: center;">
			Book Now!</span>
		
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form action="ReservationAction.jsp" method="post">
					<input class="text" type="text" name="datedebut"
						placeholder="DD/MM/YYYY" required=""> <input
						class="text email" type="text" name="datefin"
						placeholder="DD/MM/YYYY" required=""> <select name="type" 
style="border: 1px solid #AAA; border-radius: 2px; width:400px;box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.1); color: #555; font-size: inherit; margin: 0; overflow: hidden; padding-top: 2px;padding-bottom: 2px; text-overflow: ellipsis; white-space: nowrap; "

						
						class="text">
						<option>Type de chambre</option>
						<%
						ChambreService cs = new ChambreService();
						for (Chambre c : cs.findAll()) {
						%>
						<option value="<%=c.getType() %>" ><%=c.getType() %> : prix <%=c.getPrix() %> </option>
						<%
						}
						%>

					</select>
	
		</div>
			<div class='whysignLogin'>
			<%
		String msg=request.getParameter("msg");
		if("valid".equals(msg))
		{
		%>
		<h1>booking successfully done</h1>
		<%} %>
		<% if("invalid".equals(msg))
		{
		%>
		<h1> Some thing went wrong,please try again!</h1>
	    <%} %>
		</div>
	
			
					<div class="wthree-text">
						<label class="anim"> </label>
						<div class="clear"></div>
					</div>
					<input type="submit" value="BOOK">
				</form>

			</div>
		</div>

		<!-- copyright -->
		<div class="colorlibcopy-agile"></div>
		<!-- //copyright -->
		<ul class="colorlib-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
	<!-- //main -->
</body>
</html>