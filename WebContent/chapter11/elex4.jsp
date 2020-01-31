<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
Map<String, String> map = new HashMap<>();
map.put("key1", "val1");
map.put("key2", "val2");
map.put("key3", "val3");
map.put("4key", "val4");
request.setAttribute("attr1", map);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${attr1.key1 }<br>
${attr1.key2 }<br>
${attr1["key3"] }<br>
${attr1["4key"] }<br>

<%
Map<String, chapter08.MemberInfo> map2 = new HashMap<>();
chapter08.MemberInfo m = new chapter08.MemberInfo();
m.setName("hong");
map2.put("mem1", m);
request.setAttribute("members", map2);
%>

<br>
${members.mem1.name }<br>
${members["mem1"].name }<br>
${members["mem1"]["name"]}<br>






</body>
</html>


