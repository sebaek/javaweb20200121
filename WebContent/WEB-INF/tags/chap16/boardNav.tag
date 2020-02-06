<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url value="/chapter16/post" var="postUrl" />
<c:url value="/chapter16/list" var="listUrl" />

<nav>
<ul>

<li><a href="${postUrl }">게시물 작성</a></li>
<li><a href="${listUrl }">게시판 보기</a></li>

</ul>
</nav>