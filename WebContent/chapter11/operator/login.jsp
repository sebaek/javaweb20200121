<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
if (id != null && id.equals("seoul")) {
	session.setAttribute("user", "seoul");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="" method="post" >
<input type="text" name="id" placeholder="아이디"><br>
<input type="submit" value="로그인">
</form>
<c:if test="${not empty sessionScope.user }" >
<a href="#">회원 정보</a>
</c:if>
<c:if test="${empty sessionScope.user }" >
<a href="#">회원 가입</a>
</c:if>


</body>
</html>