<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.net.*" %>
<%
Cookie cookie = new Cookie("name", URLEncoder.encode("최범균", "utf-8"));
response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<%= cookie.getName() %>쿠키의 값 = "<%= cookie.getValue() %>"
<hr>
${cookie.name.name }<br>
${cookie.name.value }<br>
<hr>
${cookie.JSESSIONID.name }<br>
${cookie.JSESSIONID.value }<br>
</body>
</html>





