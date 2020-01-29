<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jspf/navbar.jsp" var="navbar">
	<c:param name="user" value="hong"></c:param>
</c:import>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%= pageContext.getAttribute("navbar") %>

<h1>
메인 콘텐츠
</h1>
<p>
메인 콘텐츠 어쩌구 저쩌구~~~~
</p>

<%= pageContext.getAttribute("navbar") %>

</body>
</html>