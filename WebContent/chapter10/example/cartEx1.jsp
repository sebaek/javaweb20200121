<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
request.setCharacterEncoding("utf-8");
String n = request.getParameter("item");

Object o = session.getAttribute("items");
if (o == null) {
	o = new ArrayList<String>();
	session.setAttribute("items", o);
}
List<String> cart = (List<String>) o;
cart.add(n);
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
<input name="item" placeholder="아이템 입력"><br>
<input type="submit" value="카트 담기">
</form>

<ul>
<c:forEach var="item" items="${items }">
<li>${item }</li>
</c:forEach>
</ul>



</body>
</html>






