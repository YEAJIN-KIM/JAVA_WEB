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
도서 목록:<br><br>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=null;
	Statement stmt = null;
	ResultSet rs = null;
	try{
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webb","root","");
		stmt = conn.createStatement(); // connection 객체 통해 statement 만든다?
		rs = stmt.executeQuery("select * from book"); // 모든 결과는 rs 내에 있다. rs가 여러개기에 반복문으로 가져옴
		String text = ""; // rs를 다 가져오기 위해 string 타입 하나 만들어줌
		while (rs.next()){
			text += (rs.getInt(1)+" : " +rs.getString(2) + " " + rs.getString(3) + " " + rs.getInt(4)+ "<br>");
		}	 // 1 , 2 , 3 , 4 번째 를 가져오는 듯
		out.print(text);
	}catch(SQLException e){// 모든 sql = catch 문 내에서 실행
		e.printStackTrace(); // error 발생을 잡아준다.
	}finally {
		conn.close(); //close 하지 않으면 메모리 오버프로우 에러 발생
		stmt.close();
		rs.close();
	}
	
%>
</body>
</html>