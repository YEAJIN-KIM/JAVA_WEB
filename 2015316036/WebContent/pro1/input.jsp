<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.util.CookieBox" %>
<%@ page import = "java.net.URLEncoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String pname = request.getParameter("pname");
	String pmaker = request.getParameter("pmaker");
	
	Cookie PN = CookieBox.createCookie("PN", pname);
	response.addCookie(PN);
	Cookie PM = CookieBox.createCookie("PM", pmaker);
	response.addCookie(PM);
	
%>
쿠키를 저장했습니다~.
</body>
</html>