<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLEncoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String cookieName = request.getParameter("cookieName");
	String cookieValue = request.getParameter("cookieValue");
	Cookie[] cookies = request.getCookies();
	if (cookies != null && cookies.length > 0){
		for (Cookie cookie : cookies){
			if(cookie.getName().equals(cookieName)){
				Cookie c = new Cookie(cookieName, URLEncoder.encode(cookieValue,"utf-8")); // 덮어쓰기 ?
				response.addCookie(c);
			}
		}
	}
%>
쿠키 수정이 완료되었습니다.
</body>
</html>