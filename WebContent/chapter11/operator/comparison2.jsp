<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="" method="post">
<input type="number" name="num1" value="${param.num1 }">
<select name="op">
  <option value="eq">==</option>
  <option value="ne">!=</option>
  <option value="lt">&lt;</option>
  <option value="gt">&gt;</option>
  <option value="le">&lt;=</option>
  <option value="ge">&gt;=</option>
</select>
<input type="number" name="num2" value="${param.num2 }">
<input type="submit" value="=">
</form>
<c:if test="${param.op eq 'eq' }">
값이 같다.${param.num1 eq param.num2 }
</c:if>
<c:if test="${param.op eq 'ne' }">
값이 다르다.${param.num1 ne param.num2 }
</c:if>
<c:if test="${param.op eq 'lt' }">
왼쪽 값이 작다.${param.num1 lt param.num2 }
</c:if>
<c:if test="${param.op eq 'gt' }">
왼쪽 값이 크다.${param.num1 gt param.num2 }
</c:if>
<c:if test="${param.op eq 'le' }">
왼쪽 값이 작거나 같다.${param.num1 le param.num2 }
</c:if>
<c:if test="${param.op eq 'ge' }">
왼쪽 값이 크거나 같다.${param.num1 ge param.num2 }
</c:if>


</body>
</html>






