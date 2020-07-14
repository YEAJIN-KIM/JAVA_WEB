<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>    
<%@ page import ="my.model.*,my.dao.*,my.service.*" %>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="message" class="my.model.Message"/>
<jsp:setProperty property="*" name="message"/>
<%
	message.setRegisterTime(new Date()); 
	WriteMessageService service = new WriteMessageService();
	service.write(message);
%>
방명록에 메시지를 남겼습니다.!!!! <br>
<a href="list.jsp">[목록보기]</a>
</body>
</html>



