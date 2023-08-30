<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<h1>Add Book Details</h1>
	<hr />
	<table>
		<s:form action="addBook" method="post" modelAttribute="b">
			<tr>
				<td>BOOK ID</td>
				<td><s:input path="bookid" /></td>
			</tr>
			<tr>
				<td>BOOK NAME</td>
				<td><s:input path="bookname" /></td>
			</tr>
			<tr>
				<td>AUTHOR</td>
				<td><s:input path="author" /></td>
			</tr>
			<tr>
				<td>PUBLISHER</td>
				<td><s:input path="publisher" /></td>
			</tr>
			<tr>
				<td>PUBLISHED YEAR</td>
				<td><s:input path="publishedyear" /></td>
			</tr>
			<tr>
				<td>LANGUAGE</td>
				<td><s:input path="language" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Add" /></td>
			</tr>
		</s:form>


	</table>

</body>
</html>