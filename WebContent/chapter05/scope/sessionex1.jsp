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
Object o = session.getAttribute("count");
if (o == null) {
	session.setAttribute("count", 1);
} else {
	Integer c = (Integer) o;
	c++;
	session.setAttribute("count", c);
}
%>
같은 브라우저에서 <%=session.getAttribute("count") %> 번 째 요청.
</body>
</html>













