<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ attribute name="menu1" %>
<%@ attribute name="menu2" %>
<%@ attribute name="menu3" %>
<%@ attribute name="menu4" %>

<nav>
<ul>
<li><a href="${menu1 }">메뉴1</a></li>
<li><a href="${menu2 }">메뉴2</a></li>
<li><a href="${menu3 }">메뉴3</a></li>
<li><a href="${menu4 }">메뉴4</a></li>
</ul>
</nav>