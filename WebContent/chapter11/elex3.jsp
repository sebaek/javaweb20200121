<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chapter08.MemberInfo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
MemberInfo member = new MemberInfo();
member.setName("홍길동");
member.setId("hong");

request.setAttribute("member3", member);
%>
${member3.name }<br>
${member3.id }<br>
</body>
</html>













