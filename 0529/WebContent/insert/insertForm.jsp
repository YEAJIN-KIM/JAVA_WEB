<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
도서 정보 입력: <br><br><hr>
<form action = "insert.jsp" method="post" >
도서명: <input type = "text" name = "bookName" value="어린왕자" ><br>
저자: <input type = "text" name = "author" value="생텍쥐페리" ><br>
가격:	<input type = "text" name = "price" value="15000" ><br>
<input type="submit" value ="입력"><br>
</form>
<hr>
</body>
</html>