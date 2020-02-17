<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
	<h1>부서 추가</h1>
	<div>
		<form method="post">
		<input name="dno" type="number" placeholder="부서번호"><br>
		<input name="dname" placeholder="부서명"><br>
		<input name="loc" placeholder="위치"><br>
		<input type="submit">
		</form>
	</div>
	<h1>부서 목록</h1>
	<div>
		<table>
			<tr>
				<th>부서번호</th>
				<th>부서명</th>
				<th>위치</th>
			</tr>
			<c:forEach items="${departments }" var="dept">
				<tr>
					<td>${dept.dno }</td>
					<td>${dept.dname }</td>
					<td>${dept.loc }</td>
				</tr>
			</c:forEach>

		</table>
	</div>

</body>
</html>








