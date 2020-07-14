<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
ID = <%= application.getAttribute("ID") %><br>
PASSWORD = <%= application.getAttribute("PASS") %><br>
NAME = <%=application.getAttribute("NAME") %><br>
HOBBY = <%=application.getAttribute("HOBBY") %><br> <!-- Null 이 뜨는 이유 -> setA에는 실행하지 않고 선언만 되있기 때문 -->
<!-- application 객체는 모든 페이지의 app에서 작동하기 때문에 여기서 출력 가능. -->
</body>
</html>