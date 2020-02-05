<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="chapter09.util.*" %>
<%
Cookies cookies = new Cookies(request);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
if (cookies.exists("AUTH")) {
%>
아이디 "<%= cookies.getValue("AUTH") %>"로 로그인 한 상태
<%
} else {
%>
로그인하지 않은 상태
<%
}
%>
</body>
</html>