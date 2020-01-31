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
pageContext

pageScope
requestScope
sessionScope
applicationScope

param
paramValues
header
headerValues
cookie
initParam
 --%>
<%
pageContext.setAttribute("pageAttr1", 3.14);

request.setAttribute("requestAttr1", "requestValue1");

session.setAttribute("sessionAttr1", "sessionValue1");
session.setAttribute("attr1", "value3");

application.setAttribute("applicationAttr1", "applicationValue1");
application.setAttribute("attr1", "value4");
%> 
${pageAttr1 }<br>
${requestAttr1 }<br>
${sessionAttr1 }<br>
${applicationAttr1 }<br>
${attr1 }<br>




</body>
</html>










