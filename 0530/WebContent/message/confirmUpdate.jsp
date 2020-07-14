<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메시지 삭제하기</title>
</head>
<body>
<form action="updateMessage.jsp" method="post">
	<input type="hidden" name="messageId" value="${param.messageId}">
	메시지를 수정하려면 암호를 입력하세요. <br>
	패스워드: <input type="password" name="password"> <br>
	이름: <input type="text" name="guestName"> <br>
	메시지: <input type="text" name="message" size="30"><br>
	<input type="submit" value="메시지 삭제">
</form>
</body>
</html>