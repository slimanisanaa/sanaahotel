
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Inscription.css">
<title>SignUp Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
<!-- //web font -->
</head>
<body>
	<!-- main -->
	<div class="main-w3layouts wrapper">
		<h1>LOGIN NOW !</h1>
			<div class='whysignLogin'>
			<%
		String msg=request.getParameter("msg");
		if("notexist".equals(msg))
		{
		%>
		<h1>Incorrect Username or password</h1>
		<%} %>
		<% if("invalid".equals(msg))
		{
		%>
		
		<h1> Some thing went wrong,please try again!</h1>
	    <%} %>
		</div>
	
	
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form action="LoginAction.jsp" method="post">
					<input class="text" type="text" name="email" placeholder="email" required="">
					
					<input class="text" type="password" name="password" placeholder="Password" required="">
					
					<div class="wthree-text">
						<label class="anim">
							
							
						</label>
						<div class="clear"> </div>
					</div>
					<input type="submit" value="LOGIN">
				</form>
				
			</div>
		</div>
		
	
		
		<!-- copyright -->
		<div class="colorlibcopy-agile">
		
		</div>
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