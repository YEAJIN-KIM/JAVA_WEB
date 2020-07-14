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
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id ="book" class ="my.model.Book"/>
<jsp:setProperty property="*" name="book"/>

<!--  db 에 넣기위한 부분 -->

<%
	Connection conn = ConnectionProvider.getConnection(); // db 를 쓰기 위해선 connection
	try{
		BookDao dao = new BookDao(); // 처음 할 일. dao 쓰기 위해 dao객체 생성
		dao.insert(conn, book); // 끝.
	}catch(SQLException e){
		e.printStackTrace(); // 어떤 error 있는지 출력.
	}
%>

도서 정보 입력 완료~

</body>
</html>