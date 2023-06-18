<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix = "c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	
	<p style="color:${param.color};text-align:center">
		<c:if test="${param.msg == 'regerror'}">
			<c:out value="registration failed"/>
		</c:if>
	</p>
	
	<h1 style="color:slateblue;text-align:center">
		REGISTRATION PAGE
	</h1>
	
	<form action="adduser" method="post" class="form">
		<div class="form-group">
			<label class="control-label">
				Enter User Name
			</label>
			<input type="text" class="form-control"
			name="username" placeholder="User Name">
		</div>
		
		<div class="form-group">
			<label class="control-label">
				Enter User Password
			</label>
			<input type="password" class="form-control"
			name="password" placeholder="User Password">
		</div>
		
		<input type="submit" value="CLICK TO REGISTER"
		name="btnLogin" 
		class="btn btn-block btn-info">
		 
	</form>
	</div>
</body>
</html>