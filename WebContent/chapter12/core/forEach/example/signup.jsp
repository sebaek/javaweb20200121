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
<h1>회원 가입</h1>
<form action="listUser.jsp" method="post">
<input name="name" placeholder="이름"><br>
<input name="email" placeholder="email"><br>
<label>vip<input type="checkbox" name="vip" value="vip"></label><br>
<input type="submit" value="가입">
</form>
</body>
</html>











