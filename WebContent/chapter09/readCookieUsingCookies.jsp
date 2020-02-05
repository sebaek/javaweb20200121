<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chapter09.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
name 쿠키 = <%= cookies.getValue("name") %><br>
<% if (cookies.exists("id")) { %>
id 쿠키 = <%= cookies.getValue("id") %><br>
<% } %>

<hr>

name 쿠키 = ${cookie.name.value }<br>
<c:if test="${not empty cookie.id }" >
id 쿠키 = ${cookie.id.value }<br>
</c:if>

</body>
</html>





