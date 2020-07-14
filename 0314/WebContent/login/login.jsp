<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
로그인 정보 입력: <br><hr> <!-- hr = 선 -->
<form action="process.jsp" method ="post">
아이디: <input type = "text" name = "userId" value="Hyine18"><br>   <!-- size 와 value 의 차이점..? value 는 값들이 들어가있다..?-->
패스워드: <input type = "password" name="pass" value="10"><br>
학과: <input type="radio" name="department" value="경영학">경영학
	 <input type="radio" name="department" value="컴퓨터">컴퓨터
	 <input type="radio" name="department" value="디자인">디자인<br>
	 <input type="submit" value="로그인" > <br>
</form>
<br>
</body>
</html>