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
	<select name="dno" >
		<option value="10">ACCOUNTING</option>
		<option value="20">RESEARCH</option>
		<option value="30">SALES</option>
		<option value="40">OPERATIONS</option>
	</select>
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














