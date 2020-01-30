<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forward ex 3</title>
</head>
<body>

<ul>
<c:forEach var="item" items="${items }">
<li>${item }</li>
</c:forEach>
</ul>


<ul>
<%--
List<String> items = (List<String>) request.getAttribute("items");
for (String item : items) {
	out.print("<li>");
	out.print(item);
	out.print("</li>");
}
--%>
</ul>


</body>
</html>










