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
<h1>부서 사람들 출력하기</h1>
<form action="">
<label><input type="checkbox" value="10" name="dno">ACCOUNTING</label><br>
<label><input type="checkbox" value="20" name="dno">RESEARCH</label><br>
<label><input type="checkbox" value="30" name="dno">SALES</label><br>
<label><input type="checkbox" value="40" name="dno">OPERATIONS</label><br>
<input type="submit" value="검색">
</form>
<table>
<tr>
<th>사번</th>
<th>이름</th>
<th>부서명</th>
</tr>
<c:forEach items="${emps }" var="emp">
	<tr>
		<td>${emp.eno }</td>
		<td>${emp.ename }</td>
		<td>${emp.dname }</td>
	</tr>
</c:forEach>

</table>
</body>
</html>














