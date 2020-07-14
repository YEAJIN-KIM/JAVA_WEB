<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.util.CookieBox" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	CookieBox cb = new CookieBox(request); // 파라미터로 request 기본 객체를 줌 - request 객체에 붙어있는 쿠키 배열들 가져옴
	Cookie cookie = cb.getCookie("userId");
%>
userId = <%= cb.getValue("userId") %><br>
패스워드 쿠키가 존재하는가? <%= cb.exists("password") %><br>
<!--  bookName =  cb.getValue("bookName") %><br>-->




<!--  여기 bookname 이라는 jsp 파일 없이 bookName 출력해야함. -->





<%= cookie.getName() %> = <%= cookie.getValue() %><br>
</body>
</html>