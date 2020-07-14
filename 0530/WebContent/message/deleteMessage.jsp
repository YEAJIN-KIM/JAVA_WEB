<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.service.*" %>    
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
	int messageId = 2;
	String password = "1111";
	boolean badPassword = false; 
	try {
		DeleteMessageService service = new DeleteMessageService();
		service.deleteMessage(messageId, password);
	} catch (BadPasswordException ex) {
		badPassword = true; 
	}
	if (!badPassword){
		out.println("메시지를 삭제하였습니다.");
	} else {
		out.println("패스워드가 맞지 않습니다.");
	}
%>

<a href = "list.jsp">[목록보기]</a>
</body>
</html>













