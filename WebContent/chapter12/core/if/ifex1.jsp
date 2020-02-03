<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
<script>
$(function() {
	$("h1").click(function() {
		$("p").slideToggle();
	});
});
</script>

</head>
<body>
<h1>제목</h1>
<p>alk flkadjf lakdjf lkajd flka fdlajf lakjdlfaflak flakjj f</p>

<c:if test="${not empty member}">
	${member.name }님 반갑습니다.
</c:if>
<c:if test="${empty member }">
	guest님 반갑습니다.
</c:if>


</body>
</html>



