<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>requestex1.jsp</h1>
<%
request.setAttribute("attr1", "value1");
%>
<jsp:forward page="requestex2.jsp"></jsp:forward>
</body>
</html>