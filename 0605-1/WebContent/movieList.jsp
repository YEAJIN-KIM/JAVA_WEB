<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import ="my.dao.*,my.util.*,my.model.*,java.sql.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
영화정보 리스트:<br><br><hr>
<%

	Connection conn = ConnectionProvider.getConnection();
	List <Movie> movieList = null;
	try{
		MovieDao dao = new MovieDao(); // 처음 할 일. dao 쓰기 위해 dao객체 생성
		movieList = dao.selectList(conn);
	}catch(SQLException e){
		e.printStackTrace();
	}
	if(movieList != null){
%>
<c:set var="list" value="<%=movieList %>"/>
<table border="1" width="800">
<tr>
	<th>아이디</th><th>이미지</th><th>영화명</th><th>제작자</th><th>가격</th>
	<th>상영일자</th><th>수정</th><th>삭제</th>
</tr>	
<c:forEach var="movie" items="${list}">
	<tr>
		<td>${movie.movieId }</td>
		<td><img src="/0605/images/${movie.imageName}_small.jpg"/></td>
		<td><a href="/0605/selectById/select.jsp?movieId=${movie.movieId}">
								${movie.movieName }</a></td> <!-- get 방식으로 movie.movieId를 불러라 -->
		<td>${movie.maker}</td>
		<td>${movie.price}</td>
		<td>${movie.launchDate}</td>
<td><a href="/0605/update/updateForm.jsp?movieId=${movie.movieId}">[수정]</a></td>
<td><a href="/0605/delete/deleteForm.jsp?movieId=${movie.movieId}">[삭제]</a></td>
	</tr>
</c:forEach>
</table>
<% } %>

영화정보 검색
<form action = "/0605/selectLike/select.jsp" method="post">
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