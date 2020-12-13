<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Programming Wikipedia</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/addPage.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<div class="whole">
	<header>
		<h1>Add Topic</h1>
	</header>
	<main>
		<article>
			<form method="post" action="save">
				<label for="Category">Category:</label><br>
				<input type="text" id="category" name="category"><br> <label
					for="Title">Title:</label><br> <input type="text" id="title"
					name="title"><br> <label for="Writer">Writer:</label><br>
				<input type="text" id="writer" name="writer"><br> <br>
				<label for="Content">Content:</label><br>
				<textarea id="content" name="content" placeholder=" Input content"
					class="content"></textarea>
				<input type="submit" value="save" class="save">
			</form>
		</article>
	</main>
	<footer>
		<form>
			<input type="button" value="back" class="back"
				onclick="history.back()">
		</form>
	</footer>
</div>