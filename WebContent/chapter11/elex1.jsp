<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setAttribute("attr1", "value1");
%>
<jsp:useBean id="member" class="chapter08.MemberInfo" scope="request">
	<jsp:setProperty name="member" property="name" value="${attr1 }" />
</jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:getProperty name="member" property="name" />
<br>
<%= ((chapter08.MemberInfo) request.getAttribute("member")).getName() %>
<br>
${member.name }
<br>
<%= request.getAttribute("attr1") %><br>
${attr1 }
</body>
</html>





