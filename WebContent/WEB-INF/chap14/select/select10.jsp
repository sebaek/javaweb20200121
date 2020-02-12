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
<h1>입사날짜로 직원 조회</h1>
<form>
<input type="date" name="hireDate" value="1981-01-01"><br>
<input type="submit">
</form>
<div>
eno: ${emp.eno }<br>
eno: ${emp.ename }<br>
eno: ${emp.hireDate }<br>
</div>

</body>
</html>









