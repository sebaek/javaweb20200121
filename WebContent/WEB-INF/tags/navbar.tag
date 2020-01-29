<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="user" %>
<%@ attribute name="nickName" %>

<div>
<ul>
<li><a href="#">메뉴1</a></li>
<li><a href="#">메뉴2</a></li>
<li><a href="#">메뉴3</a></li>
<li><%= user %></li>
<li><%= nickName %></li>

</ul>
</div>