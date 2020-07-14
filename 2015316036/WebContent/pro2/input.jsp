<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="process.jsp" method="post">  <!-- action = 데이터 보냄 , method = 포스트 형식으로 보냄 -->
이름: <input type ="text" name="moiveId" value=""><br>
아이디: <input type ="text" name="movieName" value=""><br><br>
패스워드  <input type = "int" name="price" size ="10"><br><br>
	<input type = "submit" value ="입력"> <!-- 버튼  --> 
</body>
</html>