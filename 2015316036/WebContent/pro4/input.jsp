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
	String bookName = request.getParameter("bookName");
	int price = Integer.parseInt(request.getParameter("price"));
	String encbookName = URLEncoder.encode(bookName, "utf-8");
	response.sendRedirect("/2015316036/pro4/output.jsp?bookName="+encbookName+"&price="+price);
%>
</body>
</html>