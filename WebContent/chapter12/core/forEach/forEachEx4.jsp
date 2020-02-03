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
List<String> list = new ArrayList<>();
list.add("milk");
list.add("water");
list.add("banana");
list.add("apple");
list.add("samsung");
request.setAttribute("list", list);
%>
<c:forEach items="${list }" var="item">
	${item }<br>
</c:forEach>

</body>
</html>











