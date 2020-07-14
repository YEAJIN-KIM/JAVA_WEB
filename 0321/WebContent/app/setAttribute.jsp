<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>애플리케이션 속성 설정</title>
</head>
<body>
<%
	application.setAttribute("ID", "hyine18"); // 문자열 속성값 
	application.setAttribute("PASS","123456"); // 속성값이 정수
	application.setAttribute("NAME", "한승규");
	application.setAttribute("HOBBY", "독서");
	// application 객체에 속성(값)을 set(붙여 넣어라)하라.
%>

ID = <%= application.getAttribute("ID") %><br><hr>
PASSWORD = <%= application.getAttribute("PASS") %><br><hr>
NAME = <%=application.getAttribute("NAME") %><br>
HOBBY = <%=application.getAttribute("HOBBY") %><br>
</body>
</html>