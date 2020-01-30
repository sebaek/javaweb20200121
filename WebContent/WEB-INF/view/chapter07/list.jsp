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

<h3>멤버 목록</h3>
<ul>
<%
List<String> members = (List<String>) request.getAttribute("members");
for (String member : members) {
	out.print("<li>");
	out.print(member);
	out.print("</li>");
}
%>
</ul>

</body>
</html>





