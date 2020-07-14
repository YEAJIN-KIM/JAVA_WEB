<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String uName= request.getParameter("uName");
	String address = request.getParameter("address");

	Cookie UN = new Cookie("uName",
			URLEncoder.encode("정현지","utf-8"));
	response.addCookie(UN);				 	
	Cookie ADD = new Cookie("address",URLEncoder.encode("시흥시","utf-8"));
	response.addCookie(ADD);

%>


</body>
</html>