<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<c:forEach begin="1" end="5" var="i">
	<c:forEach begin="1" end="${i }">
		<jsp:doBody />
	</c:forEach>
	<br>
</c:forEach>

<hr>
<jsp:doBody var="body" />

<c:forEach begin="1" end="5" var="i">
	<c:forEach begin="1" end="${i }">
		${body }
	</c:forEach>
	<br>
</c:forEach>





