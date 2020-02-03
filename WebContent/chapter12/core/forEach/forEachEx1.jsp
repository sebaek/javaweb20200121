<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<h1>forEach Core Tag</h1>

<c:forEach var="i" begin="1" end="5" step="2">
	${i }<br>
</c:forEach>
<hr>
<c:forEach var="i" begin="2" end="4">
	<c:forEach var="j" begin="1" end="9">
		${i } X ${j } = ${i * j }<br>
	</c:forEach>
	<hr>
</c:forEach>




</body>
</html>











