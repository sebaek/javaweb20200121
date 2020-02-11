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
<h1>연봉으로 직원 검색</h1>
<form>
<input name="minSalary" placeholder="최소연봉"><br>
<input name="maxSalary" placeholder="최대연봉"><br>
<input type="submit" value="검색">
</form>
<table>
		<tr>
			<th>eno</th>
			<th>ename</th>
			<th>job</th>
			<th>manager</th>
			<th>hireDate</th>
			<th>salary</th>
			<th>commission</th>
			<th>dno</th>

		</tr>
		<c:forEach items="${emps }" var="emp">
			<tr>
				<td>${emp.eno }</td>
				<td>${emp.ename }</td>
				<td>${emp.job }</td>
				<td>${emp.manager }</td>
				<td>${emp.hireDate }</td>
				<td>${emp.salary }</td>
				<td>${emp.commission }</td>
				<td>${emp.dno }</td>
				
			
			</tr>
		</c:forEach>
	</table>
</body>
</html>













