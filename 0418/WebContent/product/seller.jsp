<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<!-- pName, pMaker, price = 파라미터 이름이다 -->
<!-- 실습1. jspusebean 사용 2.파라미터 이용 -->
<body>
제품구매 정보 입력:<br><br>
<form action="process.jsp" method="post">
제품명:<br><br>
<input type = "radio" name= "pName" value="책상">책상
<input type = "radio" name= "pName" value="의자">의자
<input type = "radio" name= "pName" value="침대">침대
<input type = "radio" name= "pName" value="식탁">식탁<br><br>

제조사:<br><br>
<input type = "checkbox" name= "pMaker" value="동서가구">동서가구
<input type = "radio" name= "pMaker" value="에이스">에이스
<input type = "radio" name= "pMaker" value="보르네오">보르네오
<input type = "radio" name= "pMaker" value="한셈">한셈<br><br>

가격:<br><br>
<select name="price">
	<option value="3000">3000
	<option value="6000">6000
	<option value="9000">9000
	<option value="12000">12000
</select><br>
<input type= "submit" value="구매">
</form>
</body>
</html>