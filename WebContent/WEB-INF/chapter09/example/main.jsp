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
<h1>메인 페이지</h1>

<c:if test='${empty user }'>
<a href='<c:url value="/chapter09/example/login" />'>
로그인
</a>
</c:if>

<c:if test='${not empty user }'>
<a href='<c:url value="/chapter09/example/logout" />'>
로그아웃
</a>
</c:if>

</body>
</html>










