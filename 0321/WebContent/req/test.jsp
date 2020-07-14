<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
id = <%= request.getAttribute("userId") %> <br>
name = <%= request.getAttribute("name") %> <br>
pass = <%= request.getAttribute("pass") %> <br>
<!--   널값이 뜨는 이유 = application 객체와 달리 request의 유효범위가 자기가 존재하는 jsp내에서만 유효하기 때문.-->
</body>
</html>