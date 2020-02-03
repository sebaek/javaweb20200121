<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
Map<String, String> map = new HashMap<>();
map.put("apple", "iphone");
map.put("samsung", "galaxy");
map.put("nokia", "windows");
request.setAttribute("phones", map);
%>
<c:forEach items="${phones }" var="phone">
${phone.key }, ${phone.value }<br>
</c:forEach>
</body>
</html>








