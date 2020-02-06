<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/chap16" prefix="my" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>게시물 작성</title>
</head>
<body>
<my:boardNav />
<h1>게시물 작성</h1>
<form method="post">
<input type="text" name="title" placeholder="제목"><br>
<textarea rows="5" cols="25" name="body"></textarea><br>
<input type="submit" value="등록">
</form>


</body>
</html>






