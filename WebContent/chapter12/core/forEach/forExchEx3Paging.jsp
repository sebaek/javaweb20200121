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
<input type="number" name="begin" placeholder="시작 페이지"><br>
<input type="number" name="end" placeholder="종료 페이지"><br>
<input type="submit">
</form>

<c:forEach var="p" varStatus="status" begin="${param.begin }" end="${param.end }">
<c:if test="${status.first and p ne 1}">
<a href="#">&lt;&lt;</a>
</c:if>
<a href="#">${p }</a>
<c:if test="${status.last }">
<a href="#">&gt;&gt;</a>
</c:if> 
</c:forEach>




</body>
</html>






