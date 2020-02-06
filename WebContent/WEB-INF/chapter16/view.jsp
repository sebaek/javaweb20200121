<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>게시물 보기</title>
</head>
<body>
<h1>게시물 보기</h1>

<h3>[${post.id}] <c:out value="${post.title }" /></h3>
<textarea rows="5" cols="25" readonly>
<c:out value="${post.body }" />
</textarea>

</body>
</html>









