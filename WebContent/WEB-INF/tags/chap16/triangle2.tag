<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ attribute name="line" required="true"%>

<c:forEach begin="1" end="${line }" var="i">
	<c:forEach begin="1" end="${i }">
		<jsp:doBody />
	</c:forEach>
	<br>
</c:forEach>