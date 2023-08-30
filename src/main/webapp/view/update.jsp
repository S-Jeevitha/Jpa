<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<h1>Update the Book Details</h1>
	<hr />
	<table>
		<s:form action="updatedValue" method="post" modelAttribute="b">
			<tr>
				<td>BOOK ID</td>
				<td><s:input path="bookid" value="${bookid}" /></td>
			</tr>
			<tr>
				<td>BOOK NAME</td>
				<td><s:input path="bookname" value="${bookname}" /></td>
			</tr>
			<tr>
				<td>AUTHOR</td>
				<td><s:input path="author" value="${author}" /></td>
			</tr>
			<tr>
				<td>PUBLISHER</td>
				<td><s:input path="publisher" value="${publisher}" /></td>
			</tr>
			<tr>
				<td>PUBLISHED YEAR</td>
				<td><s:input path="publishedyear" value="${publishedyear}" /></td>
			</tr>
			<tr>
				<td>LANGUAGE</td>
				<td><s:input path="language" value="${language}" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Update" /></td>
			</tr>
		</s:form>

	</table>

</body>
</html>