<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Enumeration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>모든 application 속성값 출력</title>
</head>
<body>
<%
	Enumeration<String> attrs = application.getAttributeNames(); // Names = 모든 값 가져와서 배열에 넣어라
	while(attrs.hasMoreElements()){ // attrs 배열이 속성이 더 있을때 계속 반복해라
		String name = attrs.nextElement();
		Object value = application.getAttribute(name);
		out.print(name+"="+value+"<br>");
	}
%>
</body>
</html>