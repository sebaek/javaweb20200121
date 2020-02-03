<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>정보 수정</h1>
<form action="${pageContext.request.contextPath }/chapter11/ModifyServlet" method="post">
<input name="name" value="${user.name }"><br>
<input name="email" value="${user.email }"><br>
<input type="submit" value="수정">
</form>

<h1>수정 전 정보</h1>
이름 : ${beforeuser.name }<br>
email : ${beforeuser.email }<br>
</body>
</html>







