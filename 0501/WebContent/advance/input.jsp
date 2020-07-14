<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- post 방식 --%>
상품정보 입력:
<form action ="param.jsp" method ="post">
상품명:
<input type = "checkbox" name ="pName" value ="v30">v30
<input type = "checkbox" name ="pName" value ="iPhone8+">iPhone8+
<input type = "checkbox" name ="pName" value ="GalaxyS8">GalaxyS8
<input type = "checkbox" name ="pName" value ="아이폰">아이폰<br>
제조사: 
<input type = "checkbox" name ="maker" value ="LG전자">LG전자
<input type = "checkbox" name ="maker" value ="애플">애플
<input type = "checkbox" name ="maker" value ="삼성">삼성
<input type = "checkbox" name ="maker" value ="노키아">노키아<br>
생산국 : <br>
	<select name = "country">
		<option value="한국">한국
		<option value="미국">미국
		<option value="핀란드">핀란드
		<option value="영국">영국<br>
	</select>
가격: <input type = "text" name ="price" value ="70000">
<input type = "submit" value ="구매">
</form>
</body>
</html>