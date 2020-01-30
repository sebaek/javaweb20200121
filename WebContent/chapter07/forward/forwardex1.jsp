<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setAttribute("name", "seoul");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward example 1</title>
</head>
<body>
<h1>forward example 1 file</h1>
<jsp:forward page="forwardex2.jsp"></jsp:forward>
<h1>forward example 1 file end</h1>
</body>
</html>