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

/*
String filePath = 
"C:\\Users\\USER\\Documents\\myworkspace\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\myweb\\notice.txt";
*/
String filePath = application.getRealPath("/notice.txt");

try (InputStreamReader fr = new InputStreamReader(new FileInputStream(filePath), "UTF-8")) {
	while ((len = fr.read(buff)) != -1) {
		out.print(new String(buff, 0, len));
	}
} catch (Exception e) {
	e.printStackTrace();
}
%>


</body>
</html>