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
 <!--  이거는 .. author 나 bookid .. bookname 같은(필드명)걸 검색 대상으로 하고.. 뒤에 검색어로 포함된거(attribute) 검색하는 기능을 한다 -->
<%	
	request.setCharacterEncoding("utf-8");
	String target = request.getParameter("target");
	String search = request.getParameter("search");
	String bookName = request.getParameter("bookName");
	Connection conn = ConnectionProvider.getConnection(); // db 를 쓰기 위해선 connection
	List<Book> bookList = null;
	Book book = null;
	try{
		BookDao dao = new BookDao(); // 처음 할 일. dao 쓰기 위해 dao객체 생성
		bookList = dao.selectAll(conn, target, search);
	}catch(SQLException e){
		e.printStackTrace();
	}
	if (bookList != null){
		
%>
<c:set var="list" value ="<%=bookList%>"/>
<c:forEach var="book" items="${list}">
${book.bookId} : ${book.bookName} : ${book.author} : ${book.price}<br><br>
</c:forEach> 
<% } %>

</body>
</html>