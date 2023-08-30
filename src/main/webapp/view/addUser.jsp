<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add User</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<h1>Add User Details</h1>
	<hr />
	<table>
		<s:form action="addUsers" method="post" modelAttribute="u">
			
			<tr>
				<td>Username</td>
				<td><s:input path="username" /></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><s:input path="email" /></td>
			</tr>
			<tr>
				<td>Mobilenumber</td>
				<td><s:input path="mobilenumber" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><s:input path="password" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Register" /></td>
			</tr>
		</s:form>
	</table>

</body>
</html>