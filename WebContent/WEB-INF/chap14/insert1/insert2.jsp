<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
table, tr, td, th {
	border: 1px solid black;
}
table {
	width: 100%;
}
</style>
</head>
<body>
	<h1>직원 추가</h1>
	<div>
		<form method="post">
		<input name="eno" type="number" placeholder="사번"><br>
		<input name="ename" placeholder="이름"><br>
		<input name="job" placeholder="업무"><br>
		<input name="hireDate" type="date"><br>
		<input type="submit">
		</form>
	</div>
	<h1>직원 목록</h1>
	<div>
		<table>
			<tr>
				<th>사번</th>
				<th>이름</th>
				<th>업무</th>
				<th>입사일</th>
			</tr>
			<c:forEach items="${employees }" var="emp">
				<tr>
					<td>${emp.eno }</td>
					<td>${emp.ename }</td>
					<td>${emp.job }</td>
					<td>${emp.hireDate }</td>
				</tr>
			</c:forEach>

		</table>
	</div>

</body>
</html>