<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>변수에 저장하는거랑.. 차이점 보여주는거였는데 잘 모르겠다.</title>
</head>
<body>
속성명과 속성값 설정:<br><br>
<%
	request.setCharacterEncoding("utf-8");
	String attName = request.getParameter("attName"); 
	String attValue = request.getParameter("attValue");
	application.setAttribute(attName, attValue);
%>
속성명: <%= attName %> = <%= attValue %><br> <!-- 변수에 저장 -->
속성값: <%= attName %> = <%= application.getAttribute(attName) %> <!--  -->
</body>
</html>