<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="insertMemberSuccess" method="post">
		<table>
			<tr>
				<td colspan="2">회원가입 등록 홈</td>
			<tr/>
			<tr>
				<th>아이디</th>
					<td>
					<input type ="text" name="memberId"/>
					</td>
				</tr>
				
				<tr>
					<th>비밀번호</th>
					<td>
					<input type ="text" name="memberPassword"/>
					</td>
				</tr>
				
				<tr>
				<th>이름</th>
					<td>
					<input type ="text" name="memberName"/>
					</td>
				</tr>
			</table>
			<input type ="submit" value ="회원가입 등록"/>
	</form>
</body>
</html>