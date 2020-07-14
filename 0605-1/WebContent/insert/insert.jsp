<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="my.dao.*,my.util.*,my.model.*,java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id ="movie" class ="my.model.Movie"/>
<jsp:setProperty property="*" name="movie"/>
<!--  launchTime이 insertform에서 안넘어오므로 여기서 잡아줘야함 -->
<%
	movie.setLaunchDate(new java.util.Date());
	Connection conn = ConnectionProvider.getConnection();
	try{
		MovieDao dao = new MovieDao(); // 처음 할 일. dao 쓰기 위해 dao객체 생성
		dao.insert(conn, movie); // 끝.
	}catch(SQLException e){
		e.printStackTrace();
	}
%>
영화정보 입력 완료.
</body>
</html>