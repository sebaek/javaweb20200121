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
<form action="" method="post">
<input type="text" name="grade"><br>
<input type="submit">
</form>

<c:choose>
<c:when test="${param.grade eq 'vip'}">
<a href="#">vip 쿠폰 받기</a>
</c:when>
<c:when test="${param.grade eq 'family' }">
<a href="#">family 쿠폰 받기</a>
</c:when>
<c:otherwise>
<a href="#">가입하기</a>
</c:otherwise>
</c:choose>


</body>
</html>











