<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
문자열 검색<br><br>
<form action ="process.jsp" method="post">
검색대상 문자열:<br><br>
<input type="text" name="target" value ="봄은 참 아름답습니다"><br>
<input type="text" name="target" value ="꿈과 희망을 가지세요"><br>
<input type="text" name="target" value ="우리는 위대합니다"><br>
<input type="text" name="target" value ="위대한 대한민국"><br>
검색할 문자열:
<input type="text" name ="search" size="10"><br>
대체 문자열:
<input type="text" name="replace" size="10"><br>
<input type="submit" value="검색"><br>
</form>
</body>
</html>