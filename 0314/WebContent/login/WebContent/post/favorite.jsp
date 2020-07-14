<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내가 좋아하는 것들</title>
</head>
<body>
<%
	String myName = request.getParameter("name");
	String userId = request.getParameter("Id");
%>
<form action = "foward.jsp" method = "post">
나의 이름: <input type ="text" name = "name" value ="<%=myName%>"><br>
나의 아이디: <input type ="text" name = "Id" value ="<%=userId%>"><br>
내가 좋아하는 동물: <br><br>
<input type ="checkbox" name="pet" value="강아지">강아지
<input type ="checkbox" name="pet" value="고양이">고양이
<input type ="checkbox" name="pet" value="코끼리">코끼리
<input type ="checkbox" name="pet" value="사자">사자<br>
<hr> <!-- 여러개 선택 가능 (checkbox)-->
내가 좋아하는 가수: <br><br>
<input type="radio" name="singer" value="빅뱅">빅뱅
<input type="radio" name="singer" value="태연">태연
<input type="radio" name="singer" value="루다">루다
<input type="radio" name="singer" value="엑소">엑소<br><hr>
<input type="submit" value="전송"> <!-- 하나만 선택 가능(radio) -->
</form>

</body>
</html>