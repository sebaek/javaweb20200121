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
<h1>부서별 연봉 합계</h1>
<form>
	<select name="dno" >
		<option value="10">ACCOUNTING</option>
		<option value="20">RESEARCH</option>
		<option value="30">SALES</option>
		<option value="40">OPERATIONS</option>
	</select>
	<input type="submit" value="검색">
</form>

<div>
부서번호 : ${info.dno }<br>
부서명 : ${info.dname }<br>
연봉합계 : ${info.sum }<br>
</div>

</body>
</html>









