<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action = "process.jsp" method = "post">
회사명 : <br>
<input type = "radio" name = "com" value ="SM">삼성전자
<input type = "radio" name = "com" value ="HD">현대
<input type = "radio" name = "com" value ="GG">구글
<input type = "radio" name = "com" value ="AP">애플

제품명:<br>
	<select name ="product">
		<option value ="1">갤럭시
		<option value ="2">K7
		<option value ="3">구글폰
		<option value ="4">아이폰
	</select>
<input type ="submit" name ="선택">
</form>
</body>
</html>