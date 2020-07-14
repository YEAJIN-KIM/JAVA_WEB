<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.login.Login" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	Login login = new Login("hyine18","123456","한승규",58); // 파라미터 생성자
	Login loginBasic = new Login(); //기본 생성자
	loginBasic.setUserId("hi");
	loginBasic.setPassword("1234");
	loginBasic.setUserName("홍길동");
	loginBasic.setWeight(70);
%>
login부분<br>
<%= login.getUserId() %><br>
<%= login.getPassword() %><br>
<%= login.getUserName() %><br>
<%= login.getWeight() %><br>
login message<%= login.getMessage() %><br><hr>
loginBasic부분<br>
<%= loginBasic.getUserId() %><br>
<%= loginBasic.getPassword() %><br>
<%= loginBasic.getUserName() %><br>
<%= loginBasic.getWeight() %><br>
loginBasic message <%= loginBasic.getMessage() %><br>
</body>
</html>