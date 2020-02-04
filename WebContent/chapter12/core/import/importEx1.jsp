<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/jspf/documentHeader.jspf" %>
<title>Insert title here</title>
</head>
<body>
<h1>import 태그 활용</h1>

<c:import url="/chapter12/core/out/example1.jsp" >
	<c:param name="text" value="기본 텍스트 " />
</c:import>


<h1>import 태그 활용 종료</h1>
</body>
</html>







