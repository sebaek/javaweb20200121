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
</head>
<body>
	<h1>관리자로 직원 조회하기</h1>
	<form>
		<select name="managerNo">
			<c:forEach items="${managers }" var="manager">
				<option value="${manager.eno }">${manager.ename }</option>
			</c:forEach>
		</select> <br> <input type="submit" value="검색">
	</form>
	<div>
		<table>
			<tr>
				<th>매니저</th>
				<th>사번</th>
				<th>이름</th>
				<th>업무</th>
				<th>부서명</th>
			</tr>
			<c:forEach items="${emps }" var="emp">
			<tr>
				<td>${emp.managerName }</td>
				<td>${emp.eno }</td>
				<td>${emp.ename }</td>
				<td>${emp.job }</td>
				<td>${emp.dname }</td>
			</tr>
			
			</c:forEach>


		</table>

	</div>

</body>
</html>
















