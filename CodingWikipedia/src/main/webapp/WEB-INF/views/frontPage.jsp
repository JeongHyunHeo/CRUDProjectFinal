<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Programming Wikipedia</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/frontPage.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<div class="lines"></div>
<div class="whole">
	<div id="mySidenav" class="sidenav">
		<a href="./Python" id="Python">Python</a> <a href="./C" id="C">C</a> <a
			href="./Cplus" id="Cplus">C++</a> <a href="./Csharp" id="Csharp">C#</a>
		<a href="./Java" id="Java">Java</a> <a href="./JS" id="JS">JS</a> <a
			href="./php" id="PHP">PHP</a> <a href="./R" id="R">R</a>
	</div>
	<header>
		<h1>Programming Wikipedia</h1>
		프로그래머 혹은 코딩에 관심있는 일반인들이 프로그래밍에 관한 정보를 좀 더 간편하게 볼 수 있도록 한곳에 정리와 지속적인
		업데이트로 서비스를 제공, 또한 언어들을 분류해 놓은 게시판을 유저에게 편집권한을 줘 서비스의 생태계를 좀 더 활성화시켜 키울
		수 있도록 만들어진 사이트입니다.
	</header>
	<main>
		<h2>웹사이트 사용방법</h2>
		<figure>
			<img src='${pageContext.request.contextPath}/resources/img/menu.png' />
			<figcaption>=> 옆에 메뉴중 언어를 하나 선택에서 누르고</figcaption>
		</figure>
		<figure>
			<img
				src='${pageContext.request.contextPath}/resources/img/titleSelect.png' />
			<figcaption>=> 원하는토픽을 누르고</figcaption>
		</figure>
		<figure>
			<img
				src='${pageContext.request.contextPath}/resources/img/editDelete.png' />
			<figcaption>=> 편집 혹은 삭제</figcaption>
		</figure>
		<figure>
			<img
				src='${pageContext.request.contextPath}/resources/img/addTopic.png' />
			<figcaption>=> 필요시 토픽을 추가하고</figcaption>
		</figure>
		<figure>
			<img src='${pageContext.request.contextPath}/resources/img/save.png' />
			<figcaption>=> 저장</figcaption>
		</figure>
	</main>
</div>
</html>


