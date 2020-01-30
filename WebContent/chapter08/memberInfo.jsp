<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>   

<jsp:useBean id="member" class="chapter08.MemberInfo">
	<jsp:setProperty name="member" property="*" />
<%--
	<jsp:setProperty name="member" property="name" param="userName" />
	<jsp:setProperty name="member" property="id" param="userID" />
 --%>
</jsp:useBean>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
<%= request.getParameter("name") %><br>
<%= request.getParameter("id") %>
 --%>
<jsp:getProperty property="name" name="member"/><br>
<jsp:getProperty property="id" name="member"/><br>

</body>
</html>





