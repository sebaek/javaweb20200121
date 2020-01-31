<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
pageScope
requestScope
sessionScope
applicationScope
 --%>
<%
pageContext.setAttribute("pageAttr1", 3.14);
pageContext.setAttribute("attr1", "value1");

request.setAttribute("requestAttr1", "requestValue1");
request.setAttribute("attr1", "value2");

session.setAttribute("sessionAttr1", "sessionValue1");
session.setAttribute("attr1", "value3");

application.setAttribute("applicationAttr1", "applicationValue1");
application.setAttribute("attr1", "value4");
%> 
${pageScope.pageAttr1 }<br>
${requestScope.requestAttr1 }<br>
${sessionScope["sessionAttr1"] }<br>
${applicationScope["applicationAttr1"] }<br>
<br>
${pageScope.attr1 }<br>
${requestScope.attr1 }<br>
${sessionScope.attr1 }<br>
${applicationScope.attr1 }<br>
</body>
</html>





