<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	font-size: 30px;
}
</style>
</head>
<body>
<%
String stars = request.getParameter("stars");
out.println(stars);
%>
<pre>
<%
for (int i = 0; i < 5; i++) {
	for (int j = 0; j <= i; j++) {
		out.write("*");
	}
	out.println();
}
%>
</pre>

<pre>
<%
for (int i = 0; i < 5; i++) {
	for (int j = 0; j <= i; j++) {
		out.write("*");
	}
	out.println();
}
%>
</pre>
</body>
</html>






