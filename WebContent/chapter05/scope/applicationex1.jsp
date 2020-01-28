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
Object o = application.getAttribute("count");
if (o == null) {
	application.setAttribute("count", 1);
} else {
	Integer c = (Integer) o;
	c++;
	application.setAttribute("count", c);
	
}
%>
이 앱으로 온 <%= application.getAttribute("count") %>번 째 요청

</body>
</html>









