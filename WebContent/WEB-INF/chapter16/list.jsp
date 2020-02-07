<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/chap16" prefix="my" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>게시판 목록 보기</title>
</head>
<body>
<my:boardNav />
<h1>게시판 목록 보기</h1>
<table>
<tr><th>번호</th><th>제목</th></tr>
<c:forEach var="post" items="${board }">

	<c:if test="${not post.deleted }">
		<tr>
		<td>${post.id }</td>
		<td><a href="view?id=${post.id }"><c:out value="${post.title }" /></a></td>
		</tr>
	</c:if>

</c:forEach>

</table>

<my:message />


</body>
</html>















