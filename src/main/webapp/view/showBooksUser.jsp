<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Books</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<h1>Below List Of Books Are Available!!!</h1>
	<a href="home"><button class="btn btn-primary">Logout</button></a>
	
	<hr />
	<div style="width:1200px">
	<table class="tabletable-bordered table-striped table-hover">
		<tr>
			<th>BOOK ID</th>
			<th>BOOK NAME</th>
			<th>AUTHOR</th>
			<th>PUBLISHER</th>
			<th>PUBLISHED YEAR</th>
			<th>LANGUAGE</th>
		</tr>
		<c:forEach items="${b}" var="book">
			<tr>
				<td>${book.getBookid()}</td>
				<td>${book.getBookname()}</td>
				<td>${book.getAuthor()}</td>
				<td>${book.getPublisher()}</td>
				<td>${book.getPublishedyear()}</td>
				<td>${book.getLanguage()}</td>
			</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>