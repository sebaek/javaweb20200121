<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
    
<%-- jsp 주석 --%>
<!-- html 주석 -->

<%-- script 요소 --%>
<%-- 스크립트릿(scriptlet) --%>
<%-- 표현식(expression) --%>
<%-- 선언부(declaration) --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트릿 scriptlet</title>
</head>
<body>
<h1>스크립트릿 scriptlet</h1>
<%
List<String> list = new ArrayList<>();
list.add("스니커즈");
list.add("자유시간");
list.add("킨더초콜릿");

out.println("<ul>");

for (String item : list) {
	out.println("<li>" + item + "</li>");
}

out.println("</ul>");
%>

<p>페이지 끝</p>
</body>
</html>














