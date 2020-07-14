<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("memberId");
	String password = request.getParameter("memberPassword");
	String name = request.getParameter("memberName");

%>
<body>
		<table>
			<tr>
				<td colspan="2">회원가입 등록 완료</td>
			<tr/>
			<tr>
				<th>아이디</th>
					<td>
					<%= id %>
					</td>
				</tr>
				
				<tr>
					<th>비밀번호</th>
					<td>
					<%= password %>
					</td>
				</tr>
				
				<tr>
				<th>이름</th>
					<td>
					<%= name %>
					</td>
				</tr>
			</table>
</body>
</html>