<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="" method="post">
<input name="member"><br>
<input type="submit" value="login">
</form>

${not empty param.member ? param.member : "guest" }님
반갑습니다.
</body>
</html>






