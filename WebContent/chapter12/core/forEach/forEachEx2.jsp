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
<%-- LoopTagStatus  책 304쪽에 적어주세요.. --%>
<c:forEach var="i" begin="1" end="5" step="2" varStatus="status">
${status.index }, ${status.count }<br>
</c:forEach>






</body>
</html>