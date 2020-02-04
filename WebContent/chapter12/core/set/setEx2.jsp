<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chapter12.User" %>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
User user = new User();
pageContext.setAttribute("user", user);

%>

<c:set target="${user }" property="name" value="hong"/>
<c:set target="${user }" property="email" >
lajdf @jkld aflajf.comlaf;eajf;
</c:set>
<c:set target="${user }" property="vip" value="true" />

${user.name }<br>
${user.email }<br>
${user.vip }<br>

<hr>

<%
Map<String, String> map = new HashMap<>();
pageContext.setAttribute("map", map);
%>
<c:set target="${map }" property="key1" value="value1" />
<c:set target="${map }" property="2key" value="value2" />
${map.key1 }<br>
${map["2key"] }<br>


</body>
</html>
















