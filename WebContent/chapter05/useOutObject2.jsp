<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String gradeStr = request.getParameter("grade") == null ? "6"
		                : request.getParameter("grade");
int grade = Integer.parseInt(gradeStr);
String gradeStringA = "A학점 입니다.";
String gradeStringB = "B학점 입니다.";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% if (grade > 10) { %>
<%= gradeStringA %>
<% } else if (grade > 5) { %>
<%= gradeStringB %>
<% } %>
<hr>
<%
if (grade > 10) {
	out.println(gradeStringA);
} else if (grade > 5) {
	out.println(gradeStringB);
}
%>
</body>
</html>




