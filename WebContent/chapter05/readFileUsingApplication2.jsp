<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
char[] buff = new char[128];
int len = -1;

String filePath = "/notice.txt";

try (InputStreamReader fr = new InputStreamReader(application.getResourceAsStream(filePath), "UTF-8")) {
	while ((len = fr.read(buff)) != -1) {
		out.print(new String(buff, 0, len));
	}
} catch (Exception e) {
	e.printStackTrace();
}
%>


</body>
</html>