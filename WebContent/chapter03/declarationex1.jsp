<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Declaration</title>
</head>
<body>
<%!
private int myField = 99;
private String myField2 = "새 필드";
%>

<%!
private String myField3 = "또 다른 새 필드";
%>

<%= this.myField %><br>
<%= myField2 %><br>
<%= this.myField3 %><br>


</body>
</html>








