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
	${hello }
	<form action="${pageContext.request.contextPath }/direction">
		<!-- <input type="submit" value="회원보기" /> -->
		<!-- <input type="submit" value="Google Map" /> -->
		<input type="submit" value="Direction" />
	</form>	
	
</body>
</html>