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
%>
<jsp:useBean id="movie" class= "my.model.Movie"/>
<jsp:setProperty property="*" name="movie"/>
<%
	int year = Integer.parseInt(request.getParameter("year"));
	int month = Integer.parseInt(request.getParameter("month"));
	int day = Integer.parseInt(request.getParameter("day"));
	// Movie class에 없으니 여기다가 설정해줘야함
	Calendar cal = Calendar.getInstance();
	cal.set(Calendar.YEAR, year); // Year에 form에서 입력받은 year를 입력한다
	cal.set(Calendar.MONTH, month);
	cal.set(Calendar.DATE, day);
	java.util.Date date = new java.util.Date(cal.getTimeInMillis()); // date 객체 설정 . calander형식을 Date형식으로 바꾸는 코드.TimeInMillis
	movie.setLaunchDate(date);
	//여기까지 날짜 변경
	Connection conn = ConnectionProvider.getConnection();
	try{
		MovieDao dao = new MovieDao(); // 처음 할 일. dao 쓰기 위해 dao객체 생성
		dao.update(conn, movie);
	}catch(SQLException e){
		e.printStackTrace();
	}
%>
영화정보 수정 완료!<br><br>
<a href="/0605/movieList.jsp">영화리스트 보러가기</a>
</body>
</html>