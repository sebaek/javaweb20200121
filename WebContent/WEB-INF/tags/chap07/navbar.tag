<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="userName" %>
<div>
<ul>
<li><a href="#">메뉴1</a></li>
<li><a href="#">메뉴2</a></li>
<li>
<%
if (userName == null) {
%>
<form action="main.jsp" method="post" >
<input placeholder="ID 입력" name="id" type="text">
<input type="submit" value="로그인">
</form>
<%
} else {
	out.print(userName);
}
%>	


</li>
</ul>


</div>