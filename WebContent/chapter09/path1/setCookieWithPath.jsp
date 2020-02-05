<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String root = request.getContextPath();
String path1 = root + "/chapter09/path1";
String path3 = "/";
String path4 = root + "/chapter09/path2";

Cookie cookie1 = new Cookie("path1", "경로:" + path1);
cookie1.setPath(path1);
response.addCookie(cookie1);

Cookie cookie2 = new Cookie("path2", "경로:");
response.addCookie(cookie2);

Cookie cookie3 = new Cookie("path3", "경로:" + path3);
cookie3.setPath(path3);
response.addCookie(cookie3);

Cookie cookie4 = new Cookie("path4", "경로:" + path4);
cookie4.setPath(path4);
response.addCookie(cookie4);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<h4>다음과 같이 쿠키를 생성했습니다.</h4>
<%= cookie1.getName() %>=<%=cookie1.getValue() %>
[<%= cookie1.getPath() %>]
<br>
<%= cookie2.getName() %>=<%=cookie2.getValue() %>
[<%= cookie2.getPath() %>]
<br>
<%= cookie3.getName() %>=<%=cookie3.getValue() %>
[<%= cookie3.getPath() %>]
<br>
<%= cookie4.getName() %>=<%=cookie4.getValue() %>
[<%= cookie4.getPath() %>]
<br>
</body>
</html>





