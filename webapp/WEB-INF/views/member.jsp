<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>member Test</h1>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>나이</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${list }" var="i">
				<tr>
					<td>${i.idx }</td>
					<td>${i.name }</td>
					<td>${i.age }</td>
				</tr>
			</c:forEach>	
		</tbody>
	</table>
	
</body>
</html>