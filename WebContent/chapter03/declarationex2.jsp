<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%!
private int getRandom() {
	Random random = new Random();
	return random.nextInt(45) + 1;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Set<Integer> set = new HashSet<>();
while (set.size() < 6) {
	set.add(getRandom());
}
%>

<%
for (Integer i : set) {
%>
<%= i %><br>
<%
}
%>


</body>
</html>









