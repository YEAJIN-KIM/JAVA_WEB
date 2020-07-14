<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
department=${requestScope.d}<br> <%-- request객체의 d에있는걸 가져와라/ request변수 출력하는 법 --%>
hobby = ${requestScope.h}<br> <%-- (기본객체)속성으로 정의하면 c:set 필요가 없다. 속성명 (d / h)로 바로 출력 가능하다. --%>
sessiondept = ${sessionScope.sd }<br> <%-- session으로 갖고 옴 --%>
sessionhobby = ${sessionScope.sh}<br>
<%--request는 안나오고 session만 출력 됨 / request는 jsp가 달라지면 소용이 없음 / session은 webbrowser어디서든 ok--%>

</body>
</html>