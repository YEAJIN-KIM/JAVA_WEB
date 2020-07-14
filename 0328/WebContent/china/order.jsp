<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>중국집</title>
</head>
<body>

<%
	String customer = request.getParameter("name");
	String amount = request.getParameter("amount");
%>
<form action ="process.jsp" method="post">
주문자명:<input type = "text" name = "name" value = <%=customer%>><br><br>
						  <!-- url로 입력하는   -->     <!-- 여기서 설정한 변수 -->
메뉴를 결정하세요.<br>
	<select name = "food">	
		<option value="짜장면">짜장면
		<option value="짬뽕">짬뽕
		<option value="탕수육">탕수육
		<option value="팔보채">팔보채
	</select>
<br>수량을 결정하세요.<br>
	<select name = "amount">
		<option value="1그릇">1그릇
		<option value="2그릇">2그릇
		<option value="3그릇">3그릇
		<option value="4그릇">4그릇
	</select>
	<input type ="submit" value="주문">
</form>
</body>
</html>