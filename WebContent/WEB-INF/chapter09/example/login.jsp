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
<h1>로그인 </h1>
<form action="" method="post">
<input name="id" placeholder="아이디"><br>
<input name="password" placeholder="패스워드"><br>
<input type="submit" value="로그인">
</form>

<p><b>${error }</b></p>


</body>
</html>






