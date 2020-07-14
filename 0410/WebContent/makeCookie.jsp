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
<%
	Cookie c1 = new Cookie("c1","path1");
	response.addCookie(c1); // 현재 경로에 디폴트(디폴트=기본적으로의 느낌)로 저장
	Cookie c2 = new Cookie("c2","path2");
	c2.setPath("/0410/path2"); // c2를 path2 에다가 저장해라.
	response.addCookie(c2);
	Cookie c3 = new Cookie("c3", "root");
	c3.setPath("/0410/");//컨텍스트 경로(0410)에 저장 - 쿠키가 0410에 저장됨. --- 하위 폴더에서는 다 사용 가능.
	response.addCookie(c3);
	Cookie c4 = new Cookie("c4","/");// 컨텍스트 경로와 동일.
	c4.setPath("/");
	response.addCookie(c4); 
	Cookie cookie4 = new Cookie("hobby",URLEncoder.encode("독서","utf-8"));
	response.addCookie(cookie4);
%>
쿠키를 저장하였습니다.
</body>
</html>