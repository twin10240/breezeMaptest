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
<style>
html {
	box-sizing: border-box;
}

*, *:before, *:after {
	box-sizing: inherit;
}

.row{ 
	width: 80%;
    background-color: #333;
    overflow: auto;
    white-space: nowrap;
}

.row .column {
	overflow: auto;
	margin-bottom: 16px;
	padding: 0 8px;
	list-style-type: none;
}

.row .column li{
	float: left;
	display: inline;
	padding: 0 10px;
}

@media ( max-width : 650px) {
	.row .column {
		width: 100%;
		display: block;
	}
}

.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.container {
	padding: 0 16px;
}

.container::after, .row::after {
	content: "";
	clear: both;
	display: table;
}

.title {
	color: grey;
}

.button {
	border: none;
	outline: 0;
	display: inline-block;
	padding: 8px;
	color: white;
	background-color: #000;
	text-align: center;
	cursor: pointer;
	width: 100%;
}

.button:hover {
	background-color: #555;
}
</style>
</head>
<body>
	<h2>Responsive "Meet The Team" Section</h2>
	<p>Resize the browser window to see the effect.</p>
	<br>

	<div class="row">
		<!-- <div class="column"> -->
		<ul class="column">
			<c:forEach var="i" begin="1" end="4">
			<li>
				<div class="card">
					<img src="${pageContext.request.contextPath }/assets/images/pic0${i }.jpg" alt="Jane" style="width: 100%; max-width: 440px;">
					<div class="container">
						<h2>Jane Doe</h2>
						<p class="title">CEO & Founder</p>
						<p>Some text that describes me lorem ipsum ipsum lorem.</p>
						<p>example@example.com</p>
						<p>
							<button class="button">Contact</button>
						</p>
					</div>
				</div>
			</li>
			</c:forEach>
		</ul>
			
		
			
		<!-- </div> -->

		<!-- <div class="column">
			<div class="card">
				<img src="/w3images/team2.jpg" alt="Mike" style="width: 100%">
				<div class="container">
					<h2>Mike Ross</h2>
					<p class="title">Art Director</p>
					<p>Some text that describes me lorem ipsum ipsum lorem.</p>
					<p>example@example.com</p>
					<p>
						<button class="button">Contact</button>
					</p>
				</div>
			</div>
		</div>
		<div class="column">
			<div class="card">
				<img src="/w3images/team3.jpg" alt="John" style="width: 100%">
				<div class="container">
					<h2>John Doe</h2>
					<p class="title">Designer</p>
					<p>Some text that describes me lorem ipsum ipsum lorem.</p>
					<p>example@example.com</p>
					<p>
						<button class="button">Contact</button>
					</p>
				</div>
			</div>
		</div> -->
	</div>
</body>
</html>