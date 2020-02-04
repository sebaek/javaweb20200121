<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<h1>글 등록</h1>
<form action="" method="post">
<textarea rows="10" cols="100" name="text">
</textarea>
<input type="submit">
</form>
<hr>
<h1>작성된 글</h1>

<pre>
${param.text }
</pre>

</body>
</html>














