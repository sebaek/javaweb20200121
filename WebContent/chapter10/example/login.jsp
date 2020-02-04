<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
request.setCharacterEncoding("utf-8");

String logout = request.getParameter("logout");
if (logout != null && logout.equals("logout")) {
	//session.removeAttribute("user");
	session.invalidate();
}

String id = "seoul";
String pw = "korea";

String paramId = request.getParameter("id");
String paramPw = request.getParameter("pw");

if (paramId != null && paramPw != null) {
	if (id.equals(paramId) && pw.equals(paramPw)) {
		session.setAttribute("user", "seoul");
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<c:if test="${not empty user }" >
반갑습니다. ${user }님.<br>

<c:url value="login.jsp" var="logoutUrl">
	<c:param name="logout" value="logout" />
</c:url>
<a href="${logoutUrl}">logout</a>

</c:if>
<c:if test="${empty user }">
<form action="" method="post">
<input name="id" placeholder="아이디"><br>
<input name="pw" placeholder="패스워드" type="password"><br>
<input type="submit" value="로그인">
</form>
</c:if>
</body>
</html>












