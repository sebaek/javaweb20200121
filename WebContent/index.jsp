<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap, java.util.Map" %>
<%@ page import="java.util.List" %>

<% List<String> list = new ArrayList<>(); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>첫번째 만든 jsp 파일</h1>
<%
	out.println("hello");
%>
<br>
<%= "hi" %>
<br>
<%= new java.util.Date() %>

<%! int i = 99; %>
<br>
<%= i %>

</body>
</html>











