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
	String hobby = request.getParameter("hobby");
	String movie = request.getParameter("movie");
%>
<form action = "result.jsp" method= post>
취미:<input type = "text" name = "hobby" value=<%=hobby%>>
영화:<input type = "text" name = "movie" value=<%=movie %>>
<input type= "submit" value="입력">
</form>
</body>
</html>