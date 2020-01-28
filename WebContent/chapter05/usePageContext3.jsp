<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
페이지 영역에 attribute(속성) 추가
<%
pageContext.setAttribute("게시물1", "게시물1의 내용");
%>
<hr>
페이지 영역에서 attribute(속성) 얻기
<%
String str = (String) pageContext.getAttribute("게시물1");
%>
</body>
</html>









