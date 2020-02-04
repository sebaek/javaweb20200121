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
<c:set var="attr1" value="value1" scope="page"/>
${attr1 }<br>
<c:set var="attr1" value="${attr2 }" scope="page"/>
${attr1 }<br>
<c:set var="attr1">
	우유와 함께 즐기는 달콤한 흑당 라떼
</c:set>
${attr1 }<br>

</body>
</html>






