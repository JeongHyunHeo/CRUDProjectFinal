<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<h1>Edit Topic</h1>
	</header>
	<main>
		<h2>
			Get Language
		</h2>
			<article>
				<form method="post" action="editok">
					<input type="hidden" name="seq" value ="${each.seq}"/>
					<label for="Category">Category:</label><br>
					<input type="text" id="Category" name="category" value="${each.category}" style="color: white;"><br>
					<label for="Topic">Topic:</label><br>
					<input type="text" id="Topic" name="title" value="${each.title}" style="color: white;"><br><br>
					<label for="Content">Content:</label><br>
					<textarea rows="10" cols="140" name="content"
						style="color: white;">${each.content}</textarea>
					<input type="submit" value="edit" class="save">
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
</html>