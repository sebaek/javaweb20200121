<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div>
	<table>
		<tr>
			<th>이름</th>
			<th>이메일</th>
		</tr>

		<c:forEach var="user" items="${users }">
			<tr>
				<td>${user.name }</td>
				<td>${user.email }</td>
			</tr>

		</c:forEach>

	</table>
</div>







