<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Users</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<h1>List Of Users</h1>
	<hr />

	<a href="home"><button class="btn btn-warning">Logout</button></a>
	<a href="home"><button class="btn btn-danger">Home</button></a>
	<hr />
	<table class="table table-bordered table-striped table-hover">
		<tr>

			<th>Username</th>
			<th>Email</th>
			<th>Mobilenumber</th>
			<th>Password</th>
		</tr>
		<c:forEach items="${u}" var="user">
			<tr>

				<td>${user.getUsername()}</td>
				<td>${user.getEmail()}</td>
				<td>${user.getMobilenumber()}</td>
				<td>${user.getPassword()}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>