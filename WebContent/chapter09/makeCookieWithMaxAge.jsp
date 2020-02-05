<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
Cookie cookie = new Cookie("oneh", "1time");
cookie.setMaxAge(60 * 60);
response.addCookie(cookie);

Cookie[] cookies = request.getCookies();
for (Cookie c : cookies) {
	if (c.getName().equals("JSESSIONID")) {
		c.setMaxAge(24 * 60 * 60);	
		c.setPath(request.getContextPath());
		response.addCookie(c);
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
<h1>유효시간이 1시간인 oneh 쿠키 생성</h1>


</body>
</html>