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
List<String> list = new ArrayList<>();
list.add("일");
list.add("이");
list.add("삼");
request.setAttribute("num", list);
%>
${num[0] }<br>
${num[1] }<br>
${num["2"] }<br>
${num[3] }<br>
${num2 }<br>

</body>
</html>





