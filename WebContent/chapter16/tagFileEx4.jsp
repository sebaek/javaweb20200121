<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/chap16" prefix="my" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<my:navbar menu1="#" menu2="#" menu3="#" menu4="#" />

<my:navbar2 서브메뉴="#0" 메뉴1="#1" 메뉴2="#2" 메뉴3="#3" 메뉴4="#4" />

<my:select name="fruits" berry="딸기" banana="바나나" apple="사과"/>

<my:select name="books" book1="jsp" book2="자바" book3="html"/>
</body>
</html>













