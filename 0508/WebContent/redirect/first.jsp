<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- redirect 의 예시 get / post(?) 방식 --%>
여기는 첫째 페이지 입니다.<br>
<c:redirect url="second.jsp">
	<c:param name="userName" value ="한승규"/>
	<c:param name="getUserName" value ="${param.un}"/> <%-- get 방식으로 받겠다 request.getparameter 이런거 필요 x --%>
	<c:param name ="address" value ="${param.add}"/> <%-- value 에 param.add 이런거 이름은 임의로 설정한 듯 아무거나 해도 되는듯 --%>
	<c:param name = "department" value = "${param.dept}"/>
</c:redirect>
</body>
</html>