<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ attribute name="begin" %>
<%@ attribute name="end" %>

<c:forEach begin="${begin }" end="${end }" var="p" varStatus="s">
<c:if test="${s.first }" >
<a href="#">&lt;&lt;</a>
</c:if>

<a href="#">${p }</a>

<c:if test="${s.last }" >
<a href="#">&gt;&gt;</a>
</c:if>

</c:forEach>
