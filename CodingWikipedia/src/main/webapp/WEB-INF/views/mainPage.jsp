<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Programming Wikipedia</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mainPage.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<div class="lines"></div>
<div class="whole">
	<div id="mySidenav" class="sidenav">
		<a href="./Python" id="Python">Python</a>
		<a href="./C" id="C">C</a>
		<a href="./Cplus" id="Cplus">C++</a>
		<a href="./Csharp" id="Csharp">C#</a>
		<a href="./Java" id="Java">Java</a>
		<a href="./JS" id="JS">JS</a>
		<a href="./php" id="PHP">PHP</a>
		<a href="./R" id="R">R</a>
	</div>
	<header>
		<h1>Get Language</h1>
		<button class="button"><a href="addPage">
			<span>add</span></a>
		</button>
	</header>
	<main>
		<!-- repeat for each topic posted -->
		<c:forEach var="each" items="${list}">
			<button class="accordion">${each.title}</button>
			<div class="panel">
				<p>${each.content}</p>
				<p>written at ${each.regdate}</p>
				<input type="button" value="delete" class="delete" onclick="location.href='delete/${each.seq}'"> <input
					type="button" value="edit" class="edit" onclick="location.href='edit/${each.seq}'">
			</div>
		</c:forEach>

		<script>
			var acc = document.getElementsByClassName("accordion");
			var i;

			for (i = 0; i < acc.length; i++) {
				acc[i].addEventListener("click", function() {
					this.classList.toggle("active");
					var panel = this.nextElementSibling;
					if (panel.style.maxHeight) {
						panel.style.maxHeight = null;
					} else {
						panel.style.maxHeight = panel.scrollHeight + "px";
					}
				});
			}
		</script>
	</main>
</div>

<footer>
	<!-- <input type="button" value="add" class="button" style="background-color: #6ca580;"> -->
</footer>


</html>
