<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
도서정보 수정:<br><Br><hr>
<form action = "update.jsp" method = "post">
도서아이디: <input type= "text" name ="bookId" size="10"><br>
도서명: <input type = "text" name="bookName" value = "토지"> <br>
저자: <input type = "text" name="author" value = "박경리"> <br>
가격: <input type = "text" name="price" value = "21000"> <br>
<input type = "submit" value="수정"><br>
</form>
<hr>
</body>
</html>