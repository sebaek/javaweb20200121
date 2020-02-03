<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
pageContext.setAttribute("arry1", new int[]{});
pageContext.setAttribute("map1", new HashMap());
pageContext.setAttribute("list1", new ArrayList());
%>

${empty "" }<br>
${empty attr1 }<br>
${empty arry1 }<br>
${empty map1 }<br>
${empty list1 }<br>
<hr>
${not empty "" }<br>
${not empty attr1 }<br>
${not empty arry1 }<br>
${not empty map1 }<br>
${not empty list1 }<br>


</body>
</html>