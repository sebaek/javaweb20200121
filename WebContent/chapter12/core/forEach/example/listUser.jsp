<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chapter12.User" %>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
Object o = application.getAttribute("userList");
if (o == null) {
	o = new ArrayList<User>();
	application.setAttribute("userList", o);
}
List<User> list = (List<User>) o;
User newUser = new User();
newUser.setName(request.getParameter("name"));
newUser.setEmail(request.getParameter("email"));
if (request.getParameter("vip") != null) {
	newUser.setVip(true);
}
list.add(newUser);

%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
table, th, td {
	border: 1px solid black;
}
table {
	width: 100%;
}
</style>
</head>
<body>
<h1>User 목록</h1>
<table>
<tr><th>이름</th><th>이메일</th><th>vip</th></tr>

<c:forEach var="user" items="${userList}" >

<tr>

<td>${user.name }</td>
<td>${user.email }</td>
<td>${user.vip }</td>

</tr>

</c:forEach>


</table>

</table>
</body>
</html>








