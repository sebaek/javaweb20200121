<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원 가입</h1>
<form action="${pageContext.request.contextPath }/chapter11/SignUpServlet" method="post">
<input name="name" placeholder="이름" ><br>
<input name="email" placeholder="E-Mail"><br>
<input type="submit" value="등록">
</form>
</body>
</html>



