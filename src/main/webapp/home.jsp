<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<%
			if(!session.isNew() && 
				session.getAttribute("USERNAME") != null) {
		%>
			
			<h1 style="color:green;text-align:center">
				Welcome ${sessionScope.USERNAME} , to your
				profile page
			</h1>
			
		<%		
			}
			else
			{
				response.sendRedirect(
						"login.jsp?msg=notloggedin");
			}
		%>
	</div>
</body>
</html>
