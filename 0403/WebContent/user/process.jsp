<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- get.parameter 이런거 안쓰고 한번에 받을 수 있다. -->
<% request.setCharacterEncoding("utf-8");%>
<jsp:useBean id = "user" class="my.info.UserInfo"/>
<jsp:setProperty property = "*" name="user"/> <!-- 모든 파라미터 한번에 받기 -->
나의 아이디: <%= user.getUserId() %><br>
나의 성적:  <%=user.getGrade() %><br>
나의 주소:	<%=user.getAddress() %><br>
나의 이름:	<%=user.getUserName() %><br>
나의 취미: <%=user.getHobby() %>
</body>
</html>