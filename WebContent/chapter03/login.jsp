<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String id = request.getParameter("memberid");
	if (id != null && id.equals("madvirus")) {
		response.sendRedirect("/my/chapter03/index.jsp");
	} else {
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
잘못된 아이디 입니다.

<%
out.println("hi");

%>


</body>
</html>


<%
	}//주석
%>