<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 진화된? 포스트 방식 --%>
상점을 결정하세요.<br><br>
<form action = "process.jsp" method = "post">
구매자명:<input type = "text" name="userName" value = "한승규"><br>
구매가격: <input type= "text" name = "price" value = 10000><br>
구매 품목: <br><br>
<select name = "product">
	<option value ="com">컴퓨터
	<option value ="fun">가구
	<option value ="flow">꽃
</select><br><br>
<input type = "submit" value = "가게결정">
</form>
</body>
</html>