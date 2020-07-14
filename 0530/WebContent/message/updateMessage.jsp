<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.service.*" %> 
<%@ page import = "my.model.Message" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//int messageId = Integer.parseInt(request.getParameter("messageId"));
	//String password = request.getParameter("password"); 
	//String messageText = request.getParameter("message");
	//String guestName = request.getParameter("guestName"); 
	int messageId = 3;
	String password = "1111"; 
	String messageText = "이히히";
	String guestName = "가말리엘";
	
	boolean badPassword = false; 
	try {
		Message message = new Message
	(messageId, guestName, password, messageText, new java.util.Date());
		UpdateMessageService service = new UpdateMessageService();
		service.updateMessage(messageId, message, password);
	} catch (BadPasswordException ex) {
		badPassword = true; 
	}
	if (!badPassword){
		out.println("메시지를 수정하였습니다.");
	} else {
		out.println("패스워드가 맞지 않습니다.");
	}
%>

<a href = "list.jsp">[목록보기]</a>
</body>
</html>













