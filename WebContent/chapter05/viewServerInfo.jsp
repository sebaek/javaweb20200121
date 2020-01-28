<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
서버정보: <%= application.getServerInfo() %> <br>
서버규약메이저 버전: <%= application.getMajorVersion() %><br>
서버규약마이너 버전: <%= application.getMinorVersion() %><br>
</body>
</html>