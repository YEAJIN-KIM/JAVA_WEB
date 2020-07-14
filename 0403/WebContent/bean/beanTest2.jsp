<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="info" class = "my.info.UserInfo"></jsp:useBean> <!-- <jsp... = 스크립트 릿 -->
<jsp:setProperty property="userName" name="info" value="한승규"/>
나의 이름:<%= info.getUserName() %><br>
<!-- useBean과 setProperty는 많이 쓰인다 -->
<%
	info.setAddress("서울");
	info.setGrade(90);
	// setProperty(12)를 쓰나 setter(16~17)를 쓰나 같다.//
%>
나의 주소 : <jsp:getProperty property="address" name = "info"/><br>
나의 성적 : <jsp:getProperty property="grade" name = "info"/><br><hr>
 		<!-- jsp.getProperty는 길어서 잘 쓰지 않는다 -->
<%= info.getAddress() %><br>
<%= info.getGrade() %><br>
</body>
</html>