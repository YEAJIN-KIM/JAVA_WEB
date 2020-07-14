<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLEncoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--   이 페이지 실행하면 SADLKFJEWAIOFOIHDSOIF3RE21OE3 뭐 이런식으로 나오는데 이유는 인코딩 안된 값을 보여줘서. -->
<%
	Cookie cookie = new Cookie("userId","hyine18");
	response.addCookie(cookie); // response 객체에 쿠키가 붙어 간다.
	Cookie cookie1 = new Cookie("password","123456");
	response.addCookie(cookie1);
	Cookie cookie2 = new Cookie("userName",
			URLEncoder.encode("한승규","utf-8"));
	response.addCookie(cookie2);				 	// response 하면 에러나네 ? why?
													// response. 쓰면 에러 나는 이유 - 한글이라 URL 인코딩 해야함
	Cookie cookie3 = new Cookie("userAdress",URLEncoder.encode("용인시","utf-8"));
	response.addCookie(cookie3);
	Cookie cookie4 = new Cookie("depart",URLEncoder.encode("경영학부","utf-8"));
	response.addCookie(cookie4);
%>
<%= cookie.getName() %> = <%= cookie.getValue() %> <br>
<%= cookie1.getName() %> = <%= cookie1.getValue() %> <br>
<%= cookie2.getName() %> = <%= cookie2.getValue() %> <br>
<%= cookie3.getName() %> = <%= cookie3.getValue() %> <br>
<%= cookie4.getName() %> = <%= cookie3.getValue() %> <br>
쿠키가 저장되었습니다.
</body>
</html>