<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="member" scope="request" class="chapter08.MemberInfo" >
  <jsp:setProperty name="member" property="name" value="홍길동" />
  <jsp:setProperty name="member" property="id" value="hong" />
</jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%= member.getName() %> (<%= member.getId() %>) 회원님
안녕하세요.<br>

<jsp:getProperty name="member" property="name"/>
(<jsp:getProperty name="member" property="id" />) 회원님
안녕하세요.<br>

</body>
</html>








