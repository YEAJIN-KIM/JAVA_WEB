<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.info.Sales" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Sales sales = (Sales)request.getAttribute("SR");
%>
구매품목 출력:<br>
과일:<%= request.getParameter("fruit") %><br>
스포츠:<%= request.getParameter("sports") %><br>
구매 갯수:<%= request.getParameter("numSales") %><br>
구매일자:<%= sales.getSalesDate() %><br>
</body>
</html>