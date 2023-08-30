<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ALL Book</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<h1>Below List Of Books Are Available!!!</h1>
	<a href="home"><button class="btn btn-primary">Home</button></a>
	<a href="view"><button class="btn btn-success">Refresh</button></a>
	<a href="add"><button class="btn btn-warning">Add</button></a>
	<hr />
	<h3>${msg}</h3>
	<div style="width:1200px">
	<table class ="table table-bordered table-striped table-hover" >
		<tr>
			<th>BOOK ID</th>
			<th>BOOK NAME</th>
			<th>AUTHOR</th>
			<th>PUBLISHER</th>
			<th>PUBLISHED YEAR</th>
			<th>LANGUAGE</th>
			<th>UPDATE</th>
			<th>DELETE</th>
		</tr>
		<c:forEach items="${b}" var="book">
			<tr>
				<td>${book.getBookid()}</td>
				<td>${book.getBookname()}</td>
				<td>${book.getAuthor()}</td>
				<td>${book.getPublisher()}</td>
				<td>${book.getPublishedyear()}</td>
				<td>${book.getLanguage()}</td>
				<td><a
					href="update?bookid=${book.getBookid()}&bookname=${book.getBookname()}&author=${book.getAuthor()}
				&publisher=${book.getPublisher()}&publishedyear=${book.getPublishedyear()}&language=${book.getLanguage()}">Update</a></td>
				<td><a href="delete?bookid=${book.getBookid()}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	</div>
	

</body>
</html>