<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>	<!-- 모든 파라미터 정보는 request에 -->
<%
	request.setCharacterEncoding("utf-8");			 		// 한글로 바꿔주는 작업 필요 -->
	String name = request.getParameter("name");	 		//("name") -- input.jsp 에서 넘어온 name (바뀌면 안됨) String name1 = output에서 사용하는거. 바뀌어도 무관 -->
	String[] hobbies = request.getParameterValues("hobby"); // getParameter 은 값을 하나만 받는다. -> 복수개를 받도록 수정 필요.
	String adress = request.getParameter("adress");
	%>
아이디 = <%= request.getParameter("userId") %><br>
패스워드 = <%= request.getParameter("password") %><br>
이름 = <%= name %><br>
취미 = 
<%-- <%
	for(int i = 0; i <hobbies.length; i++){	

<%=hobbies[i] %>
<% }%> --> --%>

<%--
<%
	for(int i = 0; i < hobbies.length; i++)
		out.print(hobbies[i]+""); // hobbies[i]++    ... ++ ---> 한칸씩 띄우기 위해 공배문자열
%> --%>

<%
	for(String hobby:hobbies)
		out.print(hobby+" ");
%>
<br>
주소 = <%= adress %><br>

</body>
</html>