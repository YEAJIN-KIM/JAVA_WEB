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
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("userId");
	String password = request.getParameter("pass");
	String depart = request.getParameter("department");
	if(id==""||password=="") {// id.equals=("")로 하면 error. 
		response.sendRedirect("login.jsp");
	} else {
	String encDepart = URLEncoder.encode(depart, "utf-8");
	response.sendRedirect("/0314/main/index.jsp?depart="+encDepart+"&id="+id); // 여기서 왜 &userId 가 아니라 id임?
	} // 여기 왜 depart 하는지 이해 안간다 파라미터명을 보내는거라는데 왜?(파라미터 값을 get 방식으로 index로 넘겨라)
%>	
</body>
</html>