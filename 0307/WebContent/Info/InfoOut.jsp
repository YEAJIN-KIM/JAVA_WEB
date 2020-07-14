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
	int a = 10 ;
	int b = 5 ;
	String c = " 경영학부";
	String d = "산기대";
%>
	a * b = <%= a*b %> <br>
	학과 소개: <%= d+c %> <br>
	a - b = <%= a-b %> <br>
	a + b = <%= a+b %>	
	
<% 
	int sum = 0;
	for (int i = 1; i <=10 ; i ++)
		sum += i;
%>	

1부터 10 까지의 합은 <%= sum  %> 입니다.
 

</body>
</html>