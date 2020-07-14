<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="sales" class="my.info.Sales"></jsp:useBean>> <!-- id= 임의로 가능. -->
<jsp:setProperty property="*" name="sales"/>				<!-- name 을 id 에 맞춘다. -->	
<%
	sales.setSalesDate(new java.util.Date());
	application.setAttribute("SL", sales); // 추가본 with output 의미 = SL이라는 객체에 sales 의 모든 정보를 집어 넣었따!
	request.setAttribute("SR", sales); // 추가추가본 SR에 salse의 bean을 붙여 보내준다. 뭔소리냐 이게
%>
<jsp:forward page="output1.jsp"/> <!-- 추가추가본 -->

구매품목<br><hr>
과일:<%= sales.getFruit() %><br>
스포츠:<%= sales.getSports() %><br>
구매 갯수:<%= sales.getNumSales() %><br>
구매 일자:<%= sales.getSalesDate() %><br>
</body>
</html>