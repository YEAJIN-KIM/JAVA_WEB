<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
영화정보 검색
<form action = "select.jsp" method="post">
타겟: <select name ="target">
		<option value="movieName">영화제목
		<option value ="maker">제작자
	</select>
키워드 : <input type="text" name ="keyword" value="1"><br>
<input type="submit" value="검색">
</form>
<br><hr>
</body>
</html>