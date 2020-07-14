<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>개인정보 입력</title>
</head>
<body>
개인정보를 입력하세요...<br><br> <hr>	
<form action="Output.jsp" method="post">  <!-- action = 데이터 보냄 , method = 포스트 형식으로 보냄 -->
이름: <input type ="text" name="name" size="10"><br>
아이디: <input type ="text" name="userId" size="10"><br><br>
패스워드  <input type = "password" name="password" size ="10"><br><br>
취미: <input type = "checkbox" name="hobby" value="축구">축구
	 <input type = "checkbox" name="hobby" value="농구">농구
	 <input type = "checkbox" name="hobby" value="배구">배구
	 <input type = "checkbox" name="hobby" value="야구">야구<br>
주소: <select name = "adress">
		<option value="서울">서울<!--  option 은 출력값 -->
		<option value="시흥">시흥
		<option value="인천">인천
		<option value="안산">안산
	</select><br>
	<hr>
	<input type = "submit" value ="입력"> <!-- 버튼  --> 
</form>
</body>
</html>