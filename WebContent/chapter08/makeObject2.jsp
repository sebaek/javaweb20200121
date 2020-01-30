<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean scope="request" id="member" class="chapter08.MemberInfo" >
  <jsp:setProperty name="member" property="id" value="madvirus"/>
  <jsp:setProperty name="member" property="name" value="최범균"/>
</jsp:useBean>

<jsp:setProperty name="member" property="id" value="mad" />

<jsp:forward page="useObject.jsp"></jsp:forward>