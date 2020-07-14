<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import ="my.dao.*,my.util.*,my.model.*,java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	int bookId = Integer.parseInt(request.getParameter("bookId"));
	Connection conn = ConnectionProvider.getConnection(); // db 를 쓰기 위해선 connection
	Book book = null;
	try{
		BookDao dao = new BookDao(); // 처음 할 일. dao 쓰기 위해 dao객체 생성
		book = dao.selectById(conn, bookId); // 검색
	}catch(SQLException e){
		e.printStackTrace();
	}
%>
도서 정보 출력하세요..... EL 활용..<br>
<c:set var="book" value ="<%=book%>"/>
	${book.bookId } : ${book.bookName } : ${book.author } : ${book.price }<br>


</body>
</html>