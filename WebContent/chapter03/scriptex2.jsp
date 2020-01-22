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
String hashs = request.getParameter("hashs");
 
out.println(stars);
out.println(hashs);

if (stars == null) {
	stars = "5";
}

if (hashs == null) {
	hashs = "5";
}
%>
<pre>
<%
int starNum = Integer.parseInt(stars);
for (int i = 0; i < starNum; i++) {
	for (int j = 0; j <= i; j++) {
		out.write("*");
	}
	out.println();
}
%>
</pre>

<pre>
<%
int hashNum = Integer.parseInt(hashs);
for (int i = 0; i < hashNum; i++) {
	for (int j = 0; j <= i; j++) {
		out.write("#");
	}
	out.println();
}
%>
</pre>
</body>
</html>






