<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
Object attr = session.getAttribute("cart");
if (attr == null) {
	attr = new HashMap<String, Integer>();
	session.setAttribute("cart", attr);
}

Map<String, Integer> cart = (Map<String, Integer>) attr;
String[] items = request.getParameterValues("item");
if (items != null) {
	for (String item : items) {
		if (cart.containsKey(item)) {
			cart.put(item, cart.get(item) + 1);
		} else {
			cart.put(item, 1);
		}
	}
}


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="addcart.jsp" method="post">
<label><input type="checkbox" name="item" value="apple">사과</label><br>
<label><input type="checkbox" name="item" value="orange">오렌지</label><br>
<label><input type="checkbox" name="item" value="banana">바나나</label><br>

<input type="submit" value="추가">
</form>

<a href="viewcart.jsp">장바구니 보기</a>
</body>
</html>








