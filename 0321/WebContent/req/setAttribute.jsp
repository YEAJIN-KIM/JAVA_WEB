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
	String id = request.getParameter("id"); //get 방식으로 id 입력받음.
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	request.setAttribute("userId" , id);	//id 값을 userId에 설정
	// id 와 "id"의 차이는? " " = 문자열(문자열값) id = 변수명(id안에 값을 가지고 있는 변수)
	request.setAttribute("name" , name);
	request.setAttribute("pass" , pass);
%>

id = <%= request.getAttribute("userId") %> <br>
name = <%= request.getAttribute("name") %> <br>
pass = <%= request.getAttribute("pass") %> <br>
</body>
</html>