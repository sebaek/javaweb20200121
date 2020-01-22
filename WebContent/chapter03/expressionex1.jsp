<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expression</title>
</head>
<body>
<%= "hello" %>
<%= request.getParameter("name") %>
<br>
<%
for (int i = 0; i < 5; i++) {
	for (int j = 0; j <= i; j++) {
%>
	<%= "*" %>	
<%
	}
%>
	<br>	
<%
}
%>

</body>
</html>







