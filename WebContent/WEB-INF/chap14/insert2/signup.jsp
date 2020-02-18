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
<div>
<form method="post">
<input name="id" placeholder="아이디" required><br>
<input name="pw" placeholder="패스워드" type="password" required><br>
<input type="submit" value="회원가입">
</form>
</div>
<div>
<h3>${message }</h3>
</div>

</body>
</html>








