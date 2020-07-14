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
	request.setCharacterEncoding("utf-8");
	String food = request.getParameter("food");
	String customer = request.getParameter("customer");
	String amount= request.getParameter("amount");
	String fowardPage = null;
	if(food.equals("짜장면")){
		fowardPage= "/menu/menu1.jsp";
	} else if (food.equals("짬뽕")){
		fowardPage= "/menu/menu2.jsp";
	} else if (food.equals("탕수육")){
		fowardPage= "/menu/menu3.jsp";
	} else {
		fowardPage= "/menu/menu4.jsp";
	}
%>
<jsp:forward page="<%=fowardPage%>">
	<jsp:param value="<%=food%>" name="food"/>
	<jsp:param value="<%=customer%>" name="customer"/>
	<jsp:param value="<%=amount%>" name="amount"/>
</jsp:forward>
</body>
</html>