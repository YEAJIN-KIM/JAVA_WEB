<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="login" class = "my.login.Login"></jsp:useBean>
<jsp:setProperty property ="*" name="login"/>
<%
	login.setLoginTime(new Date());
	if (login.getUserId().equals(login.getPassword())){
		/* application.setAttribute("UI",login.getUserId()); ----- > 데이터를 하나 하나 전송
		application.setAttribute("UN",login.getUserName()); ----> 데이터를 하나 하나 전송
		application.setAttribute("LT", login.getLoginTime()); ---> 데이터를 하나 하나 전송 */
		application.setAttribute("LO",login); // login객체를 통해 일괄 전송
%>
	<jsp:forward page = "index.jsp"/>
<%
	}else{
%> 
	<script type="text/javascript">
		alert("아이디와 패스워드가 불일치!!");
		history.go(-1);
		</script>
<%
	}
%>
</body>
</html>