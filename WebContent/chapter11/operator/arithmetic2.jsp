<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="" method="post">
<input type="number" name="num1">
<select name="op">
  <option value="plus">+</option>
  <option value="minus">-</option>
  <option value="times">X</option>
  <option value="div">/</option>
  <option value="mod">%</option>
</select>
<input type="number" name="num2">
<input type="submit" value="=">
</form>
${param.num1 + param.num2 }<br>
${param.num1 - param.num2 }<br>

</body>
</html>












