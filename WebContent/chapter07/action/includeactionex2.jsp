<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/jspf/navbar.jsp">
	<jsp:param value="hong" name="user"/>
</jsp:include>

<div>
<h1>두번째 콘텐츠</h1>
<p>두번째 콘텐츠 어쩌구 저쩌구~~~</p>

</div>


</body>
</html>