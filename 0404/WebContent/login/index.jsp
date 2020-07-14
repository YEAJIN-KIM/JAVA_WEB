<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.login.Login" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%= application.getAttribute("UN") %>님께서 <%= application.getAttribute("LT") %>에 로그인 했습니다.  --%>

<!--  ...님 환영합니다, <.%= application.getAttribute("UI")%>     -- 로그인한 ID 출력?  -->

<%
	Login login = (Login)application.getAttribute("LO");
%>

<%= login.getUserId() %>의 <%=login.getUserName() %>님이<br>
몸무게<%= login.getWeight() %><br>
<%= login.getLoginTime() %>에 로그인 하셨습니다.



</body>
</html>