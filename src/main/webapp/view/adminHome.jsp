<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home Page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<h1>Welcome To Admin Home Page</h1>
	<a href="home"><button class="btn btn-info">Home</button></a>
	<a href="updateAdminPassword?username=${username}"><button
			class="btn btn-success">UpdatePassword</button></a>
	<hr />
	<ul>
		<li><a href="view">View All Books</a></li>
		<li><a href="viewUsers">View Users</a></li>
		


	</ul>

</body>
</html>