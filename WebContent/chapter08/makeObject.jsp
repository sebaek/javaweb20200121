<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean scope="page" id="member" class="chapter08.MemberInfo" ></jsp:useBean>

<%--
chapter08.MemberInfo member =
 (chapter08.MemberInfo) pageContext.getAttribute("member");
if (member == null) {
	member = new chapter08.MemberInfo();
	pageContext.setAttribute("member", member);
}

--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= member %><br>
<%= pageContext.getAttribute("member") %>


</body>
</html>




