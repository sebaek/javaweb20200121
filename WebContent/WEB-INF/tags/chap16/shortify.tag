<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<jsp:doBody var="body" />

<c:if test="${fn:length(body) ge 10 }">
	${fn:substring(body, 0, 7) }...
</c:if>
<c:if test="${fn:length(body) lt 10 }">
	${body }
</c:if>
