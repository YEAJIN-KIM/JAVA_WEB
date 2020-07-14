<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
영화정보 수정<br><br><hr>
<form action =  "update.jsp" method="post">
영화 아이디 : <input type ="text" name ="movieId" value="${param.movieId }">아이디<br> <!-- param.movieId - movielist에 있는거 받아와서 수정..? -->
영화 제목: <input type="text" name ="movieName" value="매트릭스">제목<br>
제작자 : <input type="text" name="maker" value="워너브라더스">제작자<br>
가격:<input type= "text" name ="price" value="10000">가격<br>

상영일자:<select name="year">
			<option value="2010">2010
			<option value="2012">2012
			<option value="2014">2014
			<option value="2016">2016
			<option value="2018">2018 
		</select>
		<select name="month">		
			<option value="2">3 
			<option value="3">4
			<option value="4">5
			<option value="5">6
			<option value="6">7 
		</select>	
		<!-- month는 0부터 시작하던가 값을 하나 줄여줘야 정확한 값 들어감. (0부터 계산하기 때문) -->
		<select name="day">
			<option value="10">10
			<option value="15">15
			<option value="20">20
			<option value="25">25
			<option value="30">30 
		</select>
<input type ="text" name="imageName" value="mov02.jpg">
<input type="submit" value="수정">
</form>
</body>
</html>