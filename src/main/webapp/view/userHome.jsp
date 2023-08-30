<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Home Page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<h1>Welcome To User Home Page</h1>
	<a href="home"><button class="btn btn-secondary">Home</button></a>
	<a href="updateUserPassword?username=${username}"><button
			class="btn btn-success">UpdatePassword</button></a>
	<hr />
	<a href="viewBooks">View Books</a>
	<a href="viewDetails?username=${username}">View Detail</a>
	

</body>
</html>