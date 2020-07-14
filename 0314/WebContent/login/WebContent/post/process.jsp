<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 한글 처리가 되는 이유 = 크롬의 진보성때문에 주소창에서 한글을 치는건 출력 가능. html내에서 쓰면 안됨. -->
<%
	request.setCharacterEncoding("utf-8");
	String[] pets = request.getParameterValues("pet"); // favorite 에 있는 pet//
	String singer = request.getParameter("singer");
	
%>
내가 좋아하는 동물:
<%
	for(String pet:pets) // pets --> pet에서 하나씩 꺼내 오겠다는 이름//
		out.print(pet+" ");
%>
<br><br>
내가 좋아하는 가수: <%=singer%><br>
나의 이름 : <%=request.getParameter("name") %><br>
나의 아이디 : <%=request.getParameter("Id") %>
</body>
</html>