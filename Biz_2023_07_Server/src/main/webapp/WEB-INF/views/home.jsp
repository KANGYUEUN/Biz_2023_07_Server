<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOOK-service</title>
<link href="${rootPath}/static/css/main.css" rel="stylesheet">
<link href="${rootPath}/static/css/bookinput.css" rel="stylesheet">

<script>var rootPath = "${rootPath}"</script>
</head>
<body>
	<header class="main">
		<h1>♥ BOOK RENT ♥</h1>
		<p>BOOK RENT MANAGER 2023</p>
	</header>
	<nav class="main">
		<ul>
			<li>HOME</li>
			<li>도서정보</li>
			
			<li>회원정보</li>
			
			<li>관리자페이지</li>
		</ul>
	</nav>
	<section class="main">
		<%@ include file ="/WEB-INF/views/jsp/book/bookinput.jsp" %>
	</section>

</body>
</html>