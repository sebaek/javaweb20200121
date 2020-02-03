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
<input type="text" name="hero"><br>
<input type="submit">
</form>

<c:choose>

<c:when test="${param.hero eq 'ironman' }">
<img src="../if/ironman.jpg">
</c:when>
<c:when test="${param.hero eq 'black' }">
<img src="../if/black.jpg">
</c:when>
<c:otherwise>
<img src="../if/default.jpg">
</c:otherwise>

</c:choose>

</body>
</html>