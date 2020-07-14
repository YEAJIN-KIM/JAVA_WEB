<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action = "insert.jsp" method="post">
영화제목: <input type ="text" name= "movieName" value="메트릭스"><br>
제작자: <input type ="text" name= "maker" value="워쇼스키"><br>
가격: <input type ="text" name= "price" value="10000"><br>
영화이미지: <input type="text" name="imageName" value="mov01.jpg"><br>
<input type="submit" value="입력"><br>
</form>
<hr>
</body>
</html>