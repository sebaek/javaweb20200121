<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.net.*" %>
<%
Cookie[] cookies = request.getCookies();
if (cookies != null && cookies.length > 0) {
	for (Cookie cookie : cookies) {
		if (cookie.getName().equals("name")) {
			Cookie newCookie = new Cookie("name", "jsp프로그래밍");
			response.addCookie(newCookie);
		}
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<h1>쿠키의 값을 변경합니다.</h1>
</body>
</html>
