<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import ="my.dao.*,my.util.*,my.model.*,java.sql.*,java.util.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Connection conn = ConnectionProvider.getConnection();
	List<Book> books = null;
	try{
		
		BookDao dao = new BookDao();
		books = dao.selectList(conn);
		
	}catch(SQLException e){}
%>
<c:set var="list" value="<%=books%>"></c:set>
<c:forEach var="book" items="${list}"> <!--  배열을 가져온다  -->
	${book.bookId } : ${book.bookName } : ${book.author } : ${book.price }<br>
	책에 관환 정보를 출력하시오.
</c:forEach>
</body>
</html>