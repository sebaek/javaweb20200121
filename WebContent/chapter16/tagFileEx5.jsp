<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/chap16" prefix="my" %>
<%@ page import="chapter11.User" %>
<%@ page import="java.util.*" %>

<jsp:useBean id="user" class="chapter11.User">
	<jsp:setProperty name="user" property="*" />
</jsp:useBean>
<%
Object o = session.getAttribute("users");
if (o == null) {
	o = new ArrayList<User>();
	session.setAttribute("users", o);
}
List<User> list = (List<User>) o;
list.add(user);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<form action="" method="post">
<input name="name" placeholer="이름"><br>
<input name="email" placeholer="이메일"><br>
<input type="submit" value="등록">
</form>

<my:userList />


</body>
</html>










