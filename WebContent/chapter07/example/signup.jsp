<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="<%= request.getContextPath() %>/list" >
<input type="text" name="userName" placeholder="이름을 입력해주세요">
<input type="submit" value="회원가입">
</form>
</body>
</html>