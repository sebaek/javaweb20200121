<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
<ul>
<li><a href="#">메뉴1</a></li>
<li><a href="#">메뉴2</a></li>
<li><a href="#">메뉴3</a></li>
<li><%= request.getParameter("user") %> 님</li>
<li>별명 : <%=request.getAttribute("nickName") %></li>
</ul>

</div>




