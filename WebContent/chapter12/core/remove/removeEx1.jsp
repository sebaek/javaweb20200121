<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<c:set var="attr1" value="pageValue1" />
<c:set var="attr1" value="requestValue1" scope="request"/>
<c:set var="attr1" value="sessionValue1" scope="session"/>
<c:set var="attr1" value="applicationValue1" scope="application"/>
${pageScope.attr1 }<br>
${requestScope.attr1 }<br>
${sessionScope.attr1 }<br>
${applicationScope.attr1 }<br>

<hr>

<c:remove var="attr1" scope="session" />
${pageScope.attr1 }<br>
${requestScope.attr1 }<br>
${sessionScope.attr1 }<br>
${applicationScope.attr1 }<br>

<hr>

<c:remove var="attr1"/>
${pageScope.attr1 }<br>
${requestScope.attr1 }<br>
${sessionScope.attr1 }<br>
${applicationScope.attr1 }<br>
</body>
</html>











