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
<%
	Cookie[] cookies = request.getCookies(); // 쿠키저장소에 있던 쿠키를 배열로 가져옴
	if (cookies != null && cookies.length > 0){ // 널값 x , 길이가 길어야함
		for(Cookie cookie : cookies){ // cookie 라는 배열에서 (객체?)하나를 꺼내와서 그 이름을 cookie(s?) 라고 해라.
%>
	<%= cookie.getName() %> = <%= URLDecoder.decode(cookie.getValue(),"utf-8") %> <br>
<%
		}
	}
%>
</body>
</html>