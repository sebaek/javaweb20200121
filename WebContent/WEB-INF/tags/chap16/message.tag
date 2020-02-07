<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${not empty message}">
<div id="message" 
     style="position:fixed; right:0; top:0; padding:20px;">
${message }
</div>

<script>
	$(function() {
		$("#message").show();
		$("#message").fadeOut(3000);
	})
</script>
</c:if>

<c:remove var="message" />