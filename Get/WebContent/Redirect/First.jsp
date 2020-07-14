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
	String userId = request.getParameter("userId");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String urlName = URLEncoder.encode(name, "utf-8");
	if (userId != "" && password !="" && name != "")
		response.sendRedirect("Second.jsp?MyId="+userId+"&pass="+password+
		"&name="+name+"&urlName="+urlName);
	
	
		
%>		
</body>
</html>