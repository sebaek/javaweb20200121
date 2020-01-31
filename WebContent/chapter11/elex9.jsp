<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>EL header object</h1>
accept : ${header.accept }<br>
accept-encoding: ${header["accept-encoding"] }<br>
accept-language: ${header["accept-language"] }<br>
accept[0] : ${headerValues.accept[0] }<br>

<h1>EL initParam object</h1>
${initParam.myparameter }<br>
${initParam.logEnabled }<br>
${initParam.debugLevel }<br>

</body>
</html>



