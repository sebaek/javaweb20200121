<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>pageex1.jsp</h1>
<%
pageContext.setAttribute("attr1", "value1");
%>
<%= pageContext.getAttribute("attr1")%>
<jsp:forward page="pageex2.jsp"></jsp:forward>

</body>
</html>