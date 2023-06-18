<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	<c:set var="message" value = ""/>
	<c:set var="msgColor" value = ""/>
	
	<c:if test="${param.msg == 'loginerror'}">
			<c:set var="message" 
			value="invalid login credentials"/>
			<c:set var="msgColor" value="red"/>
	</c:if>
	
	<c:if test="${param.msg == 'notloggedin'}">
			<c:set var="message" 
			value="you need to login first"/>
			<c:set var="msgColor" value="red"/>
	</c:if>
	
	<c:if test="${param.msg == 'regsuccess'}">
			<c:set var="message" 
			value="registration successful"/>
			<c:set var="msgColor" value="green"/>
	</c:if>
		
	<p style="color:<c:out value="${msgColor}"/>;
	text-align:center">
		<c:out value="${message}"/>
	</p>
	
	<h1 style="color:slateblue;text-align:center">
		LOGIN PAGE
	</h1>
	
	<form action="checkuser" method="post" class="form">
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
		
		<input type="submit" value="CLICK TO LOGIN"
		name="btnLogin" 
		class="btn btn-block btn-info">
		 
	</form>
	</div>

	<p>Click <a href="reg">here</a> 
	to register</p>	
		
</body>
</html>
