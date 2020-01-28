<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
Map<String, Integer> cart =
    (Map<String, Integer>) session.getAttribute("cart");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
Set<String> keys = cart.keySet();
for (String key : keys) {
	Integer count = cart.get(key);
	out.print(key + ":" + count + "개");
	out.print("<br>");
}

%>

</body>
</html>




