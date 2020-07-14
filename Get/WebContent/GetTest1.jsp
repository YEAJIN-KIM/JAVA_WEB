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
	String name1 = request.getParameter("name"); // "name" =uri에서 준 name / name1 = 여기서 저장하는 값..?
	String memberid = request.getParameter("memberid");
	String password = request.getParameter("password");
%>												 	

내 이름은 <%= name1 %> 입니다.<br>
내 아이디는 <%= memberid %> 입니다.<br>
내 비밀번호는 <%= password %> 입니다.
</body>
</html>