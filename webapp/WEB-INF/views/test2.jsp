<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
div.scrollmenu {
	overflow: auto;
	white-space: nowrap;
}

div.scrollmenu a:hover {
	background-color: #777;
}

.card {
	display: inline-block;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    max-width: 300px;
    text-align: center;
    padding: 0 30px;
    text-decoration: none;
}

</style>
</head>
<body>

	<div class="scrollmenu">
	
	<c:forEach var="i" begin="1" end="10">
		<div class="card">
			<img src="${pageContext.request.contextPath }/assets/images/pic01.jpg" alt="John" style="width: 100%">
			<h1>John Doe</h1>
			<p class="title">CEO & Founder, Example</p>
			<p>Harvard University</p>
			<p>
				<button>More...</button>
			</p>
		</div>
	</c:forEach>
		
		<!-- <a href="#home">Home</a> <a href="#news">News</a> <a href="#contact">Contact</a>
		<a href="#about">About</a> <a href="#about">About</a> <a href="#about">About</a>
		<a href="#about">About</a> <a href="#about">About</a> <a href="#about">About</a>
		<a href="#about">About</a> <a href="#about">About</a> <a href="#about">About</a>
		<a href="#about">About</a> <a href="#about">About</a> <a href="#about">About</a>
		<a href="#about">About</a> <a href="#about">About</a> <a href="#about">About</a>
		<a href="#about">About</a> <a href="#about">About</a> <a href="#about">About</a>
		<a href="#about">About</a> <a href="#about">About</a> <a href="#about">About</a>
		<a href="#about">About</a> <a href="#about">About</a> <a href="#about">About</a> -->
	</div>
</body>
</html>