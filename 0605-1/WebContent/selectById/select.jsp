<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import ="my.dao.*,my.util.*,my.model.*,java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	
	int movieId = Integer.parseInt(request.getParameter("movieId"));
	Movie movie = null;
	Connection conn = ConnectionProvider.getConnection();
	try{
		MovieDao dao = new MovieDao(); // 처음 할 일. dao 쓰기 위해 dao객체 생성
		movie = dao.selectById(conn, movieId); // 검색
	}catch(SQLException e){
		e.printStackTrace();
	}
%>
<c:set var="movie" value="<%=movie%>"/>
여기다 movie 정보 출력 <br>
영화 아이디:${movie.movieId } <br>
영화 제목: ${movie.movieName }<br>
제작자: ${movie.maker }<br>
가격: ${movie.price }<br>
상영일자: ${movie.launchDate }<br>
</body>
</html>