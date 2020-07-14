<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.Enumeration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String uid= request.getParameter("uid");
	String pass = request.getParameter("pass");
	String name= request.getParameter("name");
	Enumeration paramEnum= request.getParameterNames();
	String names= (String) paramEnum.nextElement();
%>
<%= names %>

</body>
</html>