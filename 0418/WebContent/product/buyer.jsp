<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.info.Product" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 세션은 서버 내에서. 리퀘스트 타고 다니는게 아니라 셋 캐릭터 필요 x -->
<%
	Product pro = (Product)session.getAttribute("PRO"); // PRO에서 가져와서 pro에 저장해야 get으로 쓸 수 있음.
%>
제품명 : <%= pro.getpName() %><br>
품질 : <%= pro.getpQuality() %><br>
제조사 : <%= pro.getpMaker() %><br>
제조사 : <%= pro.getPrice() %><br>
<!-- 가격 쓰면 에러뜬다.이유? 내가 p 대문자로 안씀-->
</body>
</html>