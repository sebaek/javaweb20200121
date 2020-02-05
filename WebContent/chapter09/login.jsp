<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="chapter09.util.*" %>
<%
String id = request.getParameter("id");
String password = request.getParameter("password");

if (id.equals(password)) {
	response.addCookie(Cookies.createCookie("AUTH", id, "/", -1));
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
로그인에 성공했습니다.
</body>
</html>
<%
} else {
%>
<script>
	alert("로그인에 실패하였습니다.");
	history.go(-1);
</script>
<%
}
%>
