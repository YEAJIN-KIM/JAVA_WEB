<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
로그인 정보 입력<br><br><hr>
<%  %>
<form action="process.jsp" method="post">
아이디 : <input type ="text" name="userId" value="hyine18"><br>
패스워드 : <input type ="password" name="password" value="1234"><br>
이름 : <input type ="text" name="userName" value="한승규"><br> 
몸무게 : <input type = "text" name ="weight" value ="58"><br>
<input type ="submit" value="로그인">
</form>
</body>
</html>