<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${hasNotHero }">
<img src="default.jpg">
</c:if>
<c:if test="${isIronman}">
<img src="ironman.jpg">
</c:if>
<c:if test="${isCaptain}">
<img src="captain.jpg">
</c:if>
<c:if test="${isBlack}">
<img src="black.jpg">
</c:if>