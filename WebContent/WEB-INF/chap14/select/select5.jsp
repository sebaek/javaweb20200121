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
<h1>직원 검색</h1>
<form>
<input name="name" placeholder="이름을 입력해주세요"><br>
<input type="submit" value="검색">
</form>
<c:if test="${not empty employee }" >
<ul>
<li>eno: ${employee.eno }</li>
<li>ename: ${employee.ename }</li>
<li>job: ${employee.job }</li>
<li>manager: ${employee.manager }</li>
<li>hireDate: ${employee.hireDate }</li>
<li>salary: ${employee.salary }</li>
<li>commission: ${employee.commission }</li>
<li>dno: ${employee.dno }</li>
</ul>
</c:if>
<h3>${message }</h3>
</body>
</html>






