<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${pageContext.request.contextPath }<br>
<%-- ?name=hong --%>
${pageContext.request.parameterMap.name[0] }<br>

</body>
</html>