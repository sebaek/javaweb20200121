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
<h1>메인 화면</h1>

<c:if test="${not empty user }" >
<h3>${user.id }님 환영합니다.</h3>
</c:if>
<c:if test="${empty user }" >
<c:url value="/chapter14/signup" var="signupUrl" />
<h3><a href="${signupUrl }">회원가입</a></h3>
</c:if>


</body>
</html>






