<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>게시물 작성</title>
</head>
<body>
<h1>게시물 작성</h1>
<form method="post">
<input type="text" name="title" placeholder="제목"><br>
<textarea rows="20" cols="50" name="body"></textarea>
<input type="submit" value="등록">
</form>


</body>
</html>






