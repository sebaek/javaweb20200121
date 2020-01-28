<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>초기화 파라미터 읽어오기</title>
</head>
<body>
<%
String value1 = application.getInitParameter("logEnabled");
String value2 = application.getInitParameter("debugLevel");
%>
<%=value1 %><br>
<%=value2 %><br>

<hr>
초기화 파라미터 목록:
<ul>
<% 
Enumeration<String> initParamEnum = application.getInitParameterNames();
while (initParamEnum.hasMoreElements()) {
	String initParamName = initParamEnum.nextElement();
	out.print("<li>");
	out.print(initParamName + "=" + application.getInitParameter(initParamName));
	out.print("</li>");
}
%>
</ul>

</body>
</html>