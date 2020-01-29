<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
request.setAttribute("nickName", "홍길동");
String a = "새로운 값";
%>

<jsp:include page="/WEB-INF/jspf/navbar.jsp">
	<jsp:param value="hong" name="user"/>
</jsp:include>

<div>
<h1>메인 콘텐츠</h1>
<p>메인 콘텐츠 어쩌구 저쩌구~~~</p>

</div>


</body>
</html>



