<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8"); // 한글을 받기에 인코딩
	String bookName = request.getParameter("bookName");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=null;
	Statement stmt = null;
	try{
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webb","root","");
		stmt = conn.createStatement(); // connection 객체 통해 statement 만든다?
		// 달라지는 부분
		stmt.executeUpdate("delete from book where bookName='"+bookName+"';"); // 삭제 process		      
             
	}catch(SQLException e){// 모든 sql = catch 문 내에서 실행
		e.printStackTrace(); // error 발생을 잡아준다.
	}finally {
		if (conn != null)conn.close(); //close 하지 않으면 메모리 오버프로우 에러 발생
		if (stmt != null)stmt.close();
	}
	
%>
도서정보 삭제가 완료되었습니다.
</body>
</html>