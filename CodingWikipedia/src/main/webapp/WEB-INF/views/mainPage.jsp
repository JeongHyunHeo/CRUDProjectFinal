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
		<a href="#" id="Python">Python</a>
		<a href="#" id="C">C</a>
		<a href="#" id="Cplus">C++</a>
		<a href="#" id="Csharp">C#</a>
		<a href="#" id="Java">Java</a>
		<a href="#" id="JS">JS</a>
		<a href="#" id="PHP">PHP</a>
		<a href="#" id="R">R</a>
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
			<button class="accordion">${each.category}</button>
			<div class="panel">
				<p>${each.content}</p>
				<p>written at ${each.regdate}</p>
				<input type="button" value="delete" class="delete"> <input
					type="button" value="edit" class="edit">
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
	<form>
		<input type="button" value="back" class="foldtl"
			onclick="history.back()">
	</form>
</footer>


</html>
