<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<a href="${pageContext.request.contextPath }/chapter12/core/out/example1.jsp">example1.jsp</a>
<br>
<a href="<%=request.getContextPath() %>/chapter12/core/out/example1.jsp">example1.jsp</a>
<br>
<a href="<c:url value='/chapter12/core/out/example1.jsp' />">example1.jsp</a>

<hr>
<c:url value='/chapter12/core/out/example1.jsp' var="exampleUrl"/>
${exampleUrl }<br>
<a href="${exampleUrl }" >example1.jsp</a>
<hr>
<c:url value='/chapter12/core/out/example1.jsp' var="exampleUrl">
	<c:param name="text" value="기본 텍스트" />
</c:url>
<a href="${exampleUrl }" >example1.jsp</a>


</body>
</html>









