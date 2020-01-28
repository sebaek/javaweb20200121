<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Object count = request.getAttribute("count");
if (count == null) {
	request.setAttribute("count", 1);
} else {
	Integer c = (Integer) count;
	c++;
	request.setAttribute("count", c);
}
%>
<%= request.getAttribute("count") %> 번 째 요청입니다.
</body>
</html>









