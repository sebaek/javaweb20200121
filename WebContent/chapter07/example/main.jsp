<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags/chap07" prefix="my" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<my:navbar userName='<%= request.getParameter("id") %>'></my:navbar>

<h1>메인 컨텐츠</h1>


</body>
</html>