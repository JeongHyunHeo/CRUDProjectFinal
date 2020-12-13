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
		<h2>
			Get Language
			<h2>
				<article>
					<form method="post" action="save">
						<label for="Topic">Topic:</label><br> <input type="text"
							id="category" name="category" style="color: white;"><br> <br>
						<label for="Content">Content:</label><br>
						<textarea id="content" name="content" rows="10" cols="140" placeholder=" Input content"
							style="color: white;"></textarea>
				</article>
	</main>
	<footer>
		<form>
			<input type="button" value="back" class="back"
				onclick="history.back()">
		</form>
		<input type="submit" value="save" class="save">
		</form>

	</footer>
</div>
</html>
