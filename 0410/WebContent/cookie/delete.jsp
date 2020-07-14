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
	String cookieName = request.getParameter("cookieName");
	Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length > 0){
		for(Cookie cookie : cookies){
			if(cookie.getName().equals(cookieName)){
				Cookie c = new Cookie(cookieName,"");
				c.setMaxAge(0);
					response.addCookie(c);
			}
				
		}
	}
%>
쿠키가 삭제되었습니다.
</body>
</html>