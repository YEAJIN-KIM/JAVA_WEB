<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Enumeration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>초기화 파라미터</title>
</head>
<body>
파라미터 이름: <br><br>
<%
	Enumeration<String> params = application.getInitParameterNames(); // 바꿔놓은 이름들을 가져오는 것.(배열로)
	while (params.hasMoreElements()){
		String name = params.nextElement();
		out.print(name + "<br>");
	}
%>
<hr>
파라미터 이름과 값: <br><br>
<%
	Enumeration<String> params1 = application.getInitParameterNames(); // 바꿔놓은 이름들을 가져오는 것.(배열로)
	while (params1.hasMoreElements()){
		String name = params1.nextElement();
%>

	<%= name %> = <%= application.getInitParameter(name) %><br>		
		
<%
	} // 스크립트릿을 하나 더 만든 이유 = 반복이 여기까지 일어나야하는데 위에 스크립트 릿이 아닌 공간 (<%= namne .>%이 존재하기 때문에)
%>

</body>
</html>