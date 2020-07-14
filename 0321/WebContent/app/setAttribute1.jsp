<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name = request.getParameter("name"); //get 방식으로 받는 변수 명 "name"
	String ID = request.getParameter("id");
	application.setAttribute("userName" , name ); // 변수를 새로 저장할 때, " "로 지정하면 안됨
	application.setAttribute("userId" , ID );
%>
이름은 : <%= application.getAttribute("userName") %><br>
id는 : <%= ID %>
</body>
</html>