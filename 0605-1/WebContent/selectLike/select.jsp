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
<%
	request.setCharacterEncoding("utf-8");
	String target = request.getParameter("target");
	String keyword = request.getParameter("keyword");
	List<Movie> movies = null;
	
	Connection conn = ConnectionProvider.getConnection();
	try{
		MovieDao dao = new MovieDao(); // 처음 할 일. dao 쓰기 위해 dao객체 생성
		movies = dao.selectLike(conn, target, keyword);
	}catch(SQLException e){
	}
%>
<c:set var="list" value="<%=movies%>"/>
<c:forEach var="movie" items="${list}">
영화 아이디:${movie.movieId } <br>
영화 제목: ${movie.movieName }<br>
제작자: ${movie.maker }<br>
가격: ${movie.price }<br>
상영일자: ${movie.launchDate }<br>
영화 이미지 : <img src ="/0605/images/${movie.imageName }.jpg"/><br>
</c:forEach>
영화 티켓을 구매하시겠습니까?<br><br>
<form action = "/purchase/purchase.jsp" method="post">
구매자 아이디:<input type="text" name="buylerId" value="hyine18"><br>
구매 수량: <input type="text" name="amount" value="2"><br>
<input type="submit" value="구매"><br>
<input type="reset" value="취소"><br>
<input type="button" value="돌아가기" onClick="location.href='http://localhost:8080/0605/movieList.jsp'"><br>
</form>

</body>
</html>