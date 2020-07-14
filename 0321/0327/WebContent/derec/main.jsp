<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

여기는 메인입니다 : )<br>
<%@ include file="sub.jspf" %><br>
나의 이름은 <%=name%>입니다.<br>
나의 주소는 <%= adress %>입니다.<br>
나의 학번은 <%=number %>입니다.
	
</body>
</html>