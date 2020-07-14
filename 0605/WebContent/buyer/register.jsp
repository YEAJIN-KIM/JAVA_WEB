<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="my.dao.*,my.model.*,my.util.*,java.sql.*" %>    
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
<jsp:useBean id="buyer" class="my.model.Buyer"/>
<jsp:setProperty property ="*" name="buyer"/>
<%
	Connection conn = ConnectionProvider.getConnection();
	try{
		BuyerDao dao= new BuyerDao();
		dao.insert(conn, buyer);
	}catch(SQLException e){
		e.printStackTrace();
	}
%>
사용자 등록이 완료되었습니다. 로그인 하시겠습니까?
<input type="button" value="로그인" onClick="location.href='http://localhost:8080/0605/login/loginForm.jsp'">
</body>
</html>