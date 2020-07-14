<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! 
	public int sum(int a , int b) {	
		return a + b ;                   // 돌려준다 
	}

	public int abs(int c, int d) {
		return c - d ;
	}
	
	public int multiply(int e , int f) {
		return e*f;
	}
	
	public int divide(int g , int h) {
		return g/h;
	}
%>

10 + 5 = <%= sum(10,5) %> <br>
10 - 5 = <%= abs(10,5) %> <br>
10 * 5 = <%= multiply(10,5) %> <br>
10 / 5 = <%= divide(10,5) %> <br>
</body>
</html>