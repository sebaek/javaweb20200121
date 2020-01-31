<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="mem" class="chapter08.MemberInfo" scope="request">
	<jsp:setProperty name="mem" property="*" />
</jsp:useBean>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이름 : ${mem["name"] }<br>
아이디 : ${mem["id"] }<br>
이메일 : ${mem.email }<br>



</body>

</html>