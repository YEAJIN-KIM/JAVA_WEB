<%-- Product 에 있는거 post 방식으로 하는 예제 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
상품정보 입력: <br><br>
<form action = "process.jsp" method="post">
상품명: <input type ="text" name="pName" value="컴퓨터">
가격: <input type ="text" name="price" value="250000">
<input type="submit" value="구매">
</form>
</body>
</html>