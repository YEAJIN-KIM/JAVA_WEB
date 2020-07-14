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
	String depart = request.getParameter("depart");
	String decDepart = URLDecoder.decode(depart,"utf-8");
%>
<!-- 당신의 학과명은 <%=request.getParameter("depart") %>입니다.  -->
<%= request.getParameter("id") %>님 환영합니다!<br>
당신의 학과명은 <%=decDepart %>입니다.
</body>
</html>