<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLDecoder" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

나의 아이디는 <%= request.getParameter("MyId") %> 입니다.<br>
나의 패스워드는 <%= request.getParameter("pass") %> 입니다.<br>
나의 이름은 <%= request.getParameter("name") %> 입니다.<br>

<%
	String urlName = request.getParameter("urlName");
	String decName = URLDecoder.decode(urlName, "utf-8");
%>

나의 이름은 <%= decName %> 입니다.
</body>
</html>