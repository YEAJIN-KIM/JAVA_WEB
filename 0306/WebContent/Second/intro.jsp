<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	String name="한승규";
	String adress = "경기도 용인시 기흥구 공세동 한보라2로 167";
	String phone = "010-2698-1595"; %>
 <!-- Script let : 자바공간 -->
나의 이름은 <%= name %> 입니다. <!-- expression : 변수 값 출력 --> <br>
 나의 주소는 <%= adress %> 입니다. <br>
 나의 번호는<%= phone %> 입니다. <br>
</body>
</html>