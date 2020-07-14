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
쿠키 수정: <br>
<form action ="modify.jsp" method = "post">
쿠키 이름: <input type = "text" name = "cookieName" size="10"><br>
쿠키 값: <input type = "text" name = "cookieValue" size="10"><br>
<input type = "submit" value = "쿠키수정"><br>
</form>
</body>
</html> 