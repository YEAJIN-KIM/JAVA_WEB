<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page import="my.model.*,my.dao.*,my.util.*,java.sql.*,java.util.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int movieId=Integer.parseInt(request.getParameter("movieId"));
	Connection conn = ConnectionProvider.getConnection();
	try {
		MovieDao dao = new MovieDao();
		dao.deleteById(conn, movieId);
	}catch(SQLException e){
		e.printStackTrace();
	}
%>
영화 삭제가 완료되었습니다!

<a href="/0605/movieList.jsp">영화리스트 보러가기</a>


</body>
</html>