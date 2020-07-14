<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>    
<!-- 자바를 그대로 jsp에 적용시킬 수 없기떄문에 Date를 import 해줌 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
 Date now = new Date();
%>
 지금 시각은 <%= now %> 입니다. <br>
</body>
</html>