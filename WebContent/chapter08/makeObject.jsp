<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    


<jsp:useBean scope="request" id="member" class="chapter08.MemberInfo" ></jsp:useBean>
<%--
chapter08.MemberInfo member =
 (chapter08.MemberInfo) request.getAttribute("member");
if (member == null) {
	member = new chapter08.MemberInfo();
	request.setAttribute("member", member);
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
<%= request.getAttribute("member") %>
<%
member.setId("madvirus");
member.setName("최범균");
%>

<jsp:forward page="useObject.jsp"></jsp:forward>



</body>
</html>




