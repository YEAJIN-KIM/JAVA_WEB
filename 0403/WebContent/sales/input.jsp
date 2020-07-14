<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
구매 품목 선택: <br><hr>
<form action="process.jsp" method="post">
과일: <br>
	<input type="radio" name="fruit" value="사과">사과
	<input type="radio" name="fruit" value="배">배
	<input type="radio" name="fruit" value="딸기">딸기
	<input type="radio" name="fruit" value="귤">귤<br><br>
스포츠: <br>
	<input type="checkbox" name="sports" value="축구">축구
	<input type="checkbox" name="sports" value="야구">야구
	<input type="checkbox" name="sports" value="농구">농구
	<input type="checkbox" name="sports" value="배구">배구<br><br>
구매 갯수:<br>
	<select name="numSales">
		<option value="1">1
		<option value="2">2
		<option value="3">3
		<option value="4">4
	</select><br>
	<input type="submit" value="구입">
</form>
</body>
</html>