<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag dynamic-attributes="menus" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<nav>
<ul>

<c:forEach items="${menus }" var="menu">
<li>
<a href="${menu.value }">
${menu.key } 
</a>
</li>
</c:forEach>

</ul>
</nav>