<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
사용자 정보 입력:<br>
<hr>
<form action="process.jsp" method="post">
아이디: <input type="text" name="userId" value="hyine18"><br>
이름:	<input type="text" name="userName" value="한승규"><br>
성적:	<input type="text" name="grade" value="97"><br>
주소:	<input type="text" name="address" value="경기도 용인"><br>
취미:<input type="text" name="hobby" value="독서"><br>
<input type="submit" value="입력">
</form>
</body>
</html>