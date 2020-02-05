<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<h1>쿠키 목록</h1>
<%
Cookie[] cookies = request.getCookies();
if (cookies !=  null && cookies.length > 0) {
	for (int i = 0; i < cookies.length; i++) {
		out.print(cookies[i].getName());
		out.print("=");
		out.print(URLDecoder.decode(cookies[i].getValue(),"utf-8"));
		out.print("<br>");
	}
} else {
	out.print("쿠키가 존재하지 않습니다.");
}
%>
<hr>
<%
cookies = request.getCookies();
if (cookies !=  null && cookies.length > 0) {
	for (int i = 0; i < cookies.length; i++) {
		if (cookies[i].getName().equals("name")) {
			out.print(cookies[i].getName());
			out.print("=");
			out.print(URLDecoder.decode(cookies[i].getValue(),"utf-8"));
			out.print("<br>");
		}
	}
} else {
	out.print("쿠키가 존재하지 않습니다.");
}
%>


</body>
</html>










