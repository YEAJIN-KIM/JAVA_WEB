<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.info.UserInfo"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	UserInfo info = new UserInfo();
	info.setUserName("한승규");
	info.setUserId("hyine18");
	info.setGrade(97);
	info.setAddress("용인시");
%>
나의 이름:<%= info.getUserName() %> <br>
나의 아이디:<%= info.getUserId() %><br>
나의 성적:<%=info.getGrade() %><br>
나의 주소: <%=info.getAddress() %><br>
</body>
</html>